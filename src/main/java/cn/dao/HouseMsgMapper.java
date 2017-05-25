package cn.dao;

import cn.entity.Housemsg;

import java.util.Collection;
import java.util.List;
import java.util.Set;

public interface HousemsgMapper {
    /**
     *
     * @mbggenerated 2017-05-19
     */
    int deleteByPrimaryKey(String id);

    /**
     *
     * @mbggenerated 2017-05-19
     */
    int insert(Housemsg record);

    /**
     *
     * @mbggenerated 2017-05-19
     */
    int insertSelective(Housemsg record);

    /**
     *
     * @mbggenerated 2017-05-19
     */
    Housemsg selectByPrimaryKey(String id);

    /**
     *
     * @mbggenerated 2017-05-19
     */
    int updateByPrimaryKeySelective(Housemsg record);

    /**
     *
     * @mbggenerated 2017-05-19
     */
    int updateByPrimaryKey(Housemsg record);

    List<Housemsg> selectAll();

    /**
     * 根据属性查找房产 公盘，私盘，特盘，封盘
     * @param attributeSet
     * @return
     */
    List<Housemsg> selectByAttribute(List<String> attributeSet);
    /**
     * 根据房源的前缀查询房源(记得加%)
     * @param primaryNumberPre
     * @return
     */
    List<Housemsg> selectByOrganizationPre(String primaryNumberPre);
}