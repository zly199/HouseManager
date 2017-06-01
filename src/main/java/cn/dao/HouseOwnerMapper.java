package cn.dao;

import cn.entity.HouseOwner;

public interface HouseOwnerMapper {
    /**
     *
     * @mbggenerated 2017-05-31
     */
    int deleteByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2017-05-31
     */
    int insert(HouseOwner record);

    /**
     *
     * @mbggenerated 2017-05-31
     */
    int insertSelective(HouseOwner record);

    /**
     *
     * @mbggenerated 2017-05-31
     */
    HouseOwner selectByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2017-05-31
     */
    int updateByPrimaryKeySelective(HouseOwner record);

    /**
     *
     * @mbggenerated 2017-05-31
     */
    int updateByPrimaryKey(HouseOwner record);
}