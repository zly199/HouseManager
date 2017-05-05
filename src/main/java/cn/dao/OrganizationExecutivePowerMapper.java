package cn.dao;

import cn.entity.OrganizationExecutivePower;
import cn.entity.OrganizationExecutivePowerKey;

public interface OrganizationExecutivePowerMapper {
    /**
     *
     * @mbggenerated 2017-05-05
     */
    int deleteByPrimaryKey(OrganizationExecutivePowerKey key);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int insert(OrganizationExecutivePower record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int insertSelective(OrganizationExecutivePower record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    OrganizationExecutivePower selectByPrimaryKey(OrganizationExecutivePowerKey key);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int updateByPrimaryKeySelective(OrganizationExecutivePower record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int updateByPrimaryKey(OrganizationExecutivePower record);
}