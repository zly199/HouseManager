package cn.dao;

import cn.entity.Host;

public interface HostMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table host
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(Integer hostId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table host
     *
     * @mbggenerated
     */
    int insert(Host record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table host
     *
     * @mbggenerated
     */
    int insertSelective(Host record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table host
     *
     * @mbggenerated
     */
    Host selectByPrimaryKey(Integer hostId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table host
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(Host record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table host
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(Host record);
}