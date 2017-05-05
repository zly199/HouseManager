package cn.dao;

import cn.entity.PersonPower;

public interface PersonPowerMapper {
    /**
     *
     * @mbggenerated 2017-05-05
     */
    int deleteByPrimaryKey(Long powerUserId);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int insert(PersonPower record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int insertSelective(PersonPower record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    PersonPower selectByPrimaryKey(Long powerUserId);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int updateByPrimaryKeySelective(PersonPower record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int updateByPrimaryKey(PersonPower record);
}