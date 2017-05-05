package cn.entity;

public class HousePowerFirst {
    /**
     * 
     */
    private Long housePowerFirstId;

    /**
     * 盘种类型（公盘私盘）
     */
    private String diskType;

    /**
     * 跟进查看（本部跨部等）
     */
    private String listOrDetilView;

    /**
     * 跟进查看（本部，跨部等）
     */
    private String followUpView;

    /**
     * 列表字段可看（本部，跨部）
     */
    private String listItemView;

    /**
     * 列表字段的查看详细规则（楼栋位置-房号-楼层）
     */
    private String listItemDetail;

    /**
     * 详情字段可看（本部，跨部等）
     */
    private String detailItemView;

    /**
     * 详情字段查看详情（楼栋位置-房号-楼层-楼价）
     */
    private String detailItemDetail;

    /**
     * 
     */
    private String housePowerFirstcol;

    /**
     * 业主查看（本部，跨部等）
     */
    private String hostView;

    /**
     * 私/特/封盘设置
     */
    private String diskSet;

    /**
     * 
     * @return house_power_first_id 
     */
    public Long getHousePowerFirstId() {
        return housePowerFirstId;
    }

    /**
     * 
     * @param housePowerFirstId 
     */
    public void setHousePowerFirstId(Long housePowerFirstId) {
        this.housePowerFirstId = housePowerFirstId;
    }

    /**
     * 盘种类型（公盘私盘）
     * @return disk_type 盘种类型（公盘私盘）
     */
    public String getDiskType() {
        return diskType;
    }

    /**
     * 盘种类型（公盘私盘）
     * @param diskType 盘种类型（公盘私盘）
     */
    public void setDiskType(String diskType) {
        this.diskType = diskType == null ? null : diskType.trim();
    }

    /**
     * 跟进查看（本部跨部等）
     * @return list_or_detil_view 跟进查看（本部跨部等）
     */
    public String getListOrDetilView() {
        return listOrDetilView;
    }

    /**
     * 跟进查看（本部跨部等）
     * @param listOrDetilView 跟进查看（本部跨部等）
     */
    public void setListOrDetilView(String listOrDetilView) {
        this.listOrDetilView = listOrDetilView == null ? null : listOrDetilView.trim();
    }

    /**
     * 跟进查看（本部，跨部等）
     * @return follow_up_view 跟进查看（本部，跨部等）
     */
    public String getFollowUpView() {
        return followUpView;
    }

    /**
     * 跟进查看（本部，跨部等）
     * @param followUpView 跟进查看（本部，跨部等）
     */
    public void setFollowUpView(String followUpView) {
        this.followUpView = followUpView == null ? null : followUpView.trim();
    }

    /**
     * 列表字段可看（本部，跨部）
     * @return list_item_view 列表字段可看（本部，跨部）
     */
    public String getListItemView() {
        return listItemView;
    }

    /**
     * 列表字段可看（本部，跨部）
     * @param listItemView 列表字段可看（本部，跨部）
     */
    public void setListItemView(String listItemView) {
        this.listItemView = listItemView == null ? null : listItemView.trim();
    }

    /**
     * 列表字段的查看详细规则（楼栋位置-房号-楼层）
     * @return list_item_detail 列表字段的查看详细规则（楼栋位置-房号-楼层）
     */
    public String getListItemDetail() {
        return listItemDetail;
    }

    /**
     * 列表字段的查看详细规则（楼栋位置-房号-楼层）
     * @param listItemDetail 列表字段的查看详细规则（楼栋位置-房号-楼层）
     */
    public void setListItemDetail(String listItemDetail) {
        this.listItemDetail = listItemDetail == null ? null : listItemDetail.trim();
    }

    /**
     * 详情字段可看（本部，跨部等）
     * @return detail_item_view 详情字段可看（本部，跨部等）
     */
    public String getDetailItemView() {
        return detailItemView;
    }

    /**
     * 详情字段可看（本部，跨部等）
     * @param detailItemView 详情字段可看（本部，跨部等）
     */
    public void setDetailItemView(String detailItemView) {
        this.detailItemView = detailItemView == null ? null : detailItemView.trim();
    }

    /**
     * 详情字段查看详情（楼栋位置-房号-楼层-楼价）
     * @return detail_item_detail 详情字段查看详情（楼栋位置-房号-楼层-楼价）
     */
    public String getDetailItemDetail() {
        return detailItemDetail;
    }

    /**
     * 详情字段查看详情（楼栋位置-房号-楼层-楼价）
     * @param detailItemDetail 详情字段查看详情（楼栋位置-房号-楼层-楼价）
     */
    public void setDetailItemDetail(String detailItemDetail) {
        this.detailItemDetail = detailItemDetail == null ? null : detailItemDetail.trim();
    }

    /**
     * 
     * @return house_power_firstcol 
     */
    public String getHousePowerFirstcol() {
        return housePowerFirstcol;
    }

    /**
     * 
     * @param housePowerFirstcol 
     */
    public void setHousePowerFirstcol(String housePowerFirstcol) {
        this.housePowerFirstcol = housePowerFirstcol == null ? null : housePowerFirstcol.trim();
    }

    /**
     * 业主查看（本部，跨部等）
     * @return host_view 业主查看（本部，跨部等）
     */
    public String getHostView() {
        return hostView;
    }

    /**
     * 业主查看（本部，跨部等）
     * @param hostView 业主查看（本部，跨部等）
     */
    public void setHostView(String hostView) {
        this.hostView = hostView == null ? null : hostView.trim();
    }

    /**
     * 私/特/封盘设置
     * @return disk_set 私/特/封盘设置
     */
    public String getDiskSet() {
        return diskSet;
    }

    /**
     * 私/特/封盘设置
     * @param diskSet 私/特/封盘设置
     */
    public void setDiskSet(String diskSet) {
        this.diskSet = diskSet == null ? null : diskSet.trim();
    }
}