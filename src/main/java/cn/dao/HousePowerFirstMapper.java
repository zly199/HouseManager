package cn.dao;

import cn.entity.HousePowerFirst;

public interface HousePowerFirstMapper {
    /**
     *
     * @mbggenerated 2017-05-05
     */
    int deleteByPrimaryKey(Long housePowerFirstId);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int insert(HousePowerFirst record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int insertSelective(HousePowerFirst record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    HousePowerFirst selectByPrimaryKey(Long housePowerFirstId);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int updateByPrimaryKeySelective(HousePowerFirst record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int updateByPrimaryKey(HousePowerFirst record);
}