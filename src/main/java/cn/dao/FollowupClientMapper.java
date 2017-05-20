package cn.dao;

import cn.entity.FollowupClient;

public interface FollowupClientMapper {
    /**
     *
     * @mbggenerated 2017-05-20
     */
    int deleteByPrimaryKey(Long id);

    /**
     *
     * @mbggenerated 2017-05-20
     */
    int insert(FollowupClient record);

    /**
     *
     * @mbggenerated 2017-05-20
     */
    int insertSelective(FollowupClient record);

    /**
     *
     * @mbggenerated 2017-05-20
     */
    FollowupClient selectByPrimaryKey(Long id);

    /**
     *
     * @mbggenerated 2017-05-20
     */
    int updateByPrimaryKeySelective(FollowupClient record);

    /**
     *
     * @mbggenerated 2017-05-20
     */
    int updateByPrimaryKey(FollowupClient record);
}