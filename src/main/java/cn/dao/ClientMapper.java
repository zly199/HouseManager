package cn.dao;

import cn.entity.Client;

public interface ClientMapper {
    /**
     *
     * @mbggenerated 2017-05-05
     */
    int deleteByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int insert(Client record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int insertSelective(Client record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    Client selectByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int updateByPrimaryKeySelective(Client record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int updateByPrimaryKey(Client record);
}