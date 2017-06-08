package cn.service;

import cn.dto.FollowUpHouseAvailable;
import cn.dto.HouseAddActionList;
import cn.dto.HouseMessageAvailable;
import cn.dto.KeyForm;
import cn.entity.FollowupHouse;
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

    //根据权限返回新增房源的公盘私盘列表，以及部门人员信息下拉列表
    HouseAddActionList houseAddPermission();

    /**
     * 跟进新增
     * @param houseId
     * @param followupHouse
     * @return
     */
    int houseFollowUpAdd(String houseId, FollowupHouse followupHouse);

    /**
     * 跟进删除
     * @param followUpId
     * @return
     */
    int houseFollowUpDel(Long followUpId);
    /**
     * 增加钥匙
     * @param houseId
     * @param keyForm
     * @return
     */
    int addHouseKey(KeyForm keyForm, String houseId);
}
