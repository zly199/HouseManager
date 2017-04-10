package cn.login.dao;

import cn.login.entity.LoginLog;
import cn.login.entity.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;
import java.util.List;

import static org.junit.Assert.*;

/**
 * Created by ZLY on 2017-03-24.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/spring-dao.xml")

public class LoginLogDaoTest {


    @Autowired
    private LoginLogDao loginLogDao;
    @Test
    public void insertLoginLog() throws Exception {
        LoginLog loginLog = new LoginLog();
        loginLog.setIp("192.168.1.3");
        loginLog.setLoginDate(new Date());
        loginLog.setUserId(100000L);
        int count = loginLogDao.insertLoginLog(loginLog);

    }

    @Test
    public void findLoginLogByUserID() throws Exception {

        List<LoginLog> loginLogs= loginLogDao.findLoginLogByUserID(100000L);
       for(LoginLog loginlog:loginLogs){
            System.out.println(loginlog);
        }


    }

}