package cn.dao;

import cn.entity.HouseMsg;

public interface HouseMsgMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table house_msg
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(Integer houseId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table house_msg
     *
     * @mbggenerated
     */
    int insert(HouseMsg record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table house_msg
     *
     * @mbggenerated
     */
    int insertSelective(HouseMsg record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table house_msg
     *
     * @mbggenerated
     */
    HouseMsg selectByPrimaryKey(Integer houseId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table house_msg
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(HouseMsg record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table house_msg
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(HouseMsg record);
}