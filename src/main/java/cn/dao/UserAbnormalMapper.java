package cn.dao;

import cn.entity.UserAbnormal;

public interface UserAbnormalMapper {
    /**
     *
     * @mbggenerated 2017-05-05
     */
    int deleteByPrimaryKey(Integer abnormalId);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int insert(UserAbnormal record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int insertSelective(UserAbnormal record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    UserAbnormal selectByPrimaryKey(Integer abnormalId);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int updateByPrimaryKeySelective(UserAbnormal record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int updateByPrimaryKey(UserAbnormal record);
}