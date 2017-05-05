package cn.dao;

import cn.entity.Key;

public interface KeyMapper {
    /**
     *
     * @mbggenerated 2017-05-05
     */
    int deleteByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int insert(Key record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int insertSelective(Key record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    Key selectByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int updateByPrimaryKeySelective(Key record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int updateByPrimaryKey(Key record);
}