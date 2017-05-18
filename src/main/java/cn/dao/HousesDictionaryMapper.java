package cn.dao;

import cn.entity.HousesDictionary;

public interface HousesDictionaryMapper {
    /**
     *
     * @mbggenerated 2017-05-18
     */
    int deleteByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int insert(HousesDictionary record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int insertSelective(HousesDictionary record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    HousesDictionary selectByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int updateByPrimaryKeySelective(HousesDictionary record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int updateByPrimaryKey(HousesDictionary record);
}