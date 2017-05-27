package cn.service.impl;

import cn.dao.PermissionMapper;
import cn.dao.UserPermissionMapper;
import cn.service.PermisionService;
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
}
