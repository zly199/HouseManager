package cn.service;

import cn.dto.SelcetResult;
import cn.entity.Parameter;
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

    /**
     * 创建新用户
     * @param User User
     * @return
     */
    public int insertNewUser(User User);

    /**
     * 根据注册表单创建新用户
     * @param User
     * @return
     */
    public int updateUser(User User);

    /**
     * 新注册用户的激活操作
     * @param user
     * @return 修改的函数1：正常 0：失败
     */
    public int activeUser(User user);

    /**
     * 发送激活邮件
     * @param mail 要发送的邮件地址
     * @param code 邮件激活码
     * @return
     */
    public SelcetResult<Integer> postMail(String mail,String code);

    /**
     * 根据激活码查询用户（lastIp）
     * @param actionCode
     * @return
     */
    SelcetResult<User> findUserByLastIp(String actionCode);

    public SelcetResult<Parameter> findPowerByPowerId(int powerId);


    ;
}
