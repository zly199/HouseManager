package cn.entity;

import java.util.Date;

public class Client {
    /**
     * 客源编号
     */
    private Integer id;

    /**
     * 交易
     */
    private String transaction;

    /**
     * 用途
     */
    private String application;

    /**
     * 意向地址：***'/***'/******
     */
    private String willingAddress;

    /**
     * 状态
     */
    private String status;

    /**
     * 面积：lowArea-maxArea
     */
    private String area;

    /**
     * 属性
     */
    private String attribute;

    /**
     * 价格：lowPrice-maxPrice
     */
    private String purchasingPrice;

    /**
     * 委托日期
     */
    private Date precatoryDate;

    /**
     * 租金单价：***-****
     */
    private String rentPrice;

    /**
     * 委托方式
     */
    private String precatoryMethod;

    /**
     * 客户等级
     */
    private String rank;

    /**
     * 来源
     */
    private String source;

    /**
     * 客户类别
     */
    private String type;

    /**
     * 客户期限
     */
    private String deadline;

    /**
     * 客户意向
     */
    private String intention;

    /**
     * 到期日 
     */
    private Date maturity;

    /**
     * 备注
     */
    private String remark;

    /**
     * 房型：房/厅/卫/阳
     */
    private String housetype;

    /**
     * 装修
     */
    private String decoration;

    /**
     * 
     */
    private String gener;

    /**
     * 配套
     */
    private String development;

    /**
     * 朝向
     */
    private String orientation;

    /**
     * 
     */
    private Integer floor;

    /**
     * 付款
     */
    private String payment;

    /**
     * 客户现住
     */
    private String nowAddress;

    /**
     * 付拥
     */
    private String paymentCommission;

    /**
     * 入住人年龄
     */
    private String clientAge;

    /**
     * 现住址
     */
    private String address;

    /**
     * 客源编号
     * @return id 客源编号
     */
    public Integer getId() {
        return id;
    }

    /**
     * 客源编号
     * @param id 客源编号
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 交易
     * @return transaction 交易
     */
    public String getTransaction() {
        return transaction;
    }

    /**
     * 交易
     * @param transaction 交易
     */
    public void setTransaction(String transaction) {
        this.transaction = transaction == null ? null : transaction.trim();
    }

    /**
     * 用途
     * @return application 用途
     */
    public String getApplication() {
        return application;
    }

    /**
     * 用途
     * @param application 用途
     */
    public void setApplication(String application) {
        this.application = application == null ? null : application.trim();
    }

    /**
     * 意向地址：***'/***'/******
     * @return willing_address 意向地址：***'/***'/******
     */
    public String getWillingAddress() {
        return willingAddress;
    }

    /**
     * 意向地址：***'/***'/******
     * @param willingAddress 意向地址：***'/***'/******
     */
    public void setWillingAddress(String willingAddress) {
        this.willingAddress = willingAddress == null ? null : willingAddress.trim();
    }

    /**
     * 状态
     * @return status 状态
     */
    public String getStatus() {
        return status;
    }

    /**
     * 状态
     * @param status 状态
     */
    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    /**
     * 面积：lowArea-maxArea
     * @return area 面积：lowArea-maxArea
     */
    public String getArea() {
        return area;
    }

    /**
     * 面积：lowArea-maxArea
     * @param area 面积：lowArea-maxArea
     */
    public void setArea(String area) {
        this.area = area == null ? null : area.trim();
    }

    /**
     * 属性
     * @return attribute 属性
     */
    public String getAttribute() {
        return attribute;
    }

    /**
     * 属性
     * @param attribute 属性
     */
    public void setAttribute(String attribute) {
        this.attribute = attribute == null ? null : attribute.trim();
    }

    /**
     * 价格：lowPrice-maxPrice
     * @return purchasing_price 价格：lowPrice-maxPrice
     */
    public String getPurchasingPrice() {
        return purchasingPrice;
    }

    /**
     * 价格：lowPrice-maxPrice
     * @param purchasingPrice 价格：lowPrice-maxPrice
     */
    public void setPurchasingPrice(String purchasingPrice) {
        this.purchasingPrice = purchasingPrice == null ? null : purchasingPrice.trim();
    }

    /**
     * 委托日期
     * @return precatory_date 委托日期
     */
    public Date getPrecatoryDate() {
        return precatoryDate;
    }

    /**
     * 委托日期
     * @param precatoryDate 委托日期
     */
    public void setPrecatoryDate(Date precatoryDate) {
        this.precatoryDate = precatoryDate;
    }

    /**
     * 租金单价：***-****
     * @return rent_price 租金单价：***-****
     */
    public String getRentPrice() {
        return rentPrice;
    }

    /**
     * 租金单价：***-****
     * @param rentPrice 租金单价：***-****
     */
    public void setRentPrice(String rentPrice) {
        this.rentPrice = rentPrice == null ? null : rentPrice.trim();
    }

    /**
     * 委托方式
     * @return precatory_method 委托方式
     */
    public String getPrecatoryMethod() {
        return precatoryMethod;
    }

