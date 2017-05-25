package cn.service.impl;

import cn.dao.EnterpriseDutiesMapper;
import cn.dao.OrganizationStructureMapper;
import cn.dao.UserDutiesMapper;
import cn.dao.UserMapper;
import cn.dto.UserAvailable;
import cn.dto.UserOa;
import cn.entity.User;
import cn.entity.UserDuties;
import cn.service.UserService;
import cn.utils.DataTransferUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

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
        return userAvailableToUserOa(userDutiesToUserAvailable(userDutiesList));
    }

    @Override

    /**
     *通过id查找用户
     */
    public User getUserById(Long userId) {
        return userMapper.selectByPrimaryKey(userId);
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
    private List<UserAvailable> userDutiesToUserAvailable(List<UserDuties> userDutiesList) {
        List<UserAvailable> userAvailableList = new ArrayList<>();

        for (UserDuties userDutie:userDutiesList){
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
