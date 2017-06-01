package cn.service;

import cn.dto.FollowUpHouseAvailable;
import cn.dto.HouseList;
import cn.dto.HouseMessageAvailable;
import cn.entity.FollowupHouse;
import cn.entity.HouseOwner;
import cn.entity.Housemsg;

import java.util.List;

/**
 * Created by ZLY on 2017-05-19.
 */
public interface HouseService {
    /**
     * 根据当前登录用户权限查询房源信息
     * @return
     */
    List<HouseList> findHouseByPermission();

    /**
     * @return
     */
    int add();

    /**
     * 查找全部房源到房源列表
     * @return
     */
    List<HouseList> findAll();


    HouseMessageAvailable findById(String houseId);

    /**
     * 通过houseId查找所有跟进记录
     * @param houseId
     * @return
     */
    List<FollowupHouse> findFollowupByHouseId(String houseId);

    /**
     * 跟进字段的处理 id-》名称
     * @param followupHouses
     * @return
     */
    List<FollowUpHouseAvailable> followupHouseToFollowUpHouseAvailable(List<FollowupHouse> followupHouses);

    /**
     * 根据房号查询业主
     * @param houseId
     * @return
     */
    HouseOwner findHouseOwner(String houseId);
}
