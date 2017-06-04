package cn.service.impl;

import cn.dao.*;
import cn.dto.FollowUpHouseAvailable;
import cn.dto.HouseAddActionList;
import cn.dto.HouseMessageAvailable;
import cn.entity.HouseOwner;
import cn.entity.OrganizationStructure;
import cn.service.HouseService;
import cn.service.OrganizationStructService;
import cn.service.PermisionService;
import cn.service.UserService;
import com.sun.org.apache.xpath.internal.operations.Bool;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

@Service
public class PermisionServiceImpl implements PermisionService {
    @Autowired
    PermissionMapper permissionDao;
    @Autowired
    UserPermissionMapper userPermissionDao;
    @Autowired
    HousemsgMapper housemsgDao;
    @Autowired
    UserDutiesMapper userDutiesDao;
    @Autowired
    OrganizationStructureMapper organizationStructureDao;
    @Autowired
    UserService userService;
    @Autowired
    OrganizationStructService organizationStructService;
    /**
     * 通过userId修改权限
     *
     * @param userId
     * @param permissionList
     * @return 修改的行数(这里的修改函数只是该用户的总权限条数,并不是修改的条数)
     */
    @Override
    @Transactional
    public int ediPermissionsById(Long userId, String[] permissionList) {
        //先删除该用户全部的权限
        userPermissionDao.deleteByUserId(userId);
        //permissionList转list
        List<String> pList =new ArrayList<>();
        for (String permission:permissionList){
            if (!permission.equals("")) pList.add(permission);
        }
        //通过权限字符串查找权限id
        Set<Integer> permissionIds =permissionDao.selectByPermissionChar(pList);
//封装Mybaitis的参数列表，要使用多参数的foreach，必须封装成map
        Map mybatisParam = new HashMap();
        mybatisParam.put("userId",userId);
        mybatisParam.put("permissionIds",permissionIds);
//        插入用户的新权限

        return userPermissionDao.insertByUserId(mybatisParam);
    }
    /**
     * 跟进权限查看
     * @param followUpHouseAvailables
     * @return
     */
    @Override
    public List<FollowUpHouseAvailable> folloUpViewPermission(List<FollowUpHouseAvailable> followUpHouseAvailables,String houseId) {
        Boolean[] followUpPermissions =new Boolean[4];//0公盘跟进权限 1私盘跟进权限 2特盘跟进 3封盘跟进
        Subject currentUser = SecurityUtils.getSubject();
        followUpPermissions[0] = currentUser.isPermitted("house:public:followup");
        followUpPermissions[1] = currentUser.isPermitted("house:private:followup");
        followUpPermissions[2] = currentUser.isPermitted("house:super:followup");
        followUpPermissions[3] = currentUser.isPermitted("house:dead:followup");

        String attribute = housemsgDao.selectByPrimaryKey(houseId).getAttribute();
        if (attribute.equals("公盘")&&followUpPermissions[0]) return followUpHouseAvailables;
        if (attribute.equals("私盘")&&followUpPermissions[1]) return followUpHouseAvailables;
        if (attribute.equals("特盘")&&followUpPermissions[2]) return followUpHouseAvailables;
        if (attribute.equals("封盘")&&followUpPermissions[3]) return followUpHouseAvailables;
        if (followUpHouseAvailables.size()!=0)
        {
            followUpHouseAvailables.clear();
            FollowUpHouseAvailable followUpHouseAvailable =new FollowUpHouseAvailable();
            followUpHouseAvailable.setContent("您没有相关权限查看，需要请联系管理员");
            followUpHouseAvailables.add(followUpHouseAvailable);
        }else
            followUpHouseAvailables.clear();

        return followUpHouseAvailables;
    }

    /**
     * 业主权限查看判断
     * @param houseOwner,houseId
     * @return
     */
    @Override
    public HouseOwner houseOwnerViewPermission(HouseOwner houseOwner, String houseId) {
        Boolean[] followUpPermissions =new Boolean[4];//0公盘跟进权限 1私盘跟进权限 2特盘跟进 3封盘跟进
        Subject currentUser = SecurityUtils.getSubject();
        followUpPermissions[0] = currentUser.isPermitted("house:public:client");
        followUpPermissions[1] = currentUser.isPermitted("house:private:client");
        followUpPermissions[2] = currentUser.isPermitted("house:super:client");
        followUpPermissions[3] = currentUser.isPermitted("house:dead:client");

        String attribute = housemsgDao.selectByPrimaryKey(houseId).getAttribute();
        if (attribute.equals("公盘")&&followUpPermissions[0]) return houseOwner;
        if (attribute.equals("私盘")&&followUpPermissions[1]) return houseOwner;
        if (attribute.equals("特盘")&&followUpPermissions[2]) return houseOwner;
        if (attribute.equals("封盘")&&followUpPermissions[3]) return houseOwner;

        houseOwner.setName("***");
        houseOwner.setFirstPhone(00000L);
        houseOwner.setSecondPhone(00000L);
        houseOwner.setComment("*********");
        houseOwner.setIdCard("**********");
        return houseOwner;
    }

