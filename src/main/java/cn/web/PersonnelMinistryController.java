package cn.web;

import cn.dto.HouseAddActionList;
import cn.dto.UserDto;
import cn.dto.UserOa;
import cn.entity.Client;
import cn.entity.User;
import cn.service.ClientService;
import cn.service.PermisionService;
import cn.service.UserService;
import cn.utils.TinyUtilis;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * 人事OA
 * Created by ZLY on 2017-05-23.
 */
@Controller
@RequestMapping("/back/personnelMinistry")
public class PersonnelMinistryController {
    @Autowired
    UserService userService;
    @Autowired
    PermisionService permisionService;
    @Autowired
    ClientService clientService;

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

    /**
     * 用户添加页面返回
     * @return
     */
    @RequestMapping("/user/add")
    public String userAdd(Model model){
        //根据权限返回新增房源的公盘私盘列表，以及部门人员信息下拉列表
        HouseAddActionList houseAddActionList = permisionService.houseAddPermission();
        model.addAttribute("houseAddActionList",houseAddActionList);

        return "addstaff";
    }

    /**
     * 用户添加操作
     * @return 返回用户新增的主键
     */
    @RequestMapping("/user/addAction")
    @ResponseBody
    public Long userAddAction(UserDto userDto,int photoId){

        return userService.addUserDuties(userDto,photoId);

    }

    /**
     * 照片上传
     * @param file
     * @return
     * @throws IllegalStateException
     * @throws IOException
     */
    @RequestMapping("/user/uploadFile")
    @ResponseBody
    public int uploadFile(@RequestParam("file") MultipartFile file) throws IllegalStateException, IOException {
        //获取文件后缀名
        String lastName ="."+file.getOriginalFilename().split("\\.")[file.getOriginalFilename().split("\\.").length-1];
        //获取随机Id
        String randomId = TinyUtilis.getNumberRandom(9);
        //存入的url
        String fileUrl = "c:/userPhoto/"+ randomId+lastName;
        if (!file.isEmpty()){
            file.transferTo(new File(fileUrl));
        }
        //只把文件名存入数据库
        //返回插入的主键
        if (userService.addUserPhone(randomId+lastName,Integer.parseInt(randomId))>0)
            return Integer.parseInt(randomId);

        else return 0;
    }

    /**
     *用户信息
     * @param model
     * @return
     */
    @RequestMapping("/user/detail")
    public String userDetail(Model model){
        //用户信息
        model.addAttribute("userDetail",userService.findCurrentUser());
        return "detailOA";
    }

    @RequestMapping("/user/photo")
    public void showImage(HttpServletRequest re,HttpServletResponse response){
        //获取本人的路径(名称)
        String picUrl = userService.getCurrentPic();
        String pic_addr = "C://userPhoto//"+picUrl;
        //response.setContentType("text/html; charset=UTF-8");
        response.setContentType("image/*");
        FileInputStream fis = null;
        OutputStream os = null;
        try {
            fis = new FileInputStream(pic_addr);
            os = response.getOutputStream();
            int count = 0;
            byte[] buffer = new byte[1024*8];
            while ( (count = fis.read(buffer)) != -1 ){
                os.write(buffer, 0, count);
                os.flush();
            }
        }catch(Exception e){
            e.printStackTrace();
        }finally {
            try {
                fis.close();
                os.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    @RequestMapping("/user/tapeWatch/{clientId}")
    public String tapeWatch(@PathVariable int clientId, Model model){
        //查询客源信息
        Client client = clientService.findById(clientId);
        model.addAttribute("client",client);
        return "usertapeWatch";
    }
}
