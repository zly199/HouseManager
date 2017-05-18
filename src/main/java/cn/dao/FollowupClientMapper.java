package cn.dao;

import cn.entity.FollowupClient;

public interface FollowupClientMapper {
    /**
     *
     * @mbggenerated 2017-05-18
     */
    int deleteByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int insert(FollowupClient record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int insertSelective(FollowupClient record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    FollowupClient selectByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int updateByPrimaryKeySelective(FollowupClient record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int updateByPrimaryKey(FollowupClient record);
}