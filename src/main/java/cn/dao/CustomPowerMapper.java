package cn.dao;

import cn.entity.CustomPower;

public interface CustomPowerMapper {
    /**
     *
     * @mbggenerated 2017-05-05
     */
    int deleteByPrimaryKey(Long customPowerId);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int insert(CustomPower record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int insertSelective(CustomPower record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    CustomPower selectByPrimaryKey(Long customPowerId);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int updateByPrimaryKeySelective(CustomPower record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int updateByPrimaryKey(CustomPower record);
}