package cn.dao;

import cn.entity.FollowupHouse;

import java.util.List;

public interface FollowupHouseMapper {
    /**
     *
     * @mbggenerated 2017-05-20
     */
    int deleteByPrimaryKey(Long id);

    /**
     *
     * @mbggenerated 2017-05-20
     */
    int insert(FollowupHouse record);

    /**
     *
     * @mbggenerated 2017-05-20
     */
    int insertSelective(FollowupHouse record);

    /**
     *
     * @mbggenerated 2017-05-20
     */
    FollowupHouse selectByPrimaryKey(Long id);

    /**
     *
     * @mbggenerated 2017-05-20
     */
    int updateByPrimaryKeySelective(FollowupHouse record);

    /**
     *
     * @mbggenerated 2017-05-20
     */
    int updateByPrimaryKey(FollowupHouse record);

    /**
     * 根据houseId 查询所有根据记录
     * @param HouseId
     * @return
     */
    List<FollowupHouse> selectByHouseId(String HouseId);
}