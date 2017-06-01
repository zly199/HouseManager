package cn.service.impl;

import cn.dao.HousemsgMapper;
import cn.dao.PermissionMapper;
import cn.dao.UserPermissionMapper;
import cn.dto.FollowUpHouseAvailable;
import cn.entity.HouseOwner;
import cn.service.HouseService;
import cn.service.PermisionService;
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
}
