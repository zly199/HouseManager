package cn.web;

import cn.dto.*;
import cn.entity.FollowupHouse;
import cn.entity.HouseOwner;
import cn.entity.Housemsg;
import cn.service.HouseService;
import cn.service.PermisionService;
import cn.utils.DataTransferUtil;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.AuthorizationException;
import org.apache.shiro.authz.annotation.Logical;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import java.util.ArrayList;
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
    public String houseAdd(Model model){

        Subject subject = SecurityUtils.getSubject();
        //根据权限返回新增房源的公盘私盘列表，以及部门人员信息下拉列表
        HouseAddActionList houseAddActionList = permisionService.houseAddPermission();
        model.addAttribute("houseAddActionList",houseAddActionList);

        if (subject.isPermitted("house:add:ourselves"))
            return "addHouse";
        if (subject.isPermitted("house:add:ourDepartment"))
            return "addHouse";
        if (subject.isPermitted("house:add:crossDepartment"))
            return "addHouse";
        else  throw new AuthorizationException("没有相关权限");
    }
    @RequestMapping("/addAction")
    @ResponseBody
    /*返回房源id*/
    @Transactional
    public String houseAddAction(HouseMessageAvailable houseMessageAvailable,HouseOwner houseOwner){
        //存入业主，返回业主主键
        int houseOwnerid = houseService.addHouseOwner(houseOwner);
        houseMessageAvailable.setClientId(houseOwnerid);

        //类型转换返回房号
        return houseService.add(houseMessageAvailable);
    }


    @RequestMapping("ediHouse/{houseId}")
    public  String houseEdi(@PathVariable String houseId){
        System.out.println(houseId);
        return "houseDetail";
    }

    @RequestMapping("/detail/{houseId}")
    public String houseDetail(@PathVariable String houseId,Model model){
        //房源信息-查找-权限判断-返回
        HouseMessageAvailable result = houseService.findById(houseId);
        result = permisionService.houseDetailViewPermission(result,houseId);
        model.addAttribute("houseDetail",result);
        //跟进信息-查找-转换-权限判断-返回
        List<FollowupHouse> followupHouses = houseService.findFollowupByHouseId(houseId);
        List<FollowUpHouseAvailable> followUpHouseAvailables = houseService.followupHouseToFollowUpHouseAvailable(followupHouses);
        followUpHouseAvailables = permisionService.folloUpViewPermission(followUpHouseAvailables,houseId);
        model.addAttribute("followUpList",followUpHouseAvailables);
        //业主信息-查找-权限判断-返回
        HouseOwner houseOwner = houseService.findHouseOwner(houseId);
        houseOwner = permisionService.houseOwnerViewPermission(houseOwner,houseId);
        model.addAttribute("houseOwner",houseOwner);
        //归属转移部门人员信息下拉列表
        HouseAddActionList houseAddActionList = permisionService.houseAddPermission();
        model.addAttribute("houseAddActionList",houseAddActionList);

        //其他相关信息 s首次跟进等

        //照片
        //todo:照片
//        钥匙
        //todo：钥匙
        return "houseDetail";
    }

    @RequestMapping("/delete/{houseId}")
    @ResponseBody
    public ResultData<Integer> del(@PathVariable String houseId){
        ResultData<Integer> resultData = houseService.deleteHouse(houseId);
        return resultData;
    }
    @RequestMapping("/detail/edit/{houseId}")
    public String ediHouseDetail(@PathVariable String houseId){

        return "houseEdit";
    }

    /**
     * 修改房源的归属人（员工）
     * @param houseId
     * @param houseUserForm
     * @return 修改条数
     */
    @RequestMapping("/ediHouseUser/{houseId}")
    @ResponseBody
    public int ediHouseUser(@PathVariable String houseId,HouseUserForm houseUserForm){
        Subject currentUser = SecurityUtils.getSubject();
        if (currentUser.isPermitted("house:edi:userMove"))
            return houseService.editHouseUser(houseId,houseUserForm.getHouseUserName1());
        else return 0;

    }

    /**
     * 新增跟进信息
     * @param houseId
     * @param followupHouse
     * @return
     */
    @RequestMapping("/followUp/add/{houseId}")
    @ResponseBody
    public int followUpAdd(@PathVariable String houseId,FollowupHouse followupHouse){
        return permisionService.houseFollowUpAdd(houseId,followupHouse);
    }

    /**
     * 跟进删除
     * @param followUpId
     * @return
     */
    @RequestMapping("/followUp/del/{followUpId}")
    @ResponseBody
    public int followUpDel(@PathVariable Long followUpId){
        return permisionService.houseFollowUpDel(followUpId);
    }

    /**
     * 增加钥匙
     * @param houseId
     * @param keyForm
     * @return
     */
    @RequestMapping("/key/add/{houseId}")
    @ResponseBody
    public int keyAdd(@PathVariable String houseId,KeyForm keyForm){

        return permisionService.addHouseKey(keyForm,houseId);
    }

    /**
     * 根据房源查找房源钥匙
     * @param houseId
     * @return
     */
    @RequestMapping("/key/list/{houseId}")
    @ResponseBody
    public List<KeyForm> getKeyList(@PathVariable String houseId){
        return houseService.findKeyByHouseId(houseId);
    }
    @RequestMapping("/key/del/{keyId}")
    @ResponseBody
    public int delKey(@PathVariable String keyId){
        return houseService.delHouseKey(keyId);

    }
}
