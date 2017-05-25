package cn.web;

import cn.dto.LoginForm;
import cn.dto.ResultData;
import cn.entity.User;
import cn.utils.CryptographyUtil;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import sun.misc.Cache;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by ZLY on 2017-05-18.
 */
@Controller
@RequestMapping("/back/user")
public class LoginController {
    @RequestMapping(value = "/login")
    public String login(LoginForm user, Model model) {
        if (user.getUsername()!=null&&user.getPassword()!=null) {
            Subject subject = SecurityUtils.getSubject();

            UsernamePasswordToken token =
                    new UsernamePasswordToken(user.getUsername(), CryptographyUtil.md5(user.getPassword(),user.getUsername()));
            try {
                subject.login(token);
                return "redirect:index";
            } catch (Exception e) {
                e.printStackTrace();
                model.addAttribute("user", user);
                model.addAttribute("loginResult", new ResultData<User>(false,"用户名或者密码错误"));
                return "login_soft";
            }
        }
        return "login_soft";
    }

    @RequestMapping(value = "/index")
    @RequiresAuthentication
    public String index() {
        return "index";
    }

    @RequestMapping("/loginOut")
    public String loginOut(){
        Subject subject = SecurityUtils.getSubject();
        subject.logout();
        return "redirect:login";
    }
}
