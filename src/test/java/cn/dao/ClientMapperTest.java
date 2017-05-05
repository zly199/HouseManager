package cn.dao;

import cn.entity.Client;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

/**
 * Created by ZLY on 2017-05-05.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-dao.xml"})
public class ClientMapperTest {

    @Autowired
    private ClientMapper clientMapper;

    @Test
    public void deleteByPrimaryKey() throws Exception {
    }

    @Test
    public void insert() throws Exception {
    }

    @Test
    public void insertSelective() throws Exception {
    }

    @Test
    public void selectByPrimaryKey() throws Exception {
        Client client = clientMapper.selectByPrimaryKey(0);
        System.out.println(client);

    }

    @Test
    public void updateByPrimaryKeySelective() throws Exception {
    }

    @Test
    public void updateByPrimaryKey() throws Exception {
    }

}