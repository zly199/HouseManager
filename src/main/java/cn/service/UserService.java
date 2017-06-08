package cn.service;

import cn.dto.UserDto;
import cn.dto.UserOa;
import cn.entity.User;

import java.util.Collection;
import java.util.List;
import java.util.Set;

/**
 * Created by ZLY on 2017-05-18.
 */
public interface UserService {

    /**
     * 通过用户名查询用户
     * @param userName
     * @return
     */
    public User getByUserName(String userName);

    /**
     * 通过用户名查询角色信息
     * @param userName
     * @return
     */
    public Set<String> getRoles(String userName);

    /**
     * 通过用户名查询权限信息
     * @param userName
     * @return
     */
    public Set<String> getPermissions(String userName);

    /**
     * 通过组织名查询组织人员
     * @param organizationName
     * @return 人事oa列表
     */
    List<UserOa> getUserOaList(String organizationName);

    /**
     *通过id查找用户
     */
    User getUserById(Long userId);


    /**
     * 返回所有的人员名称
     * @return
     */
    List<String> findNameAll();

    /**
     * 添加用户
     * @return
     * @param userDto
     */
    Long addUserDuties(UserDto userDto,int photoId);

    /**
     * 增加用户的照片
     * @param fileName
     * @return 插入数据库的主键
     */
    int addUserPhone(String fileName,int photoId);
}
