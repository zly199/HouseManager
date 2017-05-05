package cn.dao;

import cn.entity.Connection;
import cn.entity.ConnectionKey;

public interface ConnectionMapper {
    /**
     *
     * @mbggenerated 2017-05-05
     */
    int deleteByPrimaryKey(ConnectionKey key);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int insert(Connection record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int insertSelective(Connection record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    Connection selectByPrimaryKey(ConnectionKey key);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int updateByPrimaryKeySelective(Connection record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int updateByPrimaryKey(Connection record);
}