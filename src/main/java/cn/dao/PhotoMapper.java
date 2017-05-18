package cn.dao;

import cn.entity.Photo;

public interface PhotoMapper {
    /**
     *
     * @mbggenerated 2017-05-18
     */
    int deleteByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int insert(Photo record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int insertSelective(Photo record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    Photo selectByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int updateByPrimaryKeySelective(Photo record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int updateByPrimaryKey(Photo record);
}