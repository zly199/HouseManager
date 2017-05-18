package cn.dao;

import cn.entity.OrganizationStructure;

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
}