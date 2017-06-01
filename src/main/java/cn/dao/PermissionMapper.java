package cn.dao;

import cn.entity.Permission;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Set;

public interface PermissionMapper {
    /**
     *
     * @mbggenerated 2017-05-18
     */
    int deleteByPrimaryKey(Integer permissionId);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int insert(Permission record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int insertSelective(Permission record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    Permission selectByPrimaryKey(Integer permissionId);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int updateByPrimaryKeySelective(Permission record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int updateByPrimaryKey(Permission record);
    //通过权限字符串查找权限id
    Set<Integer> selectByPermissionChar(List<String> permissionCharList);
}