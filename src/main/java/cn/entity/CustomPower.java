package cn.entity;

public class CustomPower {
    /**
     * 
     */
    private Long customPowerId;

    /**
     * 公客查看（跨部等）
     */
    private Byte publicCustomVisiable;

    /**
     * 私客查看（本部）
     */
    private Byte privateCustomVisiable;

    /**
     * 私客看客户（本部等）
     */
    private Byte privateHostVisiable;

    /**
     * 带看房源查看（跨部等）
     */
    private Byte followupHouseVisibale;

    /**
     * 客源新增
     */
    private Byte costomAdd;

    /**
     * 客源全部修改（跨部等）
     */
    private Byte customAllModify;

    /**
     * 客源部分修改（跨部等）
     */
    private Byte customPartModify;

    /**
     * 客源部分修改（0来源-1等级-2归属人1-3归属人2-4归属人3-5委托方式-6交易）
     */
    private String customPartDetail;

    /**
     * 交易可查看（求购-求租-租购）
     */
    private String customTransactionVisiable;

    /**
     * 客源删除（跨部等）
     */
    private Byte customDelete;

    /**
     * 私客设置（跨部等）
     */
    private Byte privateSet;

    /**
     * 
     */
    private Boolean ownershipTransfer;

    /**
     * 客源审核（跨部等）
     */
    private Byte customExamine;

    /**
     * 委托日期修改（跨部等）
     */
    private Byte entrustDateModify;

    /**
     * 客户状态修改（0有效到预定-1有效到已购/我购-2有效到已租-3有效到其他状态-4非有效到有效）
     */
    private String customState;

    /**
     * 预定看客户电话
     */
    private Boolean bookCustomPhoneVisiable;

    /**
     * 看客户不必写跟进
     */
    private Boolean customViewWithoutFollowup;

    /**
     * 看客户（次/天）>=900 不限次+记日志 =999 不限次+不记日志
     */
    private Integer customViewTime;

    /**
     * 委托可保存（0A委托方式-1B委托方式-2C委托方式-3X委托方式）
     */
    private String entrustSave;

    /**
     * 公客跟进查看（跨部等）
     */
    private Byte publicCustomFollowupVisiable;

    /**
     * 私客跟进查看（跨部等）
     */
    private Byte privateCustomFollowupVisiable;

    /**
     * 跟进新增（本人）
     */
    private Boolean customFollowupAdd;

    /**
     * 客源跟进删除（本人）
     */
    private Boolean customFollowupModify;

    /**
     * 客源跟进删除（跨部等）
     */
    private Boolean customFollowupDelete;

    /**
     * 公共账户修改(归属)
     */
    private Boolean publicUserModifyBelonging;

    /**
     * 看客户电话（次/天）（<999 屏蔽电话且限制看的次数，=999 明码显示电话）
     */
    private Integer customPhoneViewTime;

    /**
     * 
     * @return custom_power_id 
     */
    public Long getCustomPowerId() {
        return customPowerId;
    }

    /**
     * 
     * @param customPowerId 
     */
    public void setCustomPowerId(Long customPowerId) {
        this.customPowerId = customPowerId;
    }

    /**
     * 公客查看（跨部等）
     * @return public_custom_visiable 公客查看（跨部等）
     */
    public Byte getPublicCustomVisiable() {
        return publicCustomVisiable;
    }

    /**
     * 公客查看（跨部等）
     * @param publicCustomVisiable 公客查看（跨部等）
     */
    public void setPublicCustomVisiable(Byte publicCustomVisiable) {
        this.publicCustomVisiable = publicCustomVisiable;
    }

    /**
     * 私客查看（本部）
     * @return private_custom_visiable 私客查看（本部）
     */
    public Byte getPrivateCustomVisiable() {
        return privateCustomVisiable;
    }

    /**
     * 私客查看（本部）
     * @param privateCustomVisiable 私客查看（本部）
     */
    public void setPrivateCustomVisiable(Byte privateCustomVisiable) {
        this.privateCustomVisiable = privateCustomVisiable;
    }

