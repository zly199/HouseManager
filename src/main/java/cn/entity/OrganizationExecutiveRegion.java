package cn.entity;

public class OrganizationExecutiveRegion extends OrganizationExecutiveRegionKey {
    /**
     * 商圈或城区id
     */
    private Integer tradingAreaId;

    /**
     * 查看房源权限
     */
    private Boolean houseVisiable;

    /**
     * 客源查看
     */
    private Boolean customVisiable;

    /**
     * 商圈或城区id
     * @return trading_area_id 商圈或城区id
     */
    public Integer getTradingAreaId() {
        return tradingAreaId;
    }

    /**
     * 商圈或城区id
     * @param tradingAreaId 商圈或城区id
     */
    public void setTradingAreaId(Integer tradingAreaId) {
        this.tradingAreaId = tradingAreaId;
    }

    /**
     * 查看房源权限
     * @return house_visiable 查看房源权限
     */
    public Boolean getHouseVisiable() {
        return houseVisiable;
    }

    /**
     * 查看房源权限
     * @param houseVisiable 查看房源权限
     */
    public void setHouseVisiable(Boolean houseVisiable) {
        this.houseVisiable = houseVisiable;
    }

    /**
     * 客源查看
     * @return custom_visiable 客源查看
     */
    public Boolean getCustomVisiable() {
        return customVisiable;
    }

    /**
     * 客源查看
     * @param customVisiable 客源查看
     */
    public void setCustomVisiable(Boolean customVisiable) {
        this.customVisiable = customVisiable;
    }
}