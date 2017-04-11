package cn.service.Impl;

import cn.entity.User;
import cn.service.UserService;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * Created by ZLY on 2017-03-30.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-dao.xml","classpath:spring/spring-service.xml"})

public class UserServiceImplTest {

    private UserService userService;
    @Autowired
    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @Test
    public void hasMatchUser() throws Exception {
        boolean isMatch = userService.hasMatchUser(100000L,"123456");
        System.out.println(isMatch);
    }

    @Test
    public void loginSuccess() throws Exception {
        User user = new User();
        user.setUserId(100001L);
        int nunmber = userService.loginSuccess(user);
        System.out.println(nunmber);

    }

}