    /**
     * 私客看客户（本部等）
     * @return private_host_visiable 私客看客户（本部等）
     */
    public Byte getPrivateHostVisiable() {
        return privateHostVisiable;
    }

    /**
     * 私客看客户（本部等）
     * @param privateHostVisiable 私客看客户（本部等）
     */
    public void setPrivateHostVisiable(Byte privateHostVisiable) {
        this.privateHostVisiable = privateHostVisiable;
    }

    /**
     * 带看房源查看（跨部等）
     * @return followup_house_visibale 带看房源查看（跨部等）
     */
    public Byte getFollowupHouseVisibale() {
        return followupHouseVisibale;
    }

    /**
     * 带看房源查看（跨部等）
     * @param followupHouseVisibale 带看房源查看（跨部等）
     */
    public void setFollowupHouseVisibale(Byte followupHouseVisibale) {
        this.followupHouseVisibale = followupHouseVisibale;
    }

    /**
     * 客源新增
     * @return costom_add 客源新增
     */
    public Byte getCostomAdd() {
        return costomAdd;
    }

    /**
     * 客源新增
     * @param costomAdd 客源新增
     */
    public void setCostomAdd(Byte costomAdd) {
        this.costomAdd = costomAdd;
    }

    /**
     * 客源全部修改（跨部等）
     * @return custom_all_modify 客源全部修改（跨部等）
     */
    public Byte getCustomAllModify() {
        return customAllModify;
    }

    /**
     * 客源全部修改（跨部等）
     * @param customAllModify 客源全部修改（跨部等）
     */
    public void setCustomAllModify(Byte customAllModify) {
        this.customAllModify = customAllModify;
    }

    /**
     * 客源部分修改（跨部等）
     * @return custom_part_modify 客源部分修改（跨部等）
     */
    public Byte getCustomPartModify() {
        return customPartModify;
    }

    /**
     * 客源部分修改（跨部等）
     * @param customPartModify 客源部分修改（跨部等）
     */
    public void setCustomPartModify(Byte customPartModify) {
        this.customPartModify = customPartModify;
    }

    /**
     * 客源部分修改（0来源-1等级-2归属人1-3归属人2-4归属人3-5委托方式-6交易）
     * @return custom_part_detail 客源部分修改（0来源-1等级-2归属人1-3归属人2-4归属人3-5委托方式-6交易）
     */
    public String getCustomPartDetail() {
        return customPartDetail;
    }

    /**
     * 客源部分修改（0来源-1等级-2归属人1-3归属人2-4归属人3-5委托方式-6交易）
     * @param customPartDetail 客源部分修改（0来源-1等级-2归属人1-3归属人2-4归属人3-5委托方式-6交易）
     */
    public void setCustomPartDetail(String customPartDetail) {
        this.customPartDetail = customPartDetail == null ? null : customPartDetail.trim();
    }

    /**
     * 交易可查看（求购-求租-租购）
     * @return custom_transaction_visiable 交易可查看（求购-求租-租购）
     */
    public String getCustomTransactionVisiable() {
        return customTransactionVisiable;
    }

    /**
     * 交易可查看（求购-求租-租购）
     * @param customTransactionVisiable 交易可查看（求购-求租-租购）
     */
    public void setCustomTransactionVisiable(String customTransactionVisiable) {
        this.customTransactionVisiable = customTransactionVisiable == null ? null : customTransactionVisiable.trim();
    }

    /**
     * 客源删除（跨部等）
     * @return custom_delete 客源删除（跨部等）
     */
    public Byte getCustomDelete() {
        return customDelete;
    }

    /**
     * 客源删除（跨部等）
     * @param customDelete 客源删除（跨部等）
     */
    public void setCustomDelete(Byte customDelete) {
        this.customDelete = customDelete;
    }

    /**
     * 私客设置（跨部等）
     * @return private_set 私客设置（跨部等）
     */
    public Byte getPrivateSet() {
        return privateSet;
    }

