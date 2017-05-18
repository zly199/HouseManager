package cn.dao;

import cn.entity.User;

import java.util.List;

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


}