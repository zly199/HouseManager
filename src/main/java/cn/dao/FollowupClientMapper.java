package cn.dao;

import cn.entity.FollowupClient;

public interface FollowupClientMapper {
    /**
     *
     * @mbggenerated 2017-05-05
     */
    int deleteByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int insert(FollowupClient record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int insertSelective(FollowupClient record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    FollowupClient selectByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int updateByPrimaryKeySelective(FollowupClient record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int updateByPrimaryKey(FollowupClient record);
}