package cn.dao;

import cn.entity.TakeLook;

public interface TakeLookMapper {
    /**
     *
     * @mbggenerated 2017-05-05
     */
    int deleteByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int insert(TakeLook record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int insertSelective(TakeLook record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    TakeLook selectByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int updateByPrimaryKeySelective(TakeLook record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int updateByPrimaryKey(TakeLook record);
}