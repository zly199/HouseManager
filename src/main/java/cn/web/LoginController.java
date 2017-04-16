package cn.web;

import cn.dto.LoginForm;
import cn.dto.RegisterForm;
import cn.dto.SelcetResult;
import cn.entity.User;
import cn.service.UserService;
import cn.utils.HouseUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.net.InetAddress;
import java.net.UnknownHostException;

/**
 * Created by ZLY on 2017-04-07.
 */
@Controller

public class LoginController {
    private static Logger logger = Logger.getLogger(LoginController.class);
    @Autowired
    private UserService userService;

    @Autowired
    private  HttpServletRequest request;
    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public String Login(){
        return "login";
    }

    @RequestMapping(value = "/doLogin",method = RequestMethod.POST)
    public String doLogin(LoginForm loginForm){
        //todo:返回错误信息，权限判断；
        if (loginForm!=null){
            try {
                if (userService.hasMatchUser(loginForm.getUsername(),loginForm.getPassword())){
                    User user = userService.findUserByEmail(loginForm.getUsername());
                    user.setUserLastIp(getIpAddr(request));
                    userService.loginSuccess(user);
                    //写入session便于读取
                    request.getSession().setAttribute("user",user);
                    //根据powerID查询查询权限信息
                    return "redirect:/index";
                }
            } catch (Exception e) {
                return "redirect:/login";
            }
        }
        return "redirect:/login";
    }

    @RequestMapping(value = "/Register",method = RequestMethod.POST)
    public String Register(RegisterForm registerForm,Model model){
        //todo:返回错误信息；字段为空或（邮箱，手机）重复；
        //处理表单内容
        User user = new User();
        user.setUserEmail(registerForm.getEmail());
        //先把权限设为0
        user.setUserPower(0);//0:未激活 1：受限用户（未经管理员授权） 2:普通用户 3：管理员用户 4：超级管理员
        user.setUserPsd(registerForm.getPassword());
        user.setUserPhone(registerForm.getUserPhone());
        user.setUserName(registerForm.getUsername());
        user.setUserAge(registerForm.getUserAge());
        //生成激活码
        String code = HouseUtils.getUUID();
        //暂时使用lastIP存储激活码
        user.setUserLastIp(code);
        //储存新注册的用户
        userService.insertNewUser(user);
        //向用户发送激活邮件
        userService.postMail(user.getUserEmail(),user.getUserLastIp());
        model.addAttribute("isSuccessMeg","注册成功，请到邮箱"+user.getUserEmail()+"继续操作");
        return "register";
    }
    //"http://localhost:8080/HouseMgr/actionUser?code="+code;
    @RequestMapping(value = "/activeUser/{actionCode}",method = RequestMethod.GET)
    public String activeUser(@PathVariable("actionCode")String actionCode,Model model){
        int count=0;
        //根据激活码(暂存在lastIP上)查询用户
        SelcetResult<User> selcetResult = userService.findUserByLastIp(actionCode);
        if (selcetResult.isSuccess()!=true){
            //todo:文字封装
            model.addAttribute("isSuccessMeg","激活失败,链接过期或者不可用");
            return "register";
        }else {
            //已经查询到，修改用户状态
            selcetResult.getData().setUserLastIp(getIpAddr(request));
            count=userService.activeUser(selcetResult.getData());
        }
        if (count>0){
            //修改成功，延迟返回激活成功界面
            //todo:文字封装
            model.addAttribute("isSuccessMeg","用户,"+selcetResult.getData().getUserName()+",激活成功,");
        }else {
            model.addAttribute("isSuccessMeg","用户,"+selcetResult.getData().getUserName()+",权限变更失败");
            return "register";
        }
        request.getSession().setAttribute("user",selcetResult.getData());
        return "register";
    }

    @RequestMapping(value = "/index",method = RequestMethod.GET)
    public String index(){

        User user = (User)request.getSession().getAttribute("user");
       if (user==null||user.getUserId()==null||user.getUserId()==0){
            return "redirect:/login";
        }
        return "index";
    }

    /**
     * 获取真实的客户端ip地址
     * @param request
     * @return
     */
    public static String getIpAddr(HttpServletRequest request) {
        String ip = request.getHeader("x-forwarded-for");
        if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("Proxy-Client-IP");
        }
        if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("WL-Proxy-Client-IP");
        }
        if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getRemoteAddr();
            if(ip.equals("127.0.0.1")||ip.equals("localhost")){
                //根据网卡取本机配置的IP
                InetAddress inet=null;
                try {
                    inet = InetAddress.getLocalHost();
                } catch (UnknownHostException e) {
                    e.printStackTrace();
                }
                ip= inet.getHostAddress();
            }
        }
        // 对于通过多个代理的情况，第一个IP为客户端真实IP,多个IP按照','分割
        if(ip != null && ip.length() > 15){
            if(ip.indexOf(",")>0){
                ip = ip.substring(0,ip.indexOf(","));
            }
        }


        return ip;
    }

}
