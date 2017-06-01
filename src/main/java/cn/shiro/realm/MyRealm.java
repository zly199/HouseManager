package cn.shiro.realm;

import cn.entity.User;
import cn.service.UserService;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Set;

/**
 * Created by ZLY on 2017-05-18.
 */
public class MyRealm extends AuthorizingRealm{

    @Autowired
    UserService userService;
    /**
     * 授权，为已经登录的用户从数据库读取角色和权限
     * @param principalCollection 身份信息
     * @return
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        String userName = (String)principalCollection.getPrimaryPrincipal();
        SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();
        authorizationInfo.setRoles(userService.getRoles(userName));

        authorizationInfo.setStringPermissions(userService.getPermissions(userName));
        return authorizationInfo;
    }

    /**
     * 身份认证，比对用户名和密码
     * @param authenticationToken 要验证的登录信息
     * @return 登录成功：AuthenticationInfo，失败返回null
     * @throws AuthenticationException
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        String userName = (String) authenticationToken.getPrincipal();
        User user = userService.getByUserName(userName);
        if (user!=null){
            AuthenticationInfo authenticationInfo
                   = new SimpleAuthenticationInfo(user.getUserName(),user.getPassword(),"xx");
            return  authenticationInfo;
        }
        return null;
    }
}
