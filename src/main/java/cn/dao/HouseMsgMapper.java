package cn.dao;

import cn.entity.Housemsg;

import java.util.List;

public interface HousemsgMapper {
    /**
     *
     * @mbggenerated 2017-05-19
     */
    int deleteByPrimaryKey(String id);

    /**
     *
     * @mbggenerated 2017-05-19
     */
    int insert(Housemsg record);

    /**
     *
     * @mbggenerated 2017-05-19
     */
    int insertSelective(Housemsg record);

    /**
     *
     * @mbggenerated 2017-05-19
     */
    Housemsg selectByPrimaryKey(String id);

    /**
     *
     * @mbggenerated 2017-05-19
     */
    int updateByPrimaryKeySelective(Housemsg record);

    /**
     *
     * @mbggenerated 2017-05-19
     */
    int updateByPrimaryKey(Housemsg record);

    List<Housemsg> selectAll();
}