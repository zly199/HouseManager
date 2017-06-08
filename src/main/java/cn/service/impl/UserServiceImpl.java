package cn.service.impl;

import cn.dao.*;
import cn.dto.UserAvailable;
import cn.dto.UserDto;
import cn.dto.UserOa;
import cn.entity.EnterpriseDuties;
import cn.entity.Photo;
import cn.entity.User;
import cn.entity.UserDuties;
import cn.service.UserService;

import cn.utils.CryptographyUtil;
import cn.utils.TinyUtilis;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Created by ZLY on 2017-05-19.
 */
@Service
public class UserServiceImpl implements UserService{

    @Autowired
    UserMapper userMapper;
    @Autowired
    OrganizationStructureMapper organizationStructureDao;
    @Autowired
    EnterpriseDutiesMapper enterpriseDutiesDao;
    @Autowired
    UserDutiesMapper userDutiesDao;
    @Autowired
    PhotoMapper photoDao;

    /**
     * 通过用户名查询用户
     *
     * @param userName
     * @return
     */
    @Override
    public User getByUserName(String userName) {
        return userMapper.selectByUserName(userName);
    }

    /**
     * 通过用户名查询角色信息
     *
     * @param userName
     * @return
     */
    @Override
    public Set<String> getRoles(String userName) {
        return userMapper.selectRoleByUserName(userName);
    }

    /**
     * 通过用户名查询权限信息
     *
     * @param userName
     * @return
     */
    @Override
    public Set<String> getPermissions(String userName) {
        return userMapper.selectPermissionsByUserName(userName);
    }

