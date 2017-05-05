package cn.entity;

public class HousePowerSecond {
    /**
     * 
     */
    private Long housePowerSecondId;

    /**
     * 房源新增（跨部，本部等）
     */
    private String houseAdd;

    /**
     * 房源删除（本部,跨部等）
     */
    private String houseDelete;

    /**
     * 公共房源跟进可看
     */
    private Boolean publicHouseFollowup;

    /**
     * 归属转移
     */
    private Boolean ownershipTransfer;

    /**
     * 看业主电话（次/天）（=999密码显示电话,<999屏蔽电话并且限制）
     */
    private Integer hostPhoneView;

    /**
     * 用途查看（0住宅-1商铺-2商住-3写字楼-4铺厂-5写厂-6车位-7地皮-8仓库-9厂房）
     */
    private String purposView;

    /**
     * 委托日期修改（跨部，本部等）
     */
    private String consignmentDate;

    /**
     * 房源状态修改（0有效到预定-1有效到已售/我售-2有效到已租/我租-3有效到其他状态-4非有效到有效）
     */
    private String houseState;

    /**
     * [预定]看业主电话
     */
    private Boolean bookHostPhoneView;

    /**
     * 禁止看业主设置（跨部，等）
     */
    private Boolean banHostView;

    /**
     * 看业主不写申请
     */
    private Boolean hostViewWithoutApply;

    /**
     * 看业主不必写跟进
     */
    private Boolean houseViewWithoutFollowup;

    /**
     * （0出售-1出租-2租售）看业主(次/天) 
     */
    private String houseHostView;

    /**
     * 跟进新增（本人）
     */
    private Boolean followupAddSelf;

    /**
     * 跟进修改（本人）
     */
    private Boolean followupModifySelf;

    /**
     * 跟进修改(本部，跨部等)
     */
    private String followupDeleteSelf;

    /**
     * 房源激活（本部，跨部等）
     */
    private String houseActive;

    /**
     * （优质房-聚焦房-速销房）设置
     */
    private String houseTag;

    /**
     * 房源审核（跨部，等）
     */
    private String houseExamine;

    /**
     * 房源导出
     */
    private Boolean houseOut;

    /**
     * 钥匙管理（0新增-1修改-2删除-3借出-4归还-5收回-6查看密码）
     */
    private String keyManager;

    /**
     * 
     * @return house_power_second_id 
     */
    public Long getHousePowerSecondId() {
        return housePowerSecondId;
    }

    /**
     * 
     * @param housePowerSecondId 
     */
    public void setHousePowerSecondId(Long housePowerSecondId) {
        this.housePowerSecondId = housePowerSecondId;
    }

    /**
     * 房源新增（跨部，本部等）
     * @return house_add 房源新增（跨部，本部等）
     */
    public String getHouseAdd() {
        return houseAdd;
    }

    /**
     * 房源新增（跨部，本部等）
     * @param houseAdd 房源新增（跨部，本部等）
     */
    public void setHouseAdd(String houseAdd) {
        this.houseAdd = houseAdd == null ? null : houseAdd.trim();
    }

    /**
     * 房源删除（本部,跨部等）
     * @return house_delete 房源删除（本部,跨部等）
     */
    public String getHouseDelete() {
        return houseDelete;
    }

    /**
     * 房源删除（本部,跨部等）
     * @param houseDelete 房源删除（本部,跨部等）
     */
    public void setHouseDelete(String houseDelete) {
        this.houseDelete = houseDelete == null ? null : houseDelete.trim();
    }

    /**
     * 公共房源跟进可看
     * @return public_house_followup 公共房源跟进可看
     */
    public Boolean getPublicHouseFollowup() {
        return publicHouseFollowup;
    }

    /**
     * 公共房源跟进可看
     * @param publicHouseFollowup 公共房源跟进可看
     */
    public void setPublicHouseFollowup(Boolean publicHouseFollowup) {
        this.publicHouseFollowup = publicHouseFollowup;
    }

    /**
     * 归属转移
     * @return ownership_transfer 归属转移
     */
    public Boolean getOwnershipTransfer() {
        return ownershipTransfer;
    }

    /**
     * 归属转移
     * @param ownershipTransfer 归属转移
     */
    public void setOwnershipTransfer(Boolean ownershipTransfer) {
        this.ownershipTransfer = ownershipTransfer;
    }