    /**
     * 委托方式
     * @param precatoryMethod 委托方式
     */
    public void setPrecatoryMethod(String precatoryMethod) {
        this.precatoryMethod = precatoryMethod == null ? null : precatoryMethod.trim();
    }

    /**
     * 客户等级
     * @return rank 客户等级
     */
    public String getRank() {
        return rank;
    }

    /**
     * 客户等级
     * @param rank 客户等级
     */
    public void setRank(String rank) {
        this.rank = rank == null ? null : rank.trim();
    }

    /**
     * 来源
     * @return source 来源
     */
    public String getSource() {
        return source;
    }

    /**
     * 来源
     * @param source 来源
     */
    public void setSource(String source) {
        this.source = source == null ? null : source.trim();
    }

    /**
     * 客户类别
     * @return type 客户类别
     */
    public String getType() {
        return type;
    }

    /**
     * 客户类别
     * @param type 客户类别
     */
    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    /**
     * 客户期限
     * @return deadline 客户期限
     */
    public String getDeadline() {
        return deadline;
    }

    /**
     * 客户期限
     * @param deadline 客户期限
     */
    public void setDeadline(String deadline) {
        this.deadline = deadline == null ? null : deadline.trim();
    }

    /**
     * 客户意向
     * @return intention 客户意向
     */
    public String getIntention() {
        return intention;
    }

    /**
     * 客户意向
     * @param intention 客户意向
     */
    public void setIntention(String intention) {
        this.intention = intention == null ? null : intention.trim();
    }

    /**
     * 到期日 
     * @return maturity 到期日 
     */
    public Date getMaturity() {
        return maturity;
    }

    /**
     * 到期日 
     * @param maturity 到期日 
     */
    public void setMaturity(Date maturity) {
        this.maturity = maturity;
    }

    /**
     * 备注
     * @return remark 备注
     */
    public String getRemark() {
        return remark;
    }

    /**
     * 备注
     * @param remark 备注
     */
    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    /**
     * 房型：房/厅/卫/阳
     * @return housetype 房型：房/厅/卫/阳
     */
    public String getHousetype() {
        return housetype;
    }

    /**
     * 房型：房/厅/卫/阳
     * @param housetype 房型：房/厅/卫/阳
     */
    public void setHousetype(String housetype) {
        this.housetype = housetype == null ? null : housetype.trim();
    }

    /**
     * 装修
     * @return decoration 装修
     */
    public String getDecoration() {
        return decoration;
    }

    /**
     * 装修
     * @param decoration 装修
     */
    public void setDecoration(String decoration) {
        this.decoration = decoration == null ? null : decoration.trim();
    }

    /**
     * 
     * @return gener 
     */
    public String getGener() {
        return gener;
    }

    /**
     * 
     * @param gener 
     */
    public void setGener(String gener) {
        this.gener = gener == null ? null : gener.trim();
    }

    /**
     * 配套
     * @return development 配套
     */
    public String getDevelopment() {
        return development;
    }

    /**
     * 配套
     * @param development 配套
     */
    public void setDevelopment(String development) {
        this.development = development == null ? null : development.trim();
    }

    /**
     * 朝向
     * @return orientation 朝向
     */
    public String getOrientation() {
        return orientation;
    }

    /**
     * 朝向
     * @param orientation 朝向
     */
    public void setOrientation(String orientation) {
        this.orientation = orientation == null ? null : orientation.trim();
    }

    /**
     * 
     * @return floor 
     */
    public Integer getFloor() {
        return floor;
    }

    /**
     * 
     * @param floor 
     */
    public void setFloor(Integer floor) {
        this.floor = floor;
    }

    /**
     * 付款
     * @return payment 付款
     */
    public String getPayment() {
        return payment;
    }

    /**
     * 付款
     * @param payment 付款
     */
    public void setPayment(String payment) {
        this.payment = payment == null ? null : payment.trim();
    }

    /**
     * 客户现住
     * @return now_address 客户现住
     */
    public String getNowAddress() {
        return nowAddress;
    }

    /**
     * 客户现住
     * @param nowAddress 客户现住
     */
    public void setNowAddress(String nowAddress) {
        this.nowAddress = nowAddress == null ? null : nowAddress.trim();
    }

    /**
     * 付拥
     * @return payment_commission 付拥
     */
    public String getPaymentCommission() {
        return paymentCommission;
    }

    /**
     * 付拥
     * @param paymentCommission 付拥
     */
    public void setPaymentCommission(String paymentCommission) {
        this.paymentCommission = paymentCommission == null ? null : paymentCommission.trim();
    }

    /**
     * 入住人年龄
     * @return client_age 入住人年龄
     */
    public String getClientAge() {
        return clientAge;
    }

    /**
     * 入住人年龄
     * @param clientAge 入住人年龄
     */
    public void setClientAge(String clientAge) {
        this.clientAge = clientAge == null ? null : clientAge.trim();
    }

    /**
     * 现住址
     * @return address 现住址
     */
    public String getAddress() {
        return address;
    }

    /**
     * 现住址
     * @param address 现住址
     */
    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }
}