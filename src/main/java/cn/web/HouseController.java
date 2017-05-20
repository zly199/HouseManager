package cn.web;

import cn.dto.HouseList;
import cn.entity.Housemsg;
import cn.service.HouseService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by ZLY on 2017-05-19.
 */
@Controller
@RequestMapping("/back/house")
public class HouseController {

    @Autowired
    HouseService houseService;

    @RequestMapping("/view")
    @RequiresPermissions("house:view")
    public String houseView(Model model){
        return "houseSelect";
    }

    @RequestMapping("/getHouseData")
    @ResponseBody
    @RequiresPermissions("house:view")
    public List<HouseList> getHouseData(){
        return houseService.findAll();
    }

    @RequestMapping("/add")
    @RequiresPermissions("house:add")
    public String houseAdd(){
        return "addHouse";
    }


}
