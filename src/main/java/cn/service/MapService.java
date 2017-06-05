package cn.service;

import cn.dto.PositionForm;

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
}
