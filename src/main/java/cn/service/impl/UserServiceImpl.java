package cn.service.impl;

import cn.dao.UserMapper;
import cn.entity.User;
import cn.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Set;

/**
 * Created by ZLY on 2017-05-19.
 */
@Service
public class UserServiceImpl implements UserService{

    @Autowired
    UserMapper userMapper;
    /**
     * 通过用户名查询用户
     *
     * @param userName
     * @return
     */
    @Override
    public User getByUserName(String userName) {
        return userMapper.selectByUserName(userName);
    }

    /**
     * 通过用户名查询角色信息
     *
     * @param userName
     * @return
     */
    @Override
    public Set<String> getRoles(String userName) {
        return userMapper.selectRoleByUserName(userName);
    }

    /**
     * 通过用户名查询权限信息
     *
     * @param userName
     * @return
     */
    @Override
    public Set<String> getPermissions(String userName) {
        return userMapper.selectPermissionsByUserName(userName);
    }
}
