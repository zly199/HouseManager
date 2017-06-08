package cn.dao;

import cn.entity.EnterpriseDuties;

public interface EnterpriseDutiesMapper {
    /**
     *
     * @mbggenerated 2017-05-18
     */
    int deleteByPrimaryKey(Byte enterpriseDutiesId);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int insert(EnterpriseDuties record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int insertSelective(EnterpriseDuties record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    EnterpriseDuties selectByPrimaryKey(Byte enterpriseDutiesId);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int updateByPrimaryKeySelective(EnterpriseDuties record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int updateByPrimaryKey(EnterpriseDuties record);

    /**
     * 根据职务名称查找职务
     * @param dutiesId 职务名
     * @return
     */
    EnterpriseDuties selectPrimaryByName(String dutiesId);
}