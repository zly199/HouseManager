package cn.service;

import cn.dto.HouseList;
import cn.dto.PositionForm;
import cn.entity.Position;

import java.util.List;

/**
 * mapService
 */
public interface MapService {
    /**
     * 根据房源坐标操作旁边的坐标列表
     * @param positionForm
     * @return
     */
    List<PositionForm> findNearby(PositionForm positionForm);
    /**
     * 通过坐标查询房源信息
     * @param positionForm
     * @return
     */
    HouseList getHouseMessageByPosition(PositionForm positionForm);

    /**
     * 根据房源id获取坐标信息
     * @param houseId
     * @return
     */
    Position findPositionByHouseId(String houseId);
}
