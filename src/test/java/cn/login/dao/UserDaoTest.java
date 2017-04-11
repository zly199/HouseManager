package cn.login.dao;

import cn.dao.UserDao;
import cn.entity.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * Created by ZLY on 2017-03-24.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/spring-dao.xml")
public class UserDaoTest {
    @Autowired
    private UserDao userDao;
    @Test
    public void getMatchCount() throws Exception {

        int count=3;
        count = userDao.getMatchCount(100000L,"123456");
        System.out.println(count+"  text");
    }

    @Test
    public void findUserByUserId() throws Exception {

        User user =userDao.findUserByUserId(100000L);
        System.out.println(user);
    }

}