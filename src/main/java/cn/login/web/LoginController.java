package cn.login.web;

import cn.login.service.UserService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
    public String doLogin(){

        return "redirect:/main";
    }
    @RequestMapping(value = "/main",method = RequestMethod.GET)
    public String main(){

        return "main";
    }
}
