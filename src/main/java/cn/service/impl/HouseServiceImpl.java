package cn.service.impl;

import cn.dao.*;
import cn.dto.HouseList;
import cn.entity.FollowupHouse;
import cn.entity.Housemsg;
import cn.entity.UserDuties;
import cn.service.HouseService;
import cn.utils.DataTransferUtil;
import org.apache.shiro.SecurityUtils;
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
/*//查找两个合集

        //TODO 地域跨区的的部门权限的查询(可以使用aop)

//两个集合取交集(由于存储空间 不同所以不能用retainAll去重)
        //housemsgSetByAttribute.retainAll(DepartmenthouseSet);
        Set<Housemsg> result = DataTransferUtil.setRetainAll(housemsgSetByAttribute,DepartmenthouseSet);
        //格式转换

        return HousemsgToHouseListWithNameTransfer(DataTransferUtil.setToList(result));*/

        //根据房源查看权限得到查询参数
        Map<String,String> sqlParam = permissionToParam();
        //根据参数查询房源
        Set<Housemsg> housemegSet = findBySqlParam(sqlParam);
        //去重复
        housemegSet = DataTransferUtil.setRetainAll(housemegSet,housemegSet);
        //列表字段权限处理
        housemegSet =  dealHouseListPermission(housemegSet);

        return HousemsgToHouseListWithNameTransfer(DataTransferUtil.setToList(housemegSet));
    }
    /**
     * 列表字段权限处理
     * @param housemegSet
     * @return
     */
    private Set<Housemsg> dealHouseListPermission(Set<Housemsg> housemegSet) {
        Subject currentUser = SecurityUtils.getSubject();

        Set<Housemsg> result = new HashSet<>();
        //房源列表字段查看权限数组（不用多次验证权限）4*3 公，私，特，封*楼栋位置，房号，总楼层!!!!!!!
        boolean[][] houseListPermission = new boolean[4][3];
        houseListPermission[0][0]=currentUser.isPermitted("house:public:list:address");
        houseListPermission[0][1]=currentUser.isPermitted("house:public:list:houseNumber");
        houseListPermission[0][2]=currentUser.isPermitted("house:public:list:floor");

        houseListPermission[1][0]=currentUser.isPermitted("house:private:list:address");
        houseListPermission[1][1]=currentUser.isPermitted("house:private:list:houseNumber");
        houseListPermission[1][2]=currentUser.isPermitted("house:private:list:floor");

        houseListPermission[2][0]=currentUser.isPermitted("house:super:list:address");
        houseListPermission[2][1]=currentUser.isPermitted("house:super:list:houseNumber");
        houseListPermission[2][2]=currentUser.isPermitted("house:super:list:floor");

        houseListPermission[3][0]=currentUser.isPermitted("house:dead:list:address");
        houseListPermission[3][1]=currentUser.isPermitted("house:dead:list:houseNumber");
        houseListPermission[3][2]=currentUser.isPermitted("house:dead:list:floor");

        for (Housemsg housemsg:housemegSet){
            String[] houseAddress = housemsg.getAddress().split("/");
            if (housemsg.getAttribute().equals("公盘")){
                if (houseListPermission[0][0]==false) houseAddress[3]="***";//栋座位置
                if (houseListPermission[0][1]==false) houseAddress[5]="***";//房号
                if (houseListPermission[0][2]==false) houseAddress[7]="***";//楼层
            }
            else if (housemsg.getAttribute().equals("私盘")){
                if (houseListPermission[1][0]==false) houseAddress[3]="***";
                if (houseListPermission[1][1]==false) houseAddress[5]="***";
                if (houseListPermission[1][2]==false) houseAddress[7]="***";
            }
            else if (housemsg.getAttribute().equals("特盘")){
                if (houseListPermission[2][0]==false) houseAddress[3]="***";
                if (houseListPermission[2][1]==false) houseAddress[5]="***";
                if (houseListPermission[2][2]==false) houseAddress[7]="***";
            }
            else if (housemsg.getAttribute().equals("封盘")){
                if (houseListPermission[3][0]==false) houseAddress[3]="***";
                if (houseListPermission[3][1]==false) houseAddress[5]="***";
                if (houseListPermission[3][2]==false) houseAddress[7]="***";
            }
            StringBuilder houseAddressSB = new StringBuilder();
            for (int i = 0;i<houseAddress.length;i++){
                if (i!=houseAddress.length-1) houseAddressSB.append(houseAddress[i]+"/");
                else houseAddressSB.append(houseAddress[i]);
            }
            housemsg.setAddress(houseAddressSB.toString());
            result.add(housemsg);
        }
        return result;
    }


    /**
     * 根据参数查询房源
     * @param sqlParam
     * @return
     */
    private Set<Housemsg> findBySqlParam(Map<String, String> sqlParam) {
        Set<Housemsg> result = new HashSet<>();
        //用于封装mybatis需要的参数Map
        Map param = new HashMap();

        if (sqlParam.containsKey("公盘")){
            param.put("attribute","公盘");
            param.put("departmentPre",sqlParam.get("公盘")+"%");
            result.addAll(housemsgDao.selectByAttributeAndDepartment(param));
        }
        param.clear();
        if (sqlParam.containsKey("私盘")){
            param.put("attribute","私盘");
            param.put("departmentPre",sqlParam.get("私盘")+"%");
            result.addAll(housemsgDao.selectByAttributeAndDepartment(param));
        }
        param.clear();
        if (sqlParam.containsKey("特盘")){
            param.put("attribute","特盘");
            param.put("departmentPre",sqlParam.get("特盘")+"%");
            result.addAll(housemsgDao.selectByAttributeAndDepartment(param));
        }
        param.clear();
        if (sqlParam.containsKey("封盘")){
            param.put("attribute","封盘");
            param.put("departmentPre",sqlParam.get("封盘")+"%");
            result.addAll(housemsgDao.selectByAttributeAndDepartment(param));
        }
        return result;
    }

    /**
     * 根据房源查看权限返回房源查询sql片段 String-List<String> 如：'公盘'-"'本部房源前缀','本人','跨部'"
     * @return
     */
    private Map<String, String> permissionToParam() {
        Subject currentUser = SecurityUtils.getSubject();
        Map<String,String> sqlParam = new HashMap<>(); //如：'公盘'-"'本部房源前缀','本人','跨部'"

        //获取部门的房源前缀
        UserDuties user = userDutiesDao.selectByName(currentUser.getPrincipal().toString());
        String departmentPre = organizationStructureDao.selectByPrimaryKey(user.getOrganizationId()).getNumberPre();
        //获取个人房源前缀
        String userPre = user.getUserHousePre();
        //部门加个人前缀
        String housePre = departmentPre+userPre;


        /*公盘*/
//        公盘跨部
        if (currentUser.isPermitted("house:public:listOrDetailView:crossDepartment")) sqlParam.put("公盘","");
//        公盘本部
        else if (currentUser.isPermitted("house:public:listOrDetailView:ourDepartment")) sqlParam.put("公盘",departmentPre);
//        公盘本人
        else if (currentUser.isPermitted("house:public:listOrDetailView:ourselves")) sqlParam.put("公盘",housePre);

        /*私盘*/
//        私盘跨部
        if (currentUser.isPermitted("house:private:listOrDetailView:crossDepartment"))sqlParam.put("私盘","");
//        私盘本部
        else if (currentUser.isPermitted("house:private:listOrDetailView:ourDepartment"))sqlParam.put("私盘",departmentPre);
//        私盘本人
        else if (currentUser.isPermitted("house:private:listOrDetailView:ourselves"))sqlParam.put("私盘",housePre);

        /*特盘*/
//        特盘跨部
        if (currentUser.isPermitted("house:super:listOrDetailView:crossDepartment"))sqlParam.put("特盘","");
//        特盘本部
        else if (currentUser.isPermitted("house:super:listOrDetailView:ourDepartment"))sqlParam.put("特盘",departmentPre);
//        特盘本人
        else if (currentUser.isPermitted("house:super:listOrDetailView:ourselves"))sqlParam.put("特盘",housePre);

        /*封盘*/
//        封盘跨部
        if (currentUser.isPermitted("house:dead:listOrDetailView:crossDepartment"))sqlParam.put("封盘","");
//        封盘本部
        else if (currentUser.isPermitted("house:dead:listOrDetailView:ourDepartment"))sqlParam.put("封盘",departmentPre);
//       封盘本人
        else if (currentUser.isPermitted("house:dead:listOrDetailView:ourselves"))sqlParam.put("封盘",housePre);

        return sqlParam;
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


}
