package cn.dao;

import cn.entity.Key;

public interface KeyMapper {
    /**
     *
     * @mbggenerated 2017-05-18
     */
    int deleteByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int insert(Key record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int insertSelective(Key record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    Key selectByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int updateByPrimaryKeySelective(Key record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int updateByPrimaryKey(Key record);
}