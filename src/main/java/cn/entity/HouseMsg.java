package cn.entity;

import java.util.Date;

public class Housemsg {
    /**
     * 房源id
     */
    private String id;

    /**
     * 房源用途
     */
    private String application;

    /**
     * 房源交易
     */
    private String transaction;

    /**
     * 房源地址：城区/商圈/楼盘字典/栋座/单元/房号/楼层/总层
     */
    private String address;

    /**
     * 面积：总面积/套内面积
     */
    private String area;

    /**
     * 
     */
    private String type;

    /**
     * 房型：房/厅/卫/阳台
     */
    private String houseType;

    /**
     * 装修
     */
    private String decoration;

    /**
     * 朝向
     */
    private String orientation;

    /**
     * 状态
     */
    private String status;

    /**
     * 售总价
     */
    private Double sellPrice;

    /**
     * 属性
     */
    private String attribute;

    /**
     * 售低价
     */
    private Double sellLowprice;

    /**
     * 购买时间
     */
    private Date purchasingDate;

    /**
     * 租总价
     */
    private Double rentPrice;

    /**
     * 唯一住房：返回bool型数值是为1；否为0
     */
    private Boolean uniquehouse;

    /**
     * 租低价
     */
    private Double rentLowprice;

    /**
     * 委托日期
     */
    private Date precatoryDate;

    /**
     * 贷款
     */
    private Double loan;

    /**
     * 委托方式
     */
    private String precatoryMethod;

    /**
     * 来源
     */
    private String resource;

    /**
     * 委托编号
     */
    private String precatoryNumber;

    /**
     * 交房日期
     */
    private Date lunchTime;

    /**
     * 备案号
     */
    private String recordNumber;

    /**
     * 标签
     */
    private String tag;

    /**
     * 备注
     */
    private String remark;

    /**
     * 建房年代
     */
    private Date buildYear;

    /**
     * 现状
     */
    private String statusQuo;

    /**
     * 
     */
    private String propertyright;

    /**
     * 配套
     */
    private String development;

    /**
     * 包税费
     */
    private String including;

    /**
     * 家具
     */
    private String furniture;

    /**
     * 原始购价
     */
    private Double originalyPurchasingPrice;

    /**
     * 管理费
     */
    private Double managementCost;

    /**
     * 家电
     */
    private String householdApplicances;

    /**
     * 付拥
     */
    private String paymentHas;

    /**
     * 车位
     */
    private String parkingPlot;

    /**
     * 付款方式
     */
    private String paymentMethod;

    /**
     * 看房
     */
    private String seeTheHouse;

    /**
     * 产证号
     */
    private String productionLicenseNumber;

    /**
     * 产权年限
     */
    private Date yearOfPropertyRight;

    /**
     * 房产证
     */
    private String certificateOfHouseProperty;

    /**
     * 身份证
     */
    private String idCard;

    /**
     * 委托书
     */
    private String precatoryBook;

    /**
     * 业主id
     */
    private Integer clientId;

    /**
     * 相关员工
     */
    private String userId;

    /**
     * 部门id
     */
    private String organizationId;

    /**
     * 房源id
     * @return id 房源id
     */
    public String getId() {
        return id;
    }

    /**
     * 房源id
     * @param id 房源id
     */
    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    /**
     * 房源用途
     * @return application 房源用途
     */
    public String getApplication() {
        return application;
    }

    /**
     * 房源用途
     * @param application 房源用途
     */
    public void setApplication(String application) {
        this.application = application == null ? null : application.trim();
    }

    /**
     * 房源交易
     * @return transaction 房源交易
     */
    public String getTransaction() {
        return transaction;
    }

    /**
     * 房源交易
     * @param transaction 房源交易
     */
    public void setTransaction(String transaction) {
        this.transaction = transaction == null ? null : transaction.trim();
    }