    /**
     * 私客设置（跨部等）
     * @param privateSet 私客设置（跨部等）
     */
    public void setPrivateSet(Byte privateSet) {
        this.privateSet = privateSet;
    }

    /**
     * 
     * @return ownership_transfer 
     */
    public Boolean getOwnershipTransfer() {
        return ownershipTransfer;
    }

    /**
     * 
     * @param ownershipTransfer 
     */
    public void setOwnershipTransfer(Boolean ownershipTransfer) {
        this.ownershipTransfer = ownershipTransfer;
    }

    /**
     * 客源审核（跨部等）
     * @return custom_examine 客源审核（跨部等）
     */
    public Byte getCustomExamine() {
        return customExamine;
    }

    /**
     * 客源审核（跨部等）
     * @param customExamine 客源审核（跨部等）
     */
    public void setCustomExamine(Byte customExamine) {
        this.customExamine = customExamine;
    }

    /**
     * 委托日期修改（跨部等）
     * @return entrust_date_modify 委托日期修改（跨部等）
     */
    public Byte getEntrustDateModify() {
        return entrustDateModify;
    }

    /**
     * 委托日期修改（跨部等）
     * @param entrustDateModify 委托日期修改（跨部等）
     */
    public void setEntrustDateModify(Byte entrustDateModify) {
        this.entrustDateModify = entrustDateModify;
    }

    /**
     * 客户状态修改（0有效到预定-1有效到已购/我购-2有效到已租-3有效到其他状态-4非有效到有效）
     * @return custom_state 客户状态修改（0有效到预定-1有效到已购/我购-2有效到已租-3有效到其他状态-4非有效到有效）
     */
    public String getCustomState() {
        return customState;
    }

    /**
     * 客户状态修改（0有效到预定-1有效到已购/我购-2有效到已租-3有效到其他状态-4非有效到有效）
     * @param customState 客户状态修改（0有效到预定-1有效到已购/我购-2有效到已租-3有效到其他状态-4非有效到有效）
     */
    public void setCustomState(String customState) {
        this.customState = customState == null ? null : customState.trim();
    }

    /**
     * 预定看客户电话
     * @return book_custom_phone_visiable 预定看客户电话
     */
    public Boolean getBookCustomPhoneVisiable() {
        return bookCustomPhoneVisiable;
    }

    /**
     * 预定看客户电话
     * @param bookCustomPhoneVisiable 预定看客户电话
     */
    public void setBookCustomPhoneVisiable(Boolean bookCustomPhoneVisiable) {
        this.bookCustomPhoneVisiable = bookCustomPhoneVisiable;
    }

    /**
     * 看客户不必写跟进
     * @return custom_view_without_followup 看客户不必写跟进
     */
    public Boolean getCustomViewWithoutFollowup() {
        return customViewWithoutFollowup;
    }

    /**
     * 看客户不必写跟进
     * @param customViewWithoutFollowup 看客户不必写跟进
     */
    public void setCustomViewWithoutFollowup(Boolean customViewWithoutFollowup) {
        this.customViewWithoutFollowup = customViewWithoutFollowup;
    }

    /**
     * 看客户（次/天）>=900 不限次+记日志 =999 不限次+不记日志
     * @return custom_view_time 看客户（次/天）>=900 不限次+记日志 =999 不限次+不记日志
     */
    public Integer getCustomViewTime() {
        return customViewTime;
    }

    /**
     * 看客户（次/天）>=900 不限次+记日志 =999 不限次+不记日志
     * @param customViewTime 看客户（次/天）>=900 不限次+记日志 =999 不限次+不记日志
     */
    public void setCustomViewTime(Integer customViewTime) {
        this.customViewTime = customViewTime;
    }

    /**
     * 委托可保存（0A委托方式-1B委托方式-2C委托方式-3X委托方式）
     * @return entrust_save 委托可保存（0A委托方式-1B委托方式-2C委托方式-3X委托方式）
     */
    public String getEntrustSave() {
        return entrustSave;
    }

