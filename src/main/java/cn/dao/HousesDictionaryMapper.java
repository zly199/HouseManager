package cn.dao;

import cn.entity.HousesDictionary;

public interface HousesDictionaryMapper {
    /**
     *
     * @mbggenerated 2017-05-05
     */
    int deleteByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int insert(HousesDictionary record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int insertSelective(HousesDictionary record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    HousesDictionary selectByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int updateByPrimaryKeySelective(HousesDictionary record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int updateByPrimaryKey(HousesDictionary record);
}