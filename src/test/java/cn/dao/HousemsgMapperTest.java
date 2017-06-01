package cn.dao;

import cn.entity.Housemsg;
import cn.utils.DataTransferUtil;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.*;

/**
 * Created by ZLY on 2017-05-19.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-*.xml"})
public class HousemsgMapperTest {

    @Autowired
    HousemsgMapper housemsgMapper;

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
    }

    @Test
    public void updateByPrimaryKeySelective() throws Exception {
    }

    @Test
    public void updateByPrimaryKey() throws Exception {
    }

    @Test
    public void selectAll() throws Exception {
        List<String> list = new ArrayList<>();
        list.add("公盘");/*list.add("私盘");*/list.add("特盘");list.add("封盘");

        Set<Housemsg> housemsgset1 = new HashSet<>();
        Set<Housemsg> housemsgset2 = new HashSet<>();

        List<Housemsg>housemsgList1= housemsgMapper.selectByAttribute(list);
        List<Housemsg>housemsgList2= housemsgMapper.selectAll();

        housemsgset1.addAll(housemsgList1);
        housemsgset2.addAll(housemsgList2);

        //housemsgset1.retainAll(housemsgset2);
        Set<Housemsg> result = DataTransferUtil.setRetainAll(housemsgset1,housemsgset2);

        System.out.println();
    }

}