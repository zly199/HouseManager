package cn.service.impl;

import cn.dao.HousemsgMapper;
import cn.dao.PermissionMapper;
import cn.dao.UserPermissionMapper;
import cn.dto.FollowUpHouseAvailable;
import cn.dto.HouseMessageAvailable;
import cn.entity.HouseOwner;
import cn.service.HouseService;
import cn.service.PermisionService;
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

        return houseMessageAvailable;
    }
}