    @Override
    public HouseMessageAvailable houseDetailViewPermission(HouseMessageAvailable houseMessageAvailable, String houseId) {
        Boolean[][] followUpPermissions =new Boolean[4][4];//0公盘跟进权限 1私盘跟进权限 2特盘跟进 3封盘跟进*0楼栋位置，1房号，2总楼层,3底价
        Subject currentUser = SecurityUtils.getSubject();

        //楼栋位置
        followUpPermissions[0][0] = currentUser.isPermitted("house:public:detail:address");
        followUpPermissions[1][0] = currentUser.isPermitted("house:private:detail:address");
        followUpPermissions[2][0] = currentUser.isPermitted("house:super:detail:address");
        followUpPermissions[3][0] = currentUser.isPermitted("house:dead:detail:address");
//房号
        followUpPermissions[0][1] = currentUser.isPermitted("house:public:detail:houseNumber");
        followUpPermissions[1][1] = currentUser.isPermitted("house:private:detail:houseNumber");
        followUpPermissions[2][1] = currentUser.isPermitted("house:super:detail:houseNumber");
        followUpPermissions[3][1] = currentUser.isPermitted("house:dead:detail:houseNumber");
//楼层
        followUpPermissions[0][2] = currentUser.isPermitted("house:public:detail:floor");
        followUpPermissions[1][2] = currentUser.isPermitted("house:private:detail:floor");
        followUpPermissions[2][2] = currentUser.isPermitted("house:super:detail:floor");
        followUpPermissions[3][2] = currentUser.isPermitted("house:dead:detail:floor");
//底价
        followUpPermissions[0][3] = currentUser.isPermitted("house:public:detail:lowPrice");
        followUpPermissions[1][3] = currentUser.isPermitted("house:private:detail:lowPrice");
        followUpPermissions[2][3] = currentUser.isPermitted("house:super:detail:lowPrice");
        followUpPermissions[3][3] = currentUser.isPermitted("house:dead:detail:lowPrice");

        String attribute = housemsgDao.selectByPrimaryKey(houseId).getAttribute();
        //楼栋位置
        if (attribute.equals("公盘")&&!followUpPermissions[0][0]) {
            String[] address = houseMessageAvailable.getAddress();
            address[3] = "*****";
            houseMessageAvailable.setAddress(address);
        }
        if (!attribute.equals("私盘")&&!followUpPermissions[1][0]) {
            String[] address = houseMessageAvailable.getAddress();
            address[3] = "*****";
            houseMessageAvailable.setAddress(address);
        }
        if (!attribute.equals("特盘")&&!followUpPermissions[2][0]) {
            String[] address = houseMessageAvailable.getAddress();
            address[3] = "*****";
            houseMessageAvailable.setAddress(address);
        }
        if (!attribute.equals("封盘")&&!followUpPermissions[3][0]) {
            String[] address = houseMessageAvailable.getAddress();
            address[3] = "*****";
            houseMessageAvailable.setAddress(address);
        }
//房号
        if (attribute.equals("公盘")&&!followUpPermissions[0][1]) {
            String[] address = houseMessageAvailable.getAddress();
            address[5] = "*****";
            houseMessageAvailable.setAddress(address);
        }
        if (attribute.equals("私盘")&&!followUpPermissions[1][1]) {
            String[] address = houseMessageAvailable.getAddress();
            address[5] = "*****";
            houseMessageAvailable.setAddress(address);
        }
        if (attribute.equals("特盘")&&!followUpPermissions[2][1]) {
            String[] address = houseMessageAvailable.getAddress();
            address[5] = "*****";
            houseMessageAvailable.setAddress(address);
        }
        if (attribute.equals("封盘")&&!followUpPermissions[3][1]) {
            String[] address = houseMessageAvailable.getAddress();
            address[5] = "*****";
            houseMessageAvailable.setAddress(address);
        }
//楼层
        if (attribute.equals("公盘")&&!followUpPermissions[0][2]) {
            String[] address = houseMessageAvailable.getAddress();
            address[6] = "*****";
            address[7] = "*****";
            houseMessageAvailable.setAddress(address);
        }
        if (attribute.equals("私盘")&&!followUpPermissions[1][2]) {
            String[] address = houseMessageAvailable.getAddress();
            address[6] = "*****";
            address[7] = "*****";
            houseMessageAvailable.setAddress(address);
        }
        if (attribute.equals("特盘")&&!followUpPermissions[2][2]) {
            String[] address = houseMessageAvailable.getAddress();
            address[6] = "*****";
            address[7] = "*****";
            houseMessageAvailable.setAddress(address);
        }
        if (attribute.equals("封盘")&&!followUpPermissions[3][2]) {
            String[] address = houseMessageAvailable.getAddress();
            address[6] = "*****";
            address[7] = "*****";
            houseMessageAvailable.setAddress(address);
        }
//底价
        if (attribute.equals("公盘")&&!followUpPermissions[0][3]) {
            houseMessageAvailable.setSellLowprice(0.00);
            houseMessageAvailable.setRentLowprice(0.00);
        }
        if (attribute.equals("私盘")&&!followUpPermissions[1][3]) {
            houseMessageAvailable.setSellLowprice(0.00);
            houseMessageAvailable.setRentLowprice(0.00);
        }
        if (attribute.equals("特盘")&&!followUpPermissions[2][3]) {
            houseMessageAvailable.setSellLowprice(0.00);
            houseMessageAvailable.setRentLowprice(0.00);
        }
        if (attribute.equals("封盘")&&!followUpPermissions[3][3]){
            houseMessageAvailable.setSellLowprice(0.00);
            houseMessageAvailable.setRentLowprice(0.00);
        }

        //用途
        if (!currentUser.isPermitted("house:detail:userage:residence")&&houseMessageAvailable.getApplication().equals("住宅"))
            houseMessageAvailable.setApplication("****");
        else if (!currentUser.isPermitted("house:detail:userage:shops")&&houseMessageAvailable.getApplication().equals("商铺"))
            houseMessageAvailable.setApplication("****");
        else if (!currentUser.isPermitted("house:detail:userage:commercial")&&houseMessageAvailable.getApplication().equals("商住"))
            houseMessageAvailable.setApplication("****");
        else if (!currentUser.isPermitted("house:detail:userage:officeBuilding")&&houseMessageAvailable.getApplication().equals("写字楼"))
            houseMessageAvailable.setApplication("****");
        else if (!currentUser.isPermitted("house:detail:userage:factoryShop")&&houseMessageAvailable.getApplication().equals("铺厂"))
            houseMessageAvailable.setApplication("****");
        else if (!currentUser.isPermitted("house:detail:userage:writeFactory")&&houseMessageAvailable.getApplication().equals("写厂"))
            houseMessageAvailable.setApplication("****");
        else if (!currentUser.isPermitted("house:detail:userage:parkinLot")&&houseMessageAvailable.getApplication().equals("车位"))
            houseMessageAvailable.setApplication("****");
        else if (!currentUser.isPermitted("house:detail:userage:land")&&houseMessageAvailable.getApplication().equals("地皮"))
            houseMessageAvailable.setApplication("****");
        else if (!currentUser.isPermitted("house:detail:userage:warehouse")&&houseMessageAvailable.getApplication().equals("厂房"))
            houseMessageAvailable.setApplication("****");


        return houseMessageAvailable;
    }
    //根据权限返回新增房源的公盘私盘列表，以及部门人员信息下拉列表
    @Override
    public HouseAddActionList houseAddPermission() {
        HouseAddActionList houseAddActionList = new HouseAddActionList();
        Subject currentUser = SecurityUtils.getSubject();

        //    公盘和私盘和特盘列表
        List<String> atrributes = new ArrayList<>();
        //    部门列表
        List<String> departments= new ArrayList<>();
        //    人员列表
        List<String> users= new ArrayList<>();

        //本人 返回私盘；本部门；本人列表
        if (currentUser.isPermitted("house:add:ourselves"))
        {
            atrributes.add("私盘");
            departments.add(
                    organizationStructureDao.selectByPrimaryKey(
                            userDutiesDao.selectByName(currentUser.getPrincipal().toString()
                            ).getOrganizationId()
                    ).getOrganizationName()
            );
            users.add(currentUser.getPrincipal().toString());
        }
        //本部 返回公盘，私盘，特盘，封盘；本部门；本部门全部的人员
        else if (currentUser.isPermitted("house:add:ourDepartment"))
        {
            atrributes.add("公盘");atrributes.add("私盘");atrributes.add("特盘");atrributes.add("封盘");
            departments.add(
                    organizationStructureDao.selectByPrimaryKey(
                            userDutiesDao.selectByName(currentUser.getPrincipal().toString()
                            ).getOrganizationId()
                    ).getOrganizationName()
            );
            //根据组织id查找组织里所有的人员名字
            users.addAll(organizationStructService.findNameByOrganizationId(userDutiesDao.selectByName(currentUser.getPrincipal().toString()).getOrganizationId()));

        }
        //跨部 返回公盘，私盘，特盘，封盘；全部部门；全部的人员
        else if (currentUser.isPermitted("house:add:crossDepartment"))
        {
            atrributes.add("公盘");atrributes.add("私盘");atrributes.add("特盘");atrributes.add("封盘");
 //         返回所有的组织机构名
            departments.addAll(organizationStructService.findNameAll());
//            返回所有的人员名称
            users.addAll(userService.findNameAll());

        }
        houseAddActionList.setAtrributes(atrributes);
        houseAddActionList.setDepartments(departments);
        houseAddActionList.setUsers(users);
        return houseAddActionList;
    }
}
