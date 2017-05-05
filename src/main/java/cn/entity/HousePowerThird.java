package cn.entity;

public class HousePowerThird {
    /**
     * 
     */
    private Long housePowerThirdId;

    /**
     * 房源部分修改（0交易-1房型-2面积-3业主-4状态-5总层-6价格-7来源-8备注-9归属人1-10归属人2-11归属人3-12权益人-13委托方式-14委托编号-15房产证-16房源明细）
     */
    private String housePartModifyDetail;

    /**
     * 添加业主/联系人(跨部等)
     */
    private String hostAdd;

    /**
     * 交易可查看（出售-出租）
     */
    private String transactionVisible;

    /**
     * 委托可保存（A委托方式可保存-B委托可保存-C委托可保存-X委托可保存）
     */
    private String entrustSave;

    /**
     * 图片（0查看-1新增-2修改-3删除-4下载）
     */
    private String housePicture;

    /**
     * 协议附件（0上传-1查看-2下载-3删除）
     */
    private String protocolOrAttachment;

    /**
     * 房源描述全部修改（跨部等）
     */
    private String houseDescribe;

    /**
     * 房源信息全部修改（跨部等）
     */
    private String houseAllModify;

    /**
     * 房源信息部分修改（跨部等）
     */
    private String housePartModify;

    /**
     * 
     * @return house_power_third_id 
     */
    public Long getHousePowerThirdId() {
        return housePowerThirdId;
    }

    /**
     * 
     * @param housePowerThirdId 
     */
    public void setHousePowerThirdId(Long housePowerThirdId) {
        this.housePowerThirdId = housePowerThirdId;
    }

    /**
     * 房源部分修改（0交易-1房型-2面积-3业主-4状态-5总层-6价格-7来源-8备注-9归属人1-10归属人2-11归属人3-12权益人-13委托方式-14委托编号-15房产证-16房源明细）
     * @return house_part_modify_detail 房源部分修改（0交易-1房型-2面积-3业主-4状态-5总层-6价格-7来源-8备注-9归属人1-10归属人2-11归属人3-12权益人-13委托方式-14委托编号-15房产证-16房源明细）
     */
    public String getHousePartModifyDetail() {
        return housePartModifyDetail;
    }

    /**
     * 房源部分修改（0交易-1房型-2面积-3业主-4状态-5总层-6价格-7来源-8备注-9归属人1-10归属人2-11归属人3-12权益人-13委托方式-14委托编号-15房产证-16房源明细）
     * @param housePartModifyDetail 房源部分修改（0交易-1房型-2面积-3业主-4状态-5总层-6价格-7来源-8备注-9归属人1-10归属人2-11归属人3-12权益人-13委托方式-14委托编号-15房产证-16房源明细）
     */
    public void setHousePartModifyDetail(String housePartModifyDetail) {
        this.housePartModifyDetail = housePartModifyDetail == null ? null : housePartModifyDetail.trim();
    }

    /**
     * 添加业主/联系人(跨部等)
     * @return host_add 添加业主/联系人(跨部等)
     */
    public String getHostAdd() {
        return hostAdd;
    }

    /**
     * 添加业主/联系人(跨部等)
     * @param hostAdd 添加业主/联系人(跨部等)
     */
    public void setHostAdd(String hostAdd) {
        this.hostAdd = hostAdd == null ? null : hostAdd.trim();
    }

    /**
     * 交易可查看（出售-出租）
     * @return transaction_visible 交易可查看（出售-出租）
     */
    public String getTransactionVisible() {
        return transactionVisible;
    }

    /**
     * 交易可查看（出售-出租）
     * @param transactionVisible 交易可查看（出售-出租）
     */
    public void setTransactionVisible(String transactionVisible) {
        this.transactionVisible = transactionVisible == null ? null : transactionVisible.trim();
    }

    /**
     * 委托可保存（A委托方式可保存-B委托可保存-C委托可保存-X委托可保存）
     * @return entrust_save 委托可保存（A委托方式可保存-B委托可保存-C委托可保存-X委托可保存）
     */
    public String getEntrustSave() {
        return entrustSave;
    }

    /**
     * 委托可保存（A委托方式可保存-B委托可保存-C委托可保存-X委托可保存）
     * @param entrustSave 委托可保存（A委托方式可保存-B委托可保存-C委托可保存-X委托可保存）
     */
    public void setEntrustSave(String entrustSave) {
        this.entrustSave = entrustSave == null ? null : entrustSave.trim();
    }

    /**
     * 图片（0查看-1新增-2修改-3删除-4下载）
     * @return house_picture 图片（0查看-1新增-2修改-3删除-4下载）
     */
    public String getHousePicture() {
        return housePicture;
    }

    /**
     * 图片（0查看-1新增-2修改-3删除-4下载）
     * @param housePicture 图片（0查看-1新增-2修改-3删除-4下载）
     */
    public void setHousePicture(String housePicture) {
        this.housePicture = housePicture == null ? null : housePicture.trim();
    }

    /**
     * 协议附件（0上传-1查看-2下载-3删除）
     * @return protocol_or_attachment 协议附件（0上传-1查看-2下载-3删除）
     */
    public String getProtocolOrAttachment() {
        return protocolOrAttachment;
    }

    /**
     * 协议附件（0上传-1查看-2下载-3删除）
     * @param protocolOrAttachment 协议附件（0上传-1查看-2下载-3删除）
     */
    public void setProtocolOrAttachment(String protocolOrAttachment) {
        this.protocolOrAttachment = protocolOrAttachment == null ? null : protocolOrAttachment.trim();
    }

    /**
     * 房源描述全部修改（跨部等）
     * @return house_describe 房源描述全部修改（跨部等）
     */
    public String getHouseDescribe() {
        return houseDescribe;
    }

    /**
     * 房源描述全部修改（跨部等）
     * @param houseDescribe 房源描述全部修改（跨部等）
     */
    public void setHouseDescribe(String houseDescribe) {
        this.houseDescribe = houseDescribe == null ? null : houseDescribe.trim();
    }

    /**
     * 房源信息全部修改（跨部等）
     * @return house_all_modify 房源信息全部修改（跨部等）
     */
    public String getHouseAllModify() {
        return houseAllModify;
    }

    /**
     * 房源信息全部修改（跨部等）
     * @param houseAllModify 房源信息全部修改（跨部等）
     */
    public void setHouseAllModify(String houseAllModify) {
        this.houseAllModify = houseAllModify == null ? null : houseAllModify.trim();
    }

    /**
     * 房源信息部分修改（跨部等）
     * @return house_part_modify 房源信息部分修改（跨部等）
     */
    public String getHousePartModify() {
        return housePartModify;
    }

    /**
     * 房源信息部分修改（跨部等）
     * @param housePartModify 房源信息部分修改（跨部等）
     */
    public void setHousePartModify(String housePartModify) {
        this.housePartModify = housePartModify == null ? null : housePartModify.trim();
    }
}