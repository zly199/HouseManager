package cn.dao;

import cn.entity.UrbanDistrict;

public interface UrbanDistrictMapper {
    /**
     *
     * @mbggenerated 2017-05-05
     */
    int deleteByPrimaryKey(Integer idurbanDistrictId);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int insert(UrbanDistrict record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int insertSelective(UrbanDistrict record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    UrbanDistrict selectByPrimaryKey(Integer idurbanDistrictId);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int updateByPrimaryKeySelective(UrbanDistrict record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int updateByPrimaryKey(UrbanDistrict record);
}