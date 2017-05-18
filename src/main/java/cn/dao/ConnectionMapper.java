package cn.dao;

import cn.entity.Connection;
import cn.entity.ConnectionKey;

public interface ConnectionMapper {
    /**
     *
     * @mbggenerated 2017-05-18
     */
    int deleteByPrimaryKey(ConnectionKey key);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int insert(Connection record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int insertSelective(Connection record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    Connection selectByPrimaryKey(ConnectionKey key);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int updateByPrimaryKeySelective(Connection record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int updateByPrimaryKey(Connection record);
}