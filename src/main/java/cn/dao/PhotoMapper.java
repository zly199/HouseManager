package cn.dao;

import cn.entity.Photo;

public interface PhotoMapper {
    /**
     *
     * @mbggenerated 2017-06-08
     */
    int deleteByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2017-06-08
     */
    int insert(Photo record);

    /**
     *
     * @mbggenerated 2017-06-08
     */
    int insertSelective(Photo record);

    /**
     *
     * @mbggenerated 2017-06-08
     */
    Photo selectByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2017-06-08
     */
    int updateByPrimaryKeySelective(Photo record);

    /**
     *
     * @mbggenerated 2017-06-08
     */
    int updateByPrimaryKey(Photo record);
}