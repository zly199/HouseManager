package cn.dao;

import cn.entity.UserAbnormal;

public interface UserAbnormalMapper {
    /**
     *
     * @mbggenerated 2017-05-18
     */
    int deleteByPrimaryKey(Integer abnormalId);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int insert(UserAbnormal record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int insertSelective(UserAbnormal record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    UserAbnormal selectByPrimaryKey(Integer abnormalId);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int updateByPrimaryKeySelective(UserAbnormal record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int updateByPrimaryKey(UserAbnormal record);
}