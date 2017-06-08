package cn.dao;

import cn.entity.Position;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PositionMapper {
    /**
     *
     * @mbggenerated 2017-06-05
     */
    int deleteByPrimaryKey(String posizitionid);

    /**
     *
     * @mbggenerated 2017-06-05
     */
    int insert(Position record);

    /**
     *
     * @mbggenerated 2017-06-05
     */
    int insertSelective(Position record);

    /**
     *
     * @mbggenerated 2017-06-05
     */
    Position selectByPrimaryKey(String posizitionid);

    /**
     *
     * @mbggenerated 2017-06-05
     */
    int updateByPrimaryKeySelective(Position record);

    /**
     *
     * @mbggenerated 2017-06-05
     */
    int updateByPrimaryKey(Position record);

    /**
     * 搜索数据库所有坐标
     * @return
     */
    List<Position> selectAll();

    /**
     * 通过坐标查询房源信息
     * @param x,y
     * @return
     */
    Position selectByPositionXAndPositionY(@Param("x") String x, @Param("y") String y);
}