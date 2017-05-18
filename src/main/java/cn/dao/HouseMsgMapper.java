package cn.dao;

import cn.entity.Housemsg;

public interface HousemsgMapper {
    /**
     *
     * @mbggenerated 2017-05-18
     */
    int deleteByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int insert(Housemsg record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int insertSelective(Housemsg record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    Housemsg selectByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int updateByPrimaryKeySelective(Housemsg record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int updateByPrimaryKey(Housemsg record);
}