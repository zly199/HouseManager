package cn.dao;

import cn.entity.EnterpriseDuties;

public interface EnterpriseDutiesMapper {
    /**
     *
     * @mbggenerated 2017-05-05
     */
    int deleteByPrimaryKey(Byte enterpriseDutiesId);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int insert(EnterpriseDuties record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int insertSelective(EnterpriseDuties record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    EnterpriseDuties selectByPrimaryKey(Byte enterpriseDutiesId);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int updateByPrimaryKeySelective(EnterpriseDuties record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int updateByPrimaryKey(EnterpriseDuties record);
}