package cn.dao;

import cn.entity.HousePowerThird;

public interface HousePowerThirdMapper {
    /**
     *
     * @mbggenerated 2017-05-05
     */
    int deleteByPrimaryKey(Long housePowerThirdId);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int insert(HousePowerThird record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int insertSelective(HousePowerThird record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    HousePowerThird selectByPrimaryKey(Long housePowerThirdId);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int updateByPrimaryKeySelective(HousePowerThird record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int updateByPrimaryKey(HousePowerThird record);
}