    /**
     * 委托可保存（0A委托方式-1B委托方式-2C委托方式-3X委托方式）
     * @param entrustSave 委托可保存（0A委托方式-1B委托方式-2C委托方式-3X委托方式）
     */
    public void setEntrustSave(String entrustSave) {
        this.entrustSave = entrustSave == null ? null : entrustSave.trim();
    }

    /**
     * 公客跟进查看（跨部等）
     * @return public_custom_followup_visiable 公客跟进查看（跨部等）
     */
    public Byte getPublicCustomFollowupVisiable() {
        return publicCustomFollowupVisiable;
    }

    /**
     * 公客跟进查看（跨部等）
     * @param publicCustomFollowupVisiable 公客跟进查看（跨部等）
     */
    public void setPublicCustomFollowupVisiable(Byte publicCustomFollowupVisiable) {
        this.publicCustomFollowupVisiable = publicCustomFollowupVisiable;
    }

    /**
     * 私客跟进查看（跨部等）
     * @return private_custom_followup_visiable 私客跟进查看（跨部等）
     */
    public Byte getPrivateCustomFollowupVisiable() {
        return privateCustomFollowupVisiable;
    }

    /**
     * 私客跟进查看（跨部等）
     * @param privateCustomFollowupVisiable 私客跟进查看（跨部等）
     */
    public void setPrivateCustomFollowupVisiable(Byte privateCustomFollowupVisiable) {
        this.privateCustomFollowupVisiable = privateCustomFollowupVisiable;
    }

    /**
     * 跟进新增（本人）
     * @return custom_followup_add 跟进新增（本人）
     */
    public Boolean getCustomFollowupAdd() {
        return customFollowupAdd;
    }

    /**
     * 跟进新增（本人）
     * @param customFollowupAdd 跟进新增（本人）
     */
    public void setCustomFollowupAdd(Boolean customFollowupAdd) {
        this.customFollowupAdd = customFollowupAdd;
    }

    /**
     * 客源跟进删除（本人）
     * @return custom_followup_modify 客源跟进删除（本人）
     */
    public Boolean getCustomFollowupModify() {
        return customFollowupModify;
    }

    /**
     * 客源跟进删除（本人）
     * @param customFollowupModify 客源跟进删除（本人）
     */
    public void setCustomFollowupModify(Boolean customFollowupModify) {
        this.customFollowupModify = customFollowupModify;
    }

    /**
     * 客源跟进删除（跨部等）
     * @return custom_followup_delete 客源跟进删除（跨部等）
     */
    public Boolean getCustomFollowupDelete() {
        return customFollowupDelete;
    }

    /**
     * 客源跟进删除（跨部等）
     * @param customFollowupDelete 客源跟进删除（跨部等）
     */
    public void setCustomFollowupDelete(Boolean customFollowupDelete) {
        this.customFollowupDelete = customFollowupDelete;
    }

    /**
     * 公共账户修改(归属)
     * @return public_user_modify_belonging 公共账户修改(归属)
     */
    public Boolean getPublicUserModifyBelonging() {
        return publicUserModifyBelonging;
    }

    /**
     * 公共账户修改(归属)
     * @param publicUserModifyBelonging 公共账户修改(归属)
     */
    public void setPublicUserModifyBelonging(Boolean publicUserModifyBelonging) {
        this.publicUserModifyBelonging = publicUserModifyBelonging;
    }

    /**
     * 看客户电话（次/天）（<999 屏蔽电话且限制看的次数，=999 明码显示电话）
     * @return custom_phone_view_time 看客户电话（次/天）（<999 屏蔽电话且限制看的次数，=999 明码显示电话）
     */
    public Integer getCustomPhoneViewTime() {
        return customPhoneViewTime;
    }

    /**
     * 看客户电话（次/天）（<999 屏蔽电话且限制看的次数，=999 明码显示电话）
     * @param customPhoneViewTime 看客户电话（次/天）（<999 屏蔽电话且限制看的次数，=999 明码显示电话）
     */
    public void setCustomPhoneViewTime(Integer customPhoneViewTime) {
        this.customPhoneViewTime = customPhoneViewTime;
    }
}