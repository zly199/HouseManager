package cn.dao;

import cn.entity.User;

import java.util.List;
import java.util.Set;

public interface UserMapper {
    /*
    * 搜索全部User
    * */
    List<User> selectAll();

    /**
     * 根据用户名查询用户
     * @param userName
     * @return
     */
    User selectByUserName(String userName);

    /**
     * 通过用户名查询角色(职务)信息
     * @param userName
     * @return
     */
    Set<String> selectRoleByUserName(String userName);

    /**
     * 通过用户名查询权限信息
     * @param userName
     * @return
     */
    Set<String> selectPermissionsByUserName(String userName);

    User selectByPrimaryKey(String userId);
}