package cn.entity;

public class OrganizationExecutivePower extends OrganizationExecutivePowerKey {
    /**
     * 房源查看
     */
    private Boolean houseVisiable;

    /**
     * 客源查看
     */
    private Boolean customVisiable;

    /**
     * 公盘看业主
     */
    private Boolean publicDiskHostVisiable;

    /**
     * 
     */
    private Boolean privateDiskHostVisiable;

    /**
     * 房源看跟进
     */
    private Boolean houseFollowupVisibale;

    /**
     * 房源查看
     * @return house_visiable 房源查看
     */
    public Boolean getHouseVisiable() {
        return houseVisiable;
    }

    /**
     * 房源查看
     * @param houseVisiable 房源查看
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

    /**
     * 公盘看业主
     * @return public_disk_host_visiable 公盘看业主
     */
    public Boolean getPublicDiskHostVisiable() {
        return publicDiskHostVisiable;
    }

    /**
     * 公盘看业主
     * @param publicDiskHostVisiable 公盘看业主
     */
    public void setPublicDiskHostVisiable(Boolean publicDiskHostVisiable) {
        this.publicDiskHostVisiable = publicDiskHostVisiable;
    }

    /**
     * 
     * @return private_disk_host_visiable 
     */
    public Boolean getPrivateDiskHostVisiable() {
        return privateDiskHostVisiable;
    }

    /**
     * 
     * @param privateDiskHostVisiable 
     */
    public void setPrivateDiskHostVisiable(Boolean privateDiskHostVisiable) {
        this.privateDiskHostVisiable = privateDiskHostVisiable;
    }

    /**
     * 房源看跟进
     * @return house_followup_visibale 房源看跟进
     */
    public Boolean getHouseFollowupVisibale() {
        return houseFollowupVisibale;
    }

    /**
     * 房源看跟进
     * @param houseFollowupVisibale 房源看跟进
     */
    public void setHouseFollowupVisibale(Boolean houseFollowupVisibale) {
        this.houseFollowupVisibale = houseFollowupVisibale;
    }
}