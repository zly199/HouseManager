package cn.dao;

import cn.entity.FollowupHouse;

public interface FollowupHouseMapper {
    /**
     *
     * @mbggenerated 2017-05-18
     */
    int deleteByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int insert(FollowupHouse record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int insertSelective(FollowupHouse record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    FollowupHouse selectByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int updateByPrimaryKeySelective(FollowupHouse record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int updateByPrimaryKey(FollowupHouse record);
}