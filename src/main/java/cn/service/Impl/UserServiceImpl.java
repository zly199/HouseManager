package cn.service.Impl;

import cn.dao.LoginLogMapper;
import cn.dao.ParameterMapper;
import cn.dao.UserMapper;
import cn.dto.SelcetResult;
import cn.entity.LoginLog;
import cn.entity.Parameter;
import cn.entity.User;
import cn.exception.RegisterException;
import cn.service.UserService;
import cn.utils.HouseUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.mail.MessagingException;
import java.util.Date;

/**
 * Created by ZLY on 2017-03-30.
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;
    @Autowired
    private LoginLogMapper loginLogMapper;
    @Autowired
    private ParameterMapper parameterMapper;

    @Override
    public boolean hasMatchUser(String email, String password) {

        User user = userMapper.selectByEmail(email);
        if (user!=null){
            if (user.getUserPsd().equals(password)&&user.getUserEmail().equals(email)){
                return true;
            }
            else {
                return false;
            }
        }
        return false;

    }

    @Override
    @Transactional
    public int loginSuccess(User user) {

        LoginLog loginLog = new LoginLog();
        loginLog.setUserId(user.getUserId());
        loginLog.setLoginTime(new Date());
        loginLog.setIp(user.getUserLastIp());
        userMapper.updateByPrimaryKeySelective(user);
        int number = loginLogMapper.insertSelective(loginLog);
        return number;
    }

    @Override
    public User findUserById(int userId) {
        return userMapper.selectByPrimaryKey(userId);
    }

    @Override
    public User findUserByEmail(String email) {
        return userMapper.selectByEmail(email);
    }

    @Override
    public int insertNewUser(User user) {

        return  userMapper.insertSelective(user);
    }

    @Override

    public int updateUser(User user) {
        return userMapper.updateByPrimaryKeySelective(user);
    }

    @Override
    @Transactional
    public int activeUser(User user) {
        //todo:文字封装
        user.setUserPower(1);
        return userMapper.updateByPrimaryKeySelective(user);
    }

    @Override
    public SelcetResult<Integer> postMail(String mail,String code) {
        try {
            HouseUtils.senMail(mail,code);
        } catch (MessagingException e) {

            return new SelcetResult<Integer>(false,e.getMessage().toString());

        }
        return new SelcetResult<Integer>(true,0);
    }

    @Override
    public SelcetResult<User> findUserByLastIp(String actionCode) {
        User user=new User();
        try{
            user=userMapper.selectByLastIp(actionCode);
        } catch(Exception e){
            new SelcetResult<User>(false,user);
        }

        return new SelcetResult<User>(true,user);
    }

    @Override
    public SelcetResult<Parameter> findPowerByPowerId(int powerId) {
        //todo:根据权限查找参数表
        return null;
    }


}
