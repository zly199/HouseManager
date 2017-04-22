package cn.web;

import cn.entity.HouseMsg;
import cn.service.HSourceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.lang.reflect.Method;
import java.util.List;

/**
 * Created by ZLY on 2017-04-21.
 */
@Controller
@RequestMapping(value = "/UserMgr")
public class UserMgrController {

    @Autowired
    private HSourceService hSourceService;

    @RequestMapping(value="/list",method = RequestMethod.GET)
    public String list(){
        List<HouseMsg> houseMsgList = hSourceService.list();
        return "userSelect";
    }
    @RequestMapping(value="/add",method = RequestMethod.GET)
    public String add(){
        return "addUser";
    }
    @RequestMapping(value="/UserMeg",method = RequestMethod.GET)
    public String UserMeg(){
        return "profile";
    }


}
