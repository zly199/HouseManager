package cn.login.dao;

import cn.login.entity.LoginLog;

import java.util.List;

/**
 * Created by ZLY on 2017-03-24.
 */
public interface LoginLogDao {

    /**
     * 插入登录信息到登录信息表
     * @param loginLog 用户信息主体
     * @rerurn 插入的行数（用于判断）
     */
    int insertLoginLog(LoginLog loginLog);

    /**
     * 根据用户id查询用户的登录记录
     * @param userId
     * @return 该用户的所有登录记录
     */
    List<LoginLog>  findLoginLogByUserID(long userId);
}
