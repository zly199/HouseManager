package cn.service;

import cn.entity.User;

import java.util.Set;

/**
 * Created by ZLY on 2017-05-18.
 */
public interface UserServie {

    /**
     * 通过用户名查询用户
     * @param userName
     * @return
     */
    public User getByUserName(String userName);

    /**
     * 通过用户名查询角色信息
     * @param userName
     * @return
     */
    public Set<String> getRoles(String userName);

    /**
     * 通过用户名查询权限信息
     * @param userName
     * @return
     */
    public Set<String> getPermissions(String userName);




}
