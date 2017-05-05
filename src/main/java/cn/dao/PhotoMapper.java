package cn.dao;

import cn.entity.Photo;

public interface PhotoMapper {
    /**
     *
     * @mbggenerated 2017-05-05
     */
    int deleteByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int insert(Photo record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int insertSelective(Photo record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    Photo selectByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int updateByPrimaryKeySelective(Photo record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int updateByPrimaryKey(Photo record);
}