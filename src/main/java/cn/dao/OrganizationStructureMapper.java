package cn.dao;

import cn.entity.OrganizationStructure;
import cn.entity.UserDuties;

import java.util.List;

public interface OrganizationStructureMapper {
    /**
     *
     * @mbggenerated 2017-05-18
     */
    int deleteByPrimaryKey(String organizationId);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int insert(OrganizationStructure record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int insertSelective(OrganizationStructure record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    OrganizationStructure selectByPrimaryKey(String organizationId);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int updateByPrimaryKeySelective(OrganizationStructure record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int updateByPrimaryKey(OrganizationStructure record);
    /**
     * 返回所有的组织机构名
     * @return
     */
    List<String> selectNameAll();

    String selectByName(String organizationName);

    /**
     * 搜索所属组织所有人
     * @param organizationId
     * @return
     */
    List<UserDuties> selectUserDutisByOrganizationId(String organizationId);
}