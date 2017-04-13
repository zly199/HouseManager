package cn.service;

import cn.entity.User;

/**
 * Created by ZLY on 2017-03-30.
 * 用户相关的业务接口
 */
public interface UserService {
    /**
     * 根据账号密码查询是否有改用户
     * @param email 用户email
     * @param password  密码
     * @return true有 fasle 无
     */
    public boolean hasMatchUser(String email,String password);

    /**
     * 登录成功后的一些信息更新，日志插入等
     * @param user
     */
    public int loginSuccess(User user);

    /**
     * 根据userId查找用户
     * @param userId
     * @return
     */
    public User findUserById(int userId);
    /**
     * 根据email查找用户
     * @param email
     * @return
     */
    public User findUserByEmail(String email);

}
