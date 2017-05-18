package cn.dao;

import cn.entity.UrbanDistrict;

public interface UrbanDistrictMapper {
    /**
     *
     * @mbggenerated 2017-05-18
     */
    int deleteByPrimaryKey(Integer idurbanDistrictId);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int insert(UrbanDistrict record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int insertSelective(UrbanDistrict record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    UrbanDistrict selectByPrimaryKey(Integer idurbanDistrictId);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int updateByPrimaryKeySelective(UrbanDistrict record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int updateByPrimaryKey(UrbanDistrict record);
}