package cn.dao;

import cn.entity.HouseMsg;

public interface HouseMsgMapper {
    /**
     *
     * @mbggenerated 2017-05-05
     */
    int deleteByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int insert(HouseMsg record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int insertSelective(HouseMsg record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    HouseMsg selectByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int updateByPrimaryKeySelective(HouseMsg record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int updateByPrimaryKey(HouseMsg record);
}