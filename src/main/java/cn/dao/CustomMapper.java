package cn.dao;

import cn.entity.Custom;

public interface CustomMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table custom
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(Integer customId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table custom
     *
     * @mbggenerated
     */
    int insert(Custom record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table custom
     *
     * @mbggenerated
     */
    int insertSelective(Custom record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table custom
     *
     * @mbggenerated
     */
    Custom selectByPrimaryKey(Integer customId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table custom
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(Custom record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table custom
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(Custom record);
}