package cn.dao;

import cn.entity.OrganizationExecutiveRegion;
import cn.entity.OrganizationExecutiveRegionKey;

public interface OrganizationExecutiveRegionMapper {
    /**
     *
     * @mbggenerated 2017-05-05
     */
    int deleteByPrimaryKey(OrganizationExecutiveRegionKey key);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int insert(OrganizationExecutiveRegion record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int insertSelective(OrganizationExecutiveRegion record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    OrganizationExecutiveRegion selectByPrimaryKey(OrganizationExecutiveRegionKey key);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int updateByPrimaryKeySelective(OrganizationExecutiveRegion record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int updateByPrimaryKey(OrganizationExecutiveRegion record);
}