package cn.dao;

import cn.entity.Takelook;

import java.util.List;

public interface TakelookMapper {
    /**
     *
     * @mbggenerated 2017-05-18
     */
    int deleteByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int insert(Takelook record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int insertSelective(Takelook record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    Takelook selectByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int updateByPrimaryKeySelective(Takelook record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int updateByPrimaryKey(Takelook record);
    /**
     * 根据客源编号获取带看信息
     * @param userId
     * @return
     */
    List<Takelook> selectByUserid(Long userId);
}