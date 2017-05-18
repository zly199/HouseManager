package cn.service.impl;

import cn.entity.User;
import cn.service.UserServie;
import org.springframework.stereotype.Service;

import java.util.Set;

/**
 * Created by ZLY on 2017-05-18.
 */
@Service
public class UserServieImpl implements UserServie {
    @Override
    public User getByUserName(String userName) {
        return null;
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
