package cn.web;

import cn.entity.Permission;
import cn.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Set;

/**
 * Created by ZLY on 2017-05-22.
 */
@Controller
@RequestMapping("/back/permission")
public class PermissionController {
    @Autowired
    UserService userService;
    @RequestMapping("/getPermissionByUserId/{userId}")
   public String getPermissionByUserId(@PathVariable Long userId, Model model){

        Set<String> permissionSet = userService.getPermissions(userService.getUserById(userId).getUserName());
        model.addAttribute("permissionSet",permissionSet);
        model.addAttribute("userId",userId);
        return "permissionModal";
    }

    /**
     * ajax编辑权限 返回数据库的更新行数
     * @param userId
     * @param model
     * @return
     */
    @RequestMapping("/ediPermission/{userId}")
    @ResponseBody
    public int ediPermission(@PathVariable Long userId, Model model){
    //todo 权限修改
        return 1;
    }


}