    /**
     * 看业主电话（次/天）（=999密码显示电话,<999屏蔽电话并且限制）
     * @return host_phone_view 看业主电话（次/天）（=999密码显示电话,<999屏蔽电话并且限制）
     */
    public Integer getHostPhoneView() {
        return hostPhoneView;
    }

    /**
     * 看业主电话（次/天）（=999密码显示电话,<999屏蔽电话并且限制）
     * @param hostPhoneView 看业主电话（次/天）（=999密码显示电话,<999屏蔽电话并且限制）
     */
    public void setHostPhoneView(Integer hostPhoneView) {
        this.hostPhoneView = hostPhoneView;
    }

    /**
     * 用途查看（0住宅-1商铺-2商住-3写字楼-4铺厂-5写厂-6车位-7地皮-8仓库-9厂房）
     * @return purpos_view 用途查看（0住宅-1商铺-2商住-3写字楼-4铺厂-5写厂-6车位-7地皮-8仓库-9厂房）
     */
    public String getPurposView() {
        return purposView;
    }

    /**
     * 用途查看（0住宅-1商铺-2商住-3写字楼-4铺厂-5写厂-6车位-7地皮-8仓库-9厂房）
     * @param purposView 用途查看（0住宅-1商铺-2商住-3写字楼-4铺厂-5写厂-6车位-7地皮-8仓库-9厂房）
     */
    public void setPurposView(String purposView) {
        this.purposView = purposView == null ? null : purposView.trim();
    }

    /**
     * 委托日期修改（跨部，本部等）
     * @return consignment_date 委托日期修改（跨部，本部等）
     */
    public String getConsignmentDate() {
        return consignmentDate;
    }

    /**
     * 委托日期修改（跨部，本部等）
     * @param consignmentDate 委托日期修改（跨部，本部等）
     */
    public void setConsignmentDate(String consignmentDate) {
        this.consignmentDate = consignmentDate == null ? null : consignmentDate.trim();
    }

    /**
     * 房源状态修改（0有效到预定-1有效到已售/我售-2有效到已租/我租-3有效到其他状态-4非有效到有效）
     * @return house_state 房源状态修改（0有效到预定-1有效到已售/我售-2有效到已租/我租-3有效到其他状态-4非有效到有效）
     */
    public String getHouseState() {
        return houseState;
    }

    /**
     * 房源状态修改（0有效到预定-1有效到已售/我售-2有效到已租/我租-3有效到其他状态-4非有效到有效）
     * @param houseState 房源状态修改（0有效到预定-1有效到已售/我售-2有效到已租/我租-3有效到其他状态-4非有效到有效）
     */
    public void setHouseState(String houseState) {
        this.houseState = houseState == null ? null : houseState.trim();
    }

    /**
     * [预定]看业主电话
     * @return book_host_phone_view [预定]看业主电话
     */
    public Boolean getBookHostPhoneView() {
        return bookHostPhoneView;
    }

    /**
     * [预定]看业主电话
     * @param bookHostPhoneView [预定]看业主电话
     */
    public void setBookHostPhoneView(Boolean bookHostPhoneView) {
        this.bookHostPhoneView = bookHostPhoneView;
    }

    /**
     * 禁止看业主设置（跨部，等）
     * @return ban_host_view 禁止看业主设置（跨部，等）
     */
    public Boolean getBanHostView() {
        return banHostView;
    }

    /**
     * 禁止看业主设置（跨部，等）
     * @param banHostView 禁止看业主设置（跨部，等）
     */
    public void setBanHostView(Boolean banHostView) {
        this.banHostView = banHostView;
    }

    /**
     * 看业主不写申请
     * @return host_view_without_apply 看业主不写申请
     */
    public Boolean getHostViewWithoutApply() {
        return hostViewWithoutApply;
    }

    /**
     * 看业主不写申请
     * @param hostViewWithoutApply 看业主不写申请
     */
    public void setHostViewWithoutApply(Boolean hostViewWithoutApply) {
        this.hostViewWithoutApply = hostViewWithoutApply;
    }

    /**
     * 看业主不必写跟进
     * @return house_view_without_followup 看业主不必写跟进
     */
    public Boolean getHouseViewWithoutFollowup() {
        return houseViewWithoutFollowup;
    }

