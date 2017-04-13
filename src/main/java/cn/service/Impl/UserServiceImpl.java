package cn.service.Impl;

import cn.dao.LoginLogMapper;
import cn.dao.UserMapper;
import cn.entity.LoginLog;
import cn.entity.User;
import cn.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;

/**
 * Created by ZLY on 2017-03-30.
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;
    @Autowired
    private LoginLogMapper loginLogMapper;


    @Override
    public boolean hasMatchUser(int userId, String password) {

        User user = userMapper.selectByPrimaryKey(userId);
        if (user!=null){
            if (user.getUserPsd().equals(password)&&user.getUserId().equals(userId)){
                return true;
            }
            else {
                return false;
            }
        }
        return false;

    }

    @Override
    @Transactional
    public int loginSuccess(User user) {

        LoginLog loginLog = new LoginLog();
        loginLog.setUserId(user.getUserId());
        loginLog.setLoginTime(new Date());
        loginLog.setIp(user.getUserLastIp());
        userMapper.updateByPrimaryKeySelective(user);
        int number = loginLogMapper.insertSelective(loginLog);
        return number;
    }

    @Override
    public User findUserById(int userId) {
        return userMapper.selectByPrimaryKey(userId);
    }
}