    /**
     * 通过组织名查询组织人员
     * @param organizationName
     * @return 人事oa列表
     */
    @Override
    public List<UserOa> getUserOaList(String organizationName) {
        List<UserDuties> userDutiesList;
        //获取数据
        if (organizationName.equals("全部")){
            userDutiesList = userDutiesDao.selectAll();
        }else {

            userDutiesList= userDutiesDao.selectByOrganizationName(organizationName);
        }

        //组织，职务，上级id到名称的转换
        //返回可用列表
        try {
            return userAvailableToUserOa(userDutiesToUserAvailable(userDutiesList));
        } catch (ParseException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override

    /**
     *通过id查找用户
     */
    public User getUserById(Long userId) {
        return userMapper.selectByPrimaryKey(userId);
    }

    /**
     * 返回所有的人员名称
     * @return
     */
    @Override
    public List<String> findNameAll() {
        return userDutiesDao.selectNameAll();
    }
    /**
     * 添加用户
     * @return
     * @param userDto
     */
    @Override
    public Long addUserDuties(UserDto userDto,int photoId) {
        //转换格式
        UserDuties userDuties = userDtoToUserDuties(userDto);
        userDuties = addUserPrimaryKey(userDuties);
        //加密密码
        userDuties.setPassword(CryptographyUtil.md5(userDuties.getPassword(),userDuties.getUserName()));
        //生成个人房源前缀
            //搜索本人组织所有人
        List<UserDuties> userDutiesList=
                    organizationStructureDao.selectUserDutisByOrganizationId(userDuties.getOrganizationId());
            //查询都有人的前缀
        Set<String> userPreSet=new HashSet<>();
            for (UserDuties user:userDutiesList){
                userPreSet.add(user.getUserHousePre());
            }
            //uuid生成，截取前三位字符 //对比无冲突
        StringBuilder stringBuilder = new StringBuilder();
        for (int i =0;i==0||userPreSet.contains(stringBuilder.toString())||!Character.isLowerCase(stringBuilder.toString().charAt(0));i++) {
            stringBuilder.delete(0,stringBuilder.length());
            stringBuilder.append(UUID.randomUUID().toString());
        }
        //设置前缀
        userDuties.setUserHousePre(stringBuilder.toString().substring(0,3));
        //主键重复，重新生成
        int i = userDutiesDao.insertSelective(userDuties);
        if (i<=0){
            for(i=-1;i<=0;i=userDutiesDao.insertSelective(userDuties)){
                userDuties = addUserPrimaryKey(userDuties);
            }
        }
        //修改照片
        if (photoId!=1){
            Photo photo = photoDao.selectByPrimaryKey(photoId);
            photo.setUserid(userDuties.getUserId());
            photoDao.updateByPrimaryKey(photo);
        }

        //返回主键
        return userDuties.getUserId();
    }
    /**
     * 增加用户的照片
     * @param fileName
     * @return 插入数据库的主键
     */
    @Override
    public int addUserPhone(String fileName,int photoId) {
        return photoDao.insert(new Photo(
                photoId,
                fileName,
                null
        ));
    }

    /**
     * 增加用户主键
     * @param userDuties
     * @return
     */
    private UserDuties addUserPrimaryKey(UserDuties userDuties) {
        StringBuilder stringBuilder = new StringBuilder("0");
        //剔除首个数字为0的情况
        for (;stringBuilder.charAt(0)=='0';){
            stringBuilder.replace(0,9,TinyUtilis.getNumberRandom(10));

        }
        userDuties.setUserId(Long.parseLong(stringBuilder.toString()));
        return userDuties;
    }

    /**
     * 前端封装到后台数据的转换
     * @param userDto
     * @return
     */
    private UserDuties userDtoToUserDuties(UserDto userDto) {
        //部门转id
        userDto.setOrganizationId(organizationStructureDao.selectByName(userDto.getOrganizationId()));
        //职务转id
            //职务信息
        EnterpriseDuties enterpriseDuties = enterpriseDutiesDao.selectPrimaryByName(userDto.getDutiesId());
        userDto.setDutiesId(enterpriseDuties.getEnterpriseDutiesId().toString());
        //上级user名转id
        userDto.setChiefId(userMapper.selectByUserName(userDto.getChiefId()).getUserId().toString());
        return new UserDuties(
                false,
                userDto.getUserId(),
                userDto.getUserName(),
                userDto.getOrganizationId(),
                Byte.parseByte(userDto.getDutiesId()),//todo 输入异常处理
                userDto.getState(),
                userDto.getEntryTime(),
                userDto.getDimissionTime(),
                userDto.getOmni(),
                userDto.getSource(),
                userDto.getTechnicalTitle(),
                userDto.getRecord(),
                userDto.getMainBuildings(),
                Long.parseLong(userDto.getChiefId()),//todo 输入异常处理
                null,//todo 输入异常处理
                userDto.getPassword(),
                userDto.getWorkingTime(),
                userDto.getClosingTime(),
                userDto.getUserPersion(),
                userDto.getUserHousePre()
        );
    }


    /**
     * 把可用的用户信息转换(简化)成用户列表信息
     * @param userAvailables
     * @return
     */
    private List<UserOa> userAvailableToUserOa(List<UserAvailable> userAvailables) {
        List<UserOa> userOaList = new ArrayList<>();
        for (UserAvailable userAvailable:userAvailables){
            userOaList.add(
                    new UserOa(
                            userAvailable.getUserId(),
                            userAvailable.getUserName(),
                            userAvailable.getDutiesName(),
                            userAvailable.getState(),
                            userAvailable.getChiefName(),
                            userAvailable.getEntryTime(),
                            userAvailable.getDimissionTime(),
                            userAvailable.getWorkingTime(),
                            userAvailable.getClosingTime()
                    )
            );
        }
        return userOaList;
    }


    /**
     * 处理原始用户数据表，把组织，职务，上级id转换成名称
     * @param userDutiesList
     * @return
     */
    private List<UserAvailable> userDutiesToUserAvailable(List<UserDuties> userDutiesList) throws ParseException {
        List<UserAvailable> userAvailableList = new ArrayList<>();
        SimpleDateFormat dataFormat = new SimpleDateFormat ("hh:mm:ss");
        for (UserDuties userDutie:userDutiesList){
            //格式化上下班时间


            userAvailableList.add(new UserAvailable(
                    userDutie.getLocked(),
                    userDutie.getUserId(),
                    userDutie.getUserName(),
                    organizationStructureDao.selectByPrimaryKey(userDutie.getOrganizationId()).getOrganizationName(),
                    enterpriseDutiesDao.selectByPrimaryKey(userDutie.getDutiesId()).getDutiesName(),
                    userDutie.getState(),
                    userDutie.getEntryTime(),
                    userDutie.getDimissionTime(),
                    userDutie.getOmni(),
                    userDutie.getSource(),
                    userDutie.getTechnicalTitle(),
                    userDutie.getRecord(),
                    userDutie.getMainBuildings(),
                    userDutie.getChiefId()==null?"无":userMapper.selectByPrimaryKey(userDutie.getChiefId()).getUserName(),
                    userDutie.getConnecttionWay(),
                    userDutie.getPassword(),
                    userDutie.getWorkingTime(),
                    userDutie.getClosingTime(),
                    userDutie.getUserPersion(),
                    userDutie.getUserHousePre()
            ));
        }
        return userAvailableList;
    }

}
