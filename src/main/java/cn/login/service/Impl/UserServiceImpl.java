package cn.login.service.Impl;

import cn.login.dao.LoginLogDao;
import cn.login.dao.UserDao;
import cn.login.entity.LoginLog;
import cn.login.entity.User;
import cn.login.service.UserService;
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
    private UserDao userDao;
    @Autowired
    private LoginLogDao loginLogDao;


    @Override
    public boolean hasMatchUser(long userId, String password) {

        int count = userDao.getMatchCount(userId,password);
        return count>0;

    }

    @Override
    @Transactional
    public int loginSuccess(User user) {

        LoginLog loginLog = new LoginLog();
        loginLog.setUserId(user.getUserId());
        loginLog.setLoginDate(new Date());
        loginLog.setIp(user.getLastIp());
        userDao.updateUser(user);
        int number = loginLogDao.insertLoginLog(loginLog);
        return number;
    }

    @Override
    public User findUserById(long userId) {
        return userDao.findUserByUserId(userId);
    }
}