    /**
     * 看业主不必写跟进
     * @param houseViewWithoutFollowup 看业主不必写跟进
     */
    public void setHouseViewWithoutFollowup(Boolean houseViewWithoutFollowup) {
        this.houseViewWithoutFollowup = houseViewWithoutFollowup;
    }

    /**
     * （0出售-1出租-2租售）看业主(次/天) 
     * @return house_host_view （0出售-1出租-2租售）看业主(次/天) 
     */
    public String getHouseHostView() {
        return houseHostView;
    }

    /**
     * （0出售-1出租-2租售）看业主(次/天) 
     * @param houseHostView （0出售-1出租-2租售）看业主(次/天) 
     */
    public void setHouseHostView(String houseHostView) {
        this.houseHostView = houseHostView == null ? null : houseHostView.trim();
    }

    /**
     * 跟进新增（本人）
     * @return followup_add_self 跟进新增（本人）
     */
    public Boolean getFollowupAddSelf() {
        return followupAddSelf;
    }

    /**
     * 跟进新增（本人）
     * @param followupAddSelf 跟进新增（本人）
     */
    public void setFollowupAddSelf(Boolean followupAddSelf) {
        this.followupAddSelf = followupAddSelf;
    }

    /**
     * 跟进修改（本人）
     * @return followup_modify_self 跟进修改（本人）
     */
    public Boolean getFollowupModifySelf() {
        return followupModifySelf;
    }

    /**
     * 跟进修改（本人）
     * @param followupModifySelf 跟进修改（本人）
     */
    public void setFollowupModifySelf(Boolean followupModifySelf) {
        this.followupModifySelf = followupModifySelf;
    }

    /**
     * 跟进修改(本部，跨部等)
     * @return followup_delete_self 跟进修改(本部，跨部等)
     */
    public String getFollowupDeleteSelf() {
        return followupDeleteSelf;
    }

    /**
     * 跟进修改(本部，跨部等)
     * @param followupDeleteSelf 跟进修改(本部，跨部等)
     */
    public void setFollowupDeleteSelf(String followupDeleteSelf) {
        this.followupDeleteSelf = followupDeleteSelf == null ? null : followupDeleteSelf.trim();
    }

    /**
     * 房源激活（本部，跨部等）
     * @return house_active 房源激活（本部，跨部等）
     */
    public String getHouseActive() {
        return houseActive;
    }

    /**
     * 房源激活（本部，跨部等）
     * @param houseActive 房源激活（本部，跨部等）
     */
    public void setHouseActive(String houseActive) {
        this.houseActive = houseActive == null ? null : houseActive.trim();
    }

    /**
     * （优质房-聚焦房-速销房）设置
     * @return house_tag （优质房-聚焦房-速销房）设置
     */
    public String getHouseTag() {
        return houseTag;
    }

    /**
     * （优质房-聚焦房-速销房）设置
     * @param houseTag （优质房-聚焦房-速销房）设置
     */
    public void setHouseTag(String houseTag) {
        this.houseTag = houseTag == null ? null : houseTag.trim();
    }

    /**
     * 房源审核（跨部，等）
     * @return house_examine 房源审核（跨部，等）
     */
    public String getHouseExamine() {
        return houseExamine;
    }

    /**
     * 房源审核（跨部，等）
     * @param houseExamine 房源审核（跨部，等）
     */
    public void setHouseExamine(String houseExamine) {
        this.houseExamine = houseExamine == null ? null : houseExamine.trim();
    }

    /**
     * 房源导出
     * @return house_out 房源导出
     */
    public Boolean getHouseOut() {
        return houseOut;
    }

    /**
     * 房源导出
     * @param houseOut 房源导出
     */
    public void setHouseOut(Boolean houseOut) {
        this.houseOut = houseOut;
    }

    /**
     * 钥匙管理（0新增-1修改-2删除-3借出-4归还-5收回-6查看密码）
     * @return key_manager 钥匙管理（0新增-1修改-2删除-3借出-4归还-5收回-6查看密码）
     */
    public String getKeyManager() {
        return keyManager;
    }

    /**
     * 钥匙管理（0新增-1修改-2删除-3借出-4归还-5收回-6查看密码）
     * @param keyManager 钥匙管理（0新增-1修改-2删除-3借出-4归还-5收回-6查看密码）
     */
    public void setKeyManager(String keyManager) {
        this.keyManager = keyManager == null ? null : keyManager.trim();
    }
}