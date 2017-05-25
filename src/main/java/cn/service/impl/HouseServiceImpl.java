package cn.service.impl;

import cn.dao.*;
import cn.dto.HouseList;
import cn.entity.FollowupHouse;
import cn.entity.Housemsg;
import cn.entity.OrganizationStructure;
import cn.entity.UserDuties;
import cn.service.HouseService;
import cn.utils.DataTransferUtil;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.Permission;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Created by ZLY on 2017-05-19.
 */
@Service
public class HouseServiceImpl implements HouseService {
//房源信息dao
    @Autowired
    HousemsgMapper housemsgDao;
//    组织机构dao
    @Autowired
    OrganizationStructureMapper organizationStructureDao;
//    登录用户dao
    @Autowired
    UserMapper userDao;
//    房源跟进dao
    @Autowired
    FollowupHouseMapper followupHouseDao;
//    用户职务
    @Autowired
    UserDutiesMapper userDutiesDao;
    //楼盘字典dao
    @Autowired
    HousesDictionaryMapper housesDictionaryDao;

    /**
     * 根据当前登录用户权限查询房源信息
     *
     * @return
     */
    @Override
    public List<HouseList> findHouseByPermission() {
//查找两个合集
        //公盘，私盘，特盘，封盘
        //根据权限生成属性sql片段
        Set<String> attributeSet= permissionToAttribute();
        Set<Housemsg> housemsgSetByAttribute= new HashSet<>();
        List<Housemsg> list1 = housemsgDao.selectByAttribute(DataTransferUtil.setToList(attributeSet));
        housemsgSetByAttribute.addAll(list1);

        //跨部，本部，本人，无的处理
        List<Housemsg> list2 = permissionToDepartmenthouse();
        Set<Housemsg> DepartmenthouseSet = new HashSet<>();
        DepartmenthouseSet.addAll(list2);
        //TODO 地域跨区的的部门权限的查询(可以使用aop)

//两个集合取交集(由于存储空间 不同所以不能用retainAll去重)
        //housemsgSetByAttribute.retainAll(DepartmenthouseSet);
        Set<Housemsg> result = DataTransferUtil.setRetainAll(housemsgSetByAttribute,DepartmenthouseSet);
        //格式转换

        return HousemsgToHouseListWithNameTransfer(DataTransferUtil.setToList(result));
    }



    /**
     * @return
     */
    @Override
    public int add() {
        return 0;
    }

    /**
     * 查找全部房源到房源列表
     * @return
     */
    @Override
    public List<HouseList> findAll() {

        List<Housemsg> housemsgList = housemsgDao.selectAll();
        //数据源到列表数据的转换
        return HousemsgToHouseListWithNameTransfer(housemsgList);
    }

    private List<HouseList> HousemsgToHouseListWithNameTransfer( List<Housemsg> housemsgList){

        //        从数据源到列表格式转换
        List<HouseList> houseListList = new ArrayList<>();
        SimpleDateFormat  dateFormat2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date lastFollowDate=new Date();
        for (Housemsg housemsg:housemsgList){
            HouseList houseList=DataTransferUtil.HouseMsgToHouseList(housemsg);
//一些id到名称的转换
            //组织id-》组织名
            houseList.setOrganization(
                    organizationStructureDao.selectByPrimaryKey(
                            houseList.getOrganization()
                    ).getOrganizationName());
            //员工ID-》员工名
            houseList.setUserName(
                    userDao.selectByPrimaryKey(Long.parseLong(houseList.getUserName())).getUserName()
            );
//  确定最后跟进日
            List<FollowupHouse> followupHouses=followupHouseDao.selectByHouseId(houseList.getId());
            try {
                lastFollowDate = dateFormat2.parse("1980-01-01 00:00:00");
            } catch (ParseException e) {
                e.printStackTrace();
            }

            for (FollowupHouse followupHouse:followupHouses){
                lastFollowDate=
                        (lastFollowDate.before(followupHouse.getTime()))?
                                followupHouse.getTime():lastFollowDate;
            }
            houseList.setLastFollowDate(lastFollowDate);

            houseListList.add(houseList);
        }

        return houseListList;
    }

    /**
     * 根据用户权限生成SQL语句片段
     * @return
     */
    private Set<String> permissionToAttribute(){
        Set<String> attributeSet = new HashSet<>();
        Subject subject = SecurityUtils.getSubject();

        if (subject.isPermitted("house:view:public")) {
            attributeSet.add("公盘");
        }
        if (subject.isPermitted("house:view:private")) attributeSet.add("私盘");//所有私盘
        if (subject.isPermitted("house:view:super")) attributeSet.add("特盘");
        if (subject.isPermitted("house:view:died")) attributeSet.add("封盘");
        return attributeSet;
    }

    /**
     * 根据跨部，本部，本人，无的房源返回房源信息
     * @return
     */
    private List<Housemsg> permissionToDepartmenthouse() {
        List<Housemsg> houseMsgByOrganizationPermission = new ArrayList<>();
        Subject subject = SecurityUtils.getSubject();

        if (subject.isPermitted("house:view:crossDepartment")){
            /*查询跨部的房源*///todo:行政跨部，地域跨区的组织权限房源查询（用aop？）
             houseMsgByOrganizationPermission=housemsgDao.selectAll();


        }else if(subject.isPermitted("house:view:ourDepartment")){
            /*查询本部的房源，根据房源的前缀查询*/
//            查询用户的部门
            UserDuties userDuties = userDutiesDao.selectByName(subject.getPrincipal().toString());
            OrganizationStructure organizationStructure =
                    organizationStructureDao.selectByPrimaryKey(userDuties.getOrganizationId());
//            根据部门前缀查询房源
             houseMsgByOrganizationPermission=housemsgDao.selectByOrganizationPre(organizationStructure.getNumberPre()+"%");

        }else  if (subject.isPermitted("house:view:ourselves")){
            /*查询本人的房源(本人私盘)*/
            //查询用户的部门
            UserDuties userDuties = userDutiesDao.selectByName(subject.getPrincipal().toString());
            OrganizationStructure organizationStructure =
                    organizationStructureDao.selectByPrimaryKey(userDuties.getOrganizationId());
            //部门前缀+个人前缀搜索房源

            houseMsgByOrganizationPermission=
                    housemsgDao.selectByOrganizationPre(
                    organizationStructure.getNumberPre()+userDuties.getUserHousePre()+"%")
            ;
        }

        return houseMsgByOrganizationPermission;
    }
}
