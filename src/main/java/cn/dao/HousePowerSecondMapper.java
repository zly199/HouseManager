package cn.dao;

import cn.entity.HousePowerSecond;

public interface HousePowerSecondMapper {
    /**
     *
     * @mbggenerated 2017-05-05
     */
    int deleteByPrimaryKey(Long housePowerSecondId);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int insert(HousePowerSecond record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int insertSelective(HousePowerSecond record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    HousePowerSecond selectByPrimaryKey(Long housePowerSecondId);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int updateByPrimaryKeySelective(HousePowerSecond record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int updateByPrimaryKey(HousePowerSecond record);
}