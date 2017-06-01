package cn.service;

import cn.dto.FollowUpHouseAvailable;
import cn.dto.HouseMessageAvailable;
import cn.entity.HouseOwner;

import java.util.List;

public interface PermisionService {
    /**
     * 通过id修改权限
     * @param userId
     * @param permissionList
     * @return 修改的行数
     */
    int ediPermissionsById(Long userId, String[] permissionList);

    /**
     * 跟进权限查看
     * @param followUpHouseAvailables,houseId
     * @return
     */
    List<FollowUpHouseAvailable> folloUpViewPermission(List<FollowUpHouseAvailable> followUpHouseAvailables,String houseId);
    /**
     * 业主权限查看判断
     * @param houseOwner,houseId
     * @return
     */
    HouseOwner houseOwnerViewPermission(HouseOwner houseOwner, String houseId);

    /**
     * 房源详情查看权限判断
     * @param houseMessageAvailable
     * @param houseId
     * @return
     */
    HouseMessageAvailable houseDetailViewPermission(HouseMessageAvailable houseMessageAvailable,String houseId);
}
