package cn.login.web;

import cn.login.dto.LoginForm;
import cn.login.entity.User;
import cn.login.service.UserService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by ZLY on 2017-04-07.
 */
@Controller

public class LoginController {
    private static Logger logger = Logger.getLogger(LoginController.class);
    @Autowired
    private UserService userService;
    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public String Login(){
        return "login";
    }

    @RequestMapping(value = "/doLogin",method = RequestMethod.POST)
    public String doLogin(RedirectAttributes attributes,HttpServletRequest httpServletRequest, LoginForm loginForm){
        if (loginForm!=null){
            try {
                if (userService.hasMatchUser(loginForm.getUserId(),loginForm.getPassword())){
                    User user = userService.findUserById(loginForm.getUserId());
                    user.setLastIp(httpServletRequest.getLocalAddr());
                    userService.loginSuccess(user);
                    attributes.addFlashAttribute("user",user);
                    return "redirect:/main";
                }
            } catch (Exception e) {
                return "login";
            }
        }
        return "login";
    }
    @RequestMapping(value = "/main",method = RequestMethod.GET)
    public String main(@ModelAttribute("user") User user){
        if (user==null||user.getUserId()==0){
            return "redirect:/login";
        }
        return "main";
    }

}
