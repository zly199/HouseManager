package cn.dao;

import cn.entity.FollowupHouse;

public interface FollowupHouseMapper {
    /**
     *
     * @mbggenerated 2017-05-05
     */
    int deleteByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int insert(FollowupHouse record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int insertSelective(FollowupHouse record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    FollowupHouse selectByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int updateByPrimaryKeySelective(FollowupHouse record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int updateByPrimaryKey(FollowupHouse record);
}