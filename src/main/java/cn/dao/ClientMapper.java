package cn.dao;

import cn.entity.Client;

public interface ClientMapper {
    /**
     *
     * @mbggenerated 2017-05-18
     */
    int deleteByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int insert(Client record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int insertSelective(Client record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    Client selectByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int updateByPrimaryKeySelective(Client record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int updateByPrimaryKey(Client record);
}