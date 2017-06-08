package cn.dao;

import cn.entity.Client;

import java.util.List;

public interface ClientMapper {
    /**
     *
     * @mbggenerated 2017-06-06
     */
    int deleteByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2017-06-06
     */
    int insert(Client record);

    /**
     *
     * @mbggenerated 2017-06-06
     */
    int insertSelective(Client record);

    /**
     *
     * @mbggenerated 2017-06-06
     */
    Client selectByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2017-06-06
     */
    int updateByPrimaryKeySelective(Client record);

    /**
     *
     * @mbggenerated 2017-06-06
     */
    int updateByPrimaryKey(Client record);

    List<Client> selectAll();
}