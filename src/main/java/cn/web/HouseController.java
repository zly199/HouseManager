package cn.web;

import cn.dto.FollowUpHouseAvailable;
import cn.dto.HouseList;
import cn.dto.HouseMessageAvailable;
import cn.entity.FollowupHouse;
import cn.entity.HouseOwner;
import cn.service.HouseService;
import cn.service.PermisionService;
import cn.utils.DataTransferUtil;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
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
    @Autowired
    PermisionService permisionService;

    @RequestMapping("/view")
    @RequiresPermissions("house:viewPage")
    public String houseView(Model model){
        return "houseSelect";
    }

    @RequestMapping("/getHouseData")
    @ResponseBody
    @RequiresPermissions("house:viewPage")
    public List<HouseList> getHouseData(){
        return houseService.findHouseByPermission();
    }

    @RequestMapping("/add")
    @RequiresPermissions("house:add")
    public String houseAdd(){
        return "addHouse";
    }
    @RequestMapping("ediHouse/{houseId}")
    public  String houseEdi(@PathVariable String houseId){
        System.out.println(houseId);
        return "houseDetail";
    }
    @RequestMapping("/detail/{houseId}")
    public String houseDetail(@PathVariable String houseId,Model model){
        //房源信息
        HouseMessageAvailable result = houseService.findById(houseId);
        model.addAttribute("houseDetail",result);
        //跟进信息
        List<FollowupHouse> followupHouses = houseService.findFollowupByHouseId(houseId);
        List<FollowUpHouseAvailable> followUpHouseAvailables = houseService.followupHouseToFollowUpHouseAvailable(followupHouses);
            //跟进权限判断
        followUpHouseAvailables = permisionService.folloUpViewPermission(followUpHouseAvailables,houseId);
        model.addAttribute("followUpList",followUpHouseAvailables);
        //业主信息
        HouseOwner houseOwner = houseService.findHouseOwner(houseId);
        houseOwner = permisionService.houseOwnerViewPermission(houseOwner,houseId);
        model.addAttribute("houseOwner",houseOwner);
        //其他相关信息
//todo：其他信息
        //照片
        //todo:照片
//        钥匙
        //todo：钥匙
        return "houseDetail";
    }
}
