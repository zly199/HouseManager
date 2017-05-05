package cn.dao;

import cn.entity.OrganizationStructure;

public interface OrganizationStructureMapper {
    /**
     *
     * @mbggenerated 2017-05-05
     */
    int deleteByPrimaryKey(String organizationId);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int insert(OrganizationStructure record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int insertSelective(OrganizationStructure record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    OrganizationStructure selectByPrimaryKey(String organizationId);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int updateByPrimaryKeySelective(OrganizationStructure record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int updateByPrimaryKey(OrganizationStructure record);
}