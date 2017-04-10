package cn.login.dao;

import cn.login.entity.User;
import org.apache.ibatis.annotations.Param;

/**
 * Created by ZLY on 2017-03-24.
 */
public interface UserDao {
    /**
     * 根据用户Id和密码查询用户
     * @param userId
     * @param password
     * @return 返回查询到的用户数
     */
    int getMatchCount(@Param("userId") long userId,@Param("password") String password);

    /**
     * 根据用户Id查询用户
     * @param userId
     * @return 用户信息
     */
    User findUserByUserId(@Param("userId") long userId);

    /**
     * 更新user信息
     * @param user
     * @return
     */
    int updateUser(User user);
}
