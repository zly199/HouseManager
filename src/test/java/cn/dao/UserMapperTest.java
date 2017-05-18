package cn.dao;

import cn.entity.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * Created by ZLY on 2017-05-18.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-*.xml"})
public class UserMapperTest {

    @Autowired
    UserMapper userMapper;
    @Test
    public void selectAll() throws Exception {
        List<User> userList = userMapper.selectAll();
        for (User user:userList){
            System.out.println(user.toString());
        }
    }

    @Test
    public void selectByUserName() throws Exception {
        User user = userMapper.selectByUserName("周谦");
        System.out.println(user.toString());
    }

}