    /**
     * 房源地址：城区/商圈/楼盘字典/栋座/单元/房号/楼层/总层
     * @return address 房源地址：城区/商圈/楼盘字典/栋座/单元/房号/楼层/总层
     */
    public String getAddress() {
        return address;
    }

    /**
     * 房源地址：城区/商圈/楼盘字典/栋座/单元/房号/楼层/总层
     * @param address 房源地址：城区/商圈/楼盘字典/栋座/单元/房号/楼层/总层
     */
    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    /**
     * 面积：总面积/套内面积
     * @return area 面积：总面积/套内面积
     */
    public String getArea() {
        return area;
    }

    /**
     * 面积：总面积/套内面积
     * @param area 面积：总面积/套内面积
     */
    public void setArea(String area) {
        this.area = area == null ? null : area.trim();
    }

    /**
     * 
     * @return type 
     */
    public String getType() {
        return type;
    }

    /**
     * 
     * @param type 
     */
    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    /**
     * 房型：房/厅/卫/阳台
     * @return house_type 房型：房/厅/卫/阳台
     */
    public String getHouseType() {
        return houseType;
    }

    /**
     * 房型：房/厅/卫/阳台
     * @param houseType 房型：房/厅/卫/阳台
     */
    public void setHouseType(String houseType) {
        this.houseType = houseType == null ? null : houseType.trim();
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
     * 售总价
     * @return sell_price 售总价
     */
    public Double getSellPrice() {
        return sellPrice;
    }

    /**
     * 售总价
     * @param sellPrice 售总价
     */
    public void setSellPrice(Double sellPrice) {
        this.sellPrice = sellPrice;
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
     * 售低价
     * @return sell_lowPrice 售低价
     */
    public Double getSellLowprice() {
        return sellLowprice;
    }

    /**
     * 售低价
     * @param sellLowprice 售低价
     */
    public void setSellLowprice(Double sellLowprice) {
        this.sellLowprice = sellLowprice;
    }

    /**
     * 购买时间
     * @return purchasing_date 购买时间
     */
    public Date getPurchasingDate() {
        return purchasingDate;
    }

    /**
     * 购买时间
     * @param purchasingDate 购买时间
     */
    public void setPurchasingDate(Date purchasingDate) {
        this.purchasingDate = purchasingDate;
    }

    /**
     * 租总价
     * @return rent_price 租总价
     */
    public Double getRentPrice() {
        return rentPrice;
    }

    /**
     * 租总价
     * @param rentPrice 租总价
     */
    public void setRentPrice(Double rentPrice) {
        this.rentPrice = rentPrice;
    }

    /**
     * 唯一住房：返回bool型数值是为1；否为0
     * @return uniqueHouse 唯一住房：返回bool型数值是为1；否为0
     */
    public Boolean getUniquehouse() {
        return uniquehouse;
    }

    /**
     * 唯一住房：返回bool型数值是为1；否为0
     * @param uniquehouse 唯一住房：返回bool型数值是为1；否为0
     */
    public void setUniquehouse(Boolean uniquehouse) {
        this.uniquehouse = uniquehouse;
    }

    /**
     * 租低价
     * @return rent_lowPrice 租低价
     */
    public Double getRentLowprice() {
        return rentLowprice;
    }

    /**
     * 租低价
     * @param rentLowprice 租低价
     */
    public void setRentLowprice(Double rentLowprice) {
        this.rentLowprice = rentLowprice;
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
     * 贷款
     * @return loan 贷款
     */
    public Double getLoan() {
        return loan;
    }

    /**
     * 贷款
     * @param loan 贷款
     */
    public void setLoan(Double loan) {
        this.loan = loan;
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
     * 来源
     * @return resource 来源
     */
    public String getResource() {
        return resource;
    }

    /**
     * 来源
     * @param resource 来源
     */
    public void setResource(String resource) {
        this.resource = resource == null ? null : resource.trim();
    }

    /**
     * 委托编号
     * @return precatory_number 委托编号
     */
    public String getPrecatoryNumber() {
        return precatoryNumber;
    }

    /**
     * 委托编号
     * @param precatoryNumber 委托编号
     */
    public void setPrecatoryNumber(String precatoryNumber) {
        this.precatoryNumber = precatoryNumber == null ? null : precatoryNumber.trim();
    }

    /**
     * 交房日期
     * @return lunch_time 交房日期
     */
    public Date getLunchTime() {
        return lunchTime;
    }

    /**
     * 交房日期
     * @param lunchTime 交房日期
     */
    public void setLunchTime(Date lunchTime) {
        this.lunchTime = lunchTime;
    }

    /**
     * 备案号
     * @return record_number 备案号
     */
    public String getRecordNumber() {
        return recordNumber;
    }

    /**
     * 备案号
     * @param recordNumber 备案号
     */
    public void setRecordNumber(String recordNumber) {
        this.recordNumber = recordNumber == null ? null : recordNumber.trim();
    }

    /**
     * 标签
     * @return tag 标签
     */
    public String getTag() {
        return tag;
    }

    /**
     * 标签
     * @param tag 标签
     */
    public void setTag(String tag) {
        this.tag = tag == null ? null : tag.trim();
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
     * 建房年代
     * @return build_year 建房年代
     */
    public Date getBuildYear() {
        return buildYear;
    }

    /**
     * 建房年代
     * @param buildYear 建房年代
     */
    public void setBuildYear(Date buildYear) {
        this.buildYear = buildYear;
    }

    /**
     * 现状
     * @return status_quo 现状
     */
    public String getStatusQuo() {
        return statusQuo;
    }

    /**
     * 现状
     * @param statusQuo 现状
     */
    public void setStatusQuo(String statusQuo) {
        this.statusQuo = statusQuo == null ? null : statusQuo.trim();
    }

    /**
     * 
     * @return propertyRight 
     */
    public String getPropertyright() {
        return propertyright;
    }

    /**
     * 
     * @param propertyright 
     */
    public void setPropertyright(String propertyright) {
        this.propertyright = propertyright == null ? null : propertyright.trim();
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
     * 包税费
     * @return including 包税费
     */
    public String getIncluding() {
        return including;
    }

    /**
     * 包税费
     * @param including 包税费
     */
    public void setIncluding(String including) {
        this.including = including == null ? null : including.trim();
    }

    /**
     * 家具
     * @return furniture 家具
     */
    public String getFurniture() {
        return furniture;
    }

    /**
     * 家具
     * @param furniture 家具
     */
    public void setFurniture(String furniture) {
        this.furniture = furniture == null ? null : furniture.trim();
    }

    /**
     * 原始购价
     * @return originaly_purchasing_price 原始购价
     */
    public Double getOriginalyPurchasingPrice() {
        return originalyPurchasingPrice;
    }

    /**
     * 原始购价
     * @param originalyPurchasingPrice 原始购价
     */
    public void setOriginalyPurchasingPrice(Double originalyPurchasingPrice) {
        this.originalyPurchasingPrice = originalyPurchasingPrice;
    }

    /**
     * 管理费
     * @return management_cost 管理费
     */
    public Double getManagementCost() {
        return managementCost;
    }

    /**
     * 管理费
     * @param managementCost 管理费
     */
    public void setManagementCost(Double managementCost) {
        this.managementCost = managementCost;
    }

    /**
     * 家电
     * @return household_applicances 家电
     */
    public String getHouseholdApplicances() {
        return householdApplicances;
    }

    /**
     * 家电
     * @param householdApplicances 家电
     */
    public void setHouseholdApplicances(String householdApplicances) {
        this.householdApplicances = householdApplicances == null ? null : householdApplicances.trim();
    }

    /**
     * 付拥
     * @return payment_has 付拥
     */
    public String getPaymentHas() {
        return paymentHas;
    }

    /**
     * 付拥
     * @param paymentHas 付拥
     */
    public void setPaymentHas(String paymentHas) {
        this.paymentHas = paymentHas == null ? null : paymentHas.trim();
    }

    /**
     * 车位
     * @return parking_plot 车位
     */
    public String getParkingPlot() {
        return parkingPlot;
    }

    /**
     * 车位
     * @param parkingPlot 车位
     */
    public void setParkingPlot(String parkingPlot) {
        this.parkingPlot = parkingPlot == null ? null : parkingPlot.trim();
    }

    /**
     * 付款方式
     * @return payment_method 付款方式
     */
    public String getPaymentMethod() {
        return paymentMethod;
    }

    /**
     * 付款方式
     * @param paymentMethod 付款方式
     */
    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod == null ? null : paymentMethod.trim();
    }

    /**
     * 看房
     * @return see_the_house 看房
     */
    public String getSeeTheHouse() {
        return seeTheHouse;
    }

    /**
     * 看房
     * @param seeTheHouse 看房
     */
    public void setSeeTheHouse(String seeTheHouse) {
        this.seeTheHouse = seeTheHouse == null ? null : seeTheHouse.trim();
    }

    /**
     * 产证号
     * @return production_license_number 产证号
     */
    public String getProductionLicenseNumber() {
        return productionLicenseNumber;
    }

    /**
     * 产证号
     * @param productionLicenseNumber 产证号
     */
    public void setProductionLicenseNumber(String productionLicenseNumber) {
        this.productionLicenseNumber = productionLicenseNumber == null ? null : productionLicenseNumber.trim();
    }

    /**
     * 产权年限
     * @return year_of_property_right 产权年限
     */
    public Date getYearOfPropertyRight() {
        return yearOfPropertyRight;
    }

    /**
     * 产权年限
     * @param yearOfPropertyRight 产权年限
     */
    public void setYearOfPropertyRight(Date yearOfPropertyRight) {
        this.yearOfPropertyRight = yearOfPropertyRight;
    }

    /**
     * 房产证
     * @return certificate_of_house_property 房产证
     */
    public String getCertificateOfHouseProperty() {
        return certificateOfHouseProperty;
    }

    /**
     * 房产证
     * @param certificateOfHouseProperty 房产证
     */
    public void setCertificateOfHouseProperty(String certificateOfHouseProperty) {
        this.certificateOfHouseProperty = certificateOfHouseProperty == null ? null : certificateOfHouseProperty.trim();
    }

    /**
     * 身份证
     * @return id_card 身份证
     */
    public String getIdCard() {
        return idCard;
    }

    /**
     * 身份证
     * @param idCard 身份证
     */
    public void setIdCard(String idCard) {
        this.idCard = idCard == null ? null : idCard.trim();
    }

    /**
     * 委托书
     * @return precatory_book 委托书
     */
    public String getPrecatoryBook() {
        return precatoryBook;
    }

    /**
     * 委托书
     * @param precatoryBook 委托书
     */
    public void setPrecatoryBook(String precatoryBook) {
        this.precatoryBook = precatoryBook == null ? null : precatoryBook.trim();
    }

    /**
     * 业主id
     * @return client_id 业主id
     */
    public Integer getClientId() {
        return clientId;
    }

    /**
     * 业主id
     * @param clientId 业主id
     */
    public void setClientId(Integer clientId) {
        this.clientId = clientId;
    }

    /**
     * 相关员工
     * @return user_id 相关员工
     */
    public String getUserId() {
        return userId;
    }

    /**
     * 相关员工
     * @param userId 相关员工
     */
    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
    }

    /**
     * 部门id
     * @return organization_id 部门id
     */
    public String getOrganizationId() {
        return organizationId;
    }

    /**
     * 部门id
     * @param organizationId 部门id
     */
    public void setOrganizationId(String organizationId) {
        this.organizationId = organizationId == null ? null : organizationId.trim();
    }
}