package cn.service.impl;

import cn.dao.UserMapper;
import cn.entity.User;
import cn.service.UserServie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Set;

/**
 * Created by ZLY on 2017-05-18.
 */
@Service
public class UserServieImpl implements UserServie {
    @Autowired
    UserMapper userMapper;
    @Override
    public User getByUserName(String userName) {
        return userMapper.selectByUserName(userName);
    }

    @Override
    public Set<String> getRoles(String userName) {
        return null;
    }

    @Override
    public Set<String> getPermissions(String userName) {
        return null;
    }
}
