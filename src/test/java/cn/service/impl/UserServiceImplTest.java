package cn.service.impl;

import cn.dao.UserMapper;
import cn.service.UserService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Set;

/**
 * Created by ZLY on 2017-05-18.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-*.xml"})
public class UserServiceImplTest {
    @Autowired
    UserMapper userMapper;
    @Autowired
    UserService userService;
    @Test
    public void getRoles() throws Exception {
    }

    @Test
    public void getPermissions() throws Exception {
        Set<String> stringSet1= userMapper.selectPermissionsByUserName("曾令勇");
        Set<String> stringSet2= userService.getPermissions("曾令勇");
        System.out.println();
    }

}