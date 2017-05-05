package cn.dao;

import cn.entity.UserDuties;

public interface UserDutiesMapper {
    /**
     *
     * @mbggenerated 2017-05-05
     */
    int deleteByPrimaryKey(Long userId);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int insert(UserDuties record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int insertSelective(UserDuties record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    UserDuties selectByPrimaryKey(Long userId);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int updateByPrimaryKeySelective(UserDuties record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int updateByPrimaryKey(UserDuties record);
}