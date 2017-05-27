package cn.dao;

import cn.entity.UserPermissionKey;
import org.apache.ibatis.annotations.Param;

import java.util.Map;
import java.util.Set;

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



    /**
     * 删除该用户的全部权限
     * @param userId
     * @return
     */
    int deleteByUserId(Long userId);
    /**
     * 通过userId修改权限
     *
     * @return 影响的行数
     */
    int insertByUserId(Map mybatisParam);
}