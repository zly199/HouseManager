package cn.web;

import cn.dto.UserOa;
import cn.entity.User;
import cn.service.UserService;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

/**
 * 人事OA
 * Created by ZLY on 2017-05-23.
 */
@Controller
@RequestMapping("/back/personnelMinistry")
public class PersonnelMinistryController {
    @Autowired
    UserService userService;
    /**
     * 组织机构列表
     * @return
     */
    @RequestMapping("/organization")
    public String organization(){
        return "organization";
    }
    @RequestMapping("/getOaUserByOrganizationName/{organizationName}")
    @ResponseBody
    public List<UserOa> getOaUser(@PathVariable String organizationName){
        //todo:根据组织名查询员工
        List<UserOa> userOaList =new ArrayList<>();
        userOaList = userService.getUserOaList("全部");
        if (organizationName.equals("全部"))userOaList= userService.getUserOaList("全部");
        else userOaList = userService.getUserOaList(organizationName);

        return userOaList;

    }
}
