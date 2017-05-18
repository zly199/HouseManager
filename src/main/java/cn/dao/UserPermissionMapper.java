package cn.dao;

import cn.entity.UserPermissionKey;

public interface UserPermissionMapper {
    /**
     *
     * @mbggenerated 2017-05-18
     */
    int deleteByPrimaryKey(UserPermissionKey key);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int insert(UserPermissionKey record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int insertSelective(UserPermissionKey record);
}