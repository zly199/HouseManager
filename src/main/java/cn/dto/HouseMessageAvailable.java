package cn.dto;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Date;

/**
 * Created by ZLY on 2017-05-19.
 */
public class HouseMessageAvailable implements Serializable {
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
    private String[] address;

    /**
     * 面积：总面积/套内面积
     */
    private double[] area;

    /**
     *类型
     */
    private String type;

    /**
     * 房型：房/厅/卫/阳台
     */
    private int[] houseType;

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
    @DateTimeFormat(pattern = "yyyy-MM-dd")
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
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date precatoryDate;

    /**
     * 贷款
     */
    private double loan;

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
     * 标签:优质房/聚焦房/速销房
     */
    private String[] tag;

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
     *产权
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

    /*
    * 部门或者名称
    * */
    private String organizationId;

    public String getOrganizationId() {
        return organizationId;
    }

    public void setOrganizationId(String organizationId) {
        this.organizationId = organizationId;
    }


    @Override
    public String toString() {
        return "HouseMessageAvailable{" +
                "id='" + id + '\'' +
                ", application='" + application + '\'' +
                ", transaction='" + transaction + '\'' +
                ", address=" + Arrays.toString(address) +
                ", area=" + Arrays.toString(area) +
                ", type='" + type + '\'' +
                ", houseType=" + Arrays.toString(houseType) +
                ", decoration='" + decoration + '\'' +
                ", orientation='" + orientation + '\'' +
                ", status='" + status + '\'' +
                ", sellPrice=" + sellPrice +
                ", attribute='" + attribute + '\'' +
                ", sellLowprice=" + sellLowprice +
                ", purchasingDate=" + purchasingDate +
                ", rentPrice=" + rentPrice +
                ", uniquehouse=" + uniquehouse +
                ", rentLowprice=" + rentLowprice +
                ", precatoryDate=" + precatoryDate +
                ", loan=" + loan +
                ", precatoryMethod='" + precatoryMethod + '\'' +
                ", resource='" + resource + '\'' +
                ", precatoryNumber='" + precatoryNumber + '\'' +
                ", lunchTime=" + lunchTime +
                ", recordNumber='" + recordNumber + '\'' +
                ", tag=" + Arrays.toString(tag) +
                ", remark='" + remark + '\'' +
                ", buildYear=" + buildYear +
                ", statusQuo='" + statusQuo + '\'' +
                ", propertyright='" + propertyright + '\'' +
                ", development='" + development + '\'' +
                ", including='" + including + '\'' +
                ", furniture='" + furniture + '\'' +
                ", originalyPurchasingPrice=" + originalyPurchasingPrice +
                ", managementCost=" + managementCost +
                ", householdApplicances='" + householdApplicances + '\'' +
                ", paymentHas='" + paymentHas + '\'' +
                ", parkingPlot='" + parkingPlot + '\'' +
                ", paymentMethod='" + paymentMethod + '\'' +
                ", seeTheHouse='" + seeTheHouse + '\'' +
                ", productionLicenseNumber='" + productionLicenseNumber + '\'' +
                ", yearOfPropertyRight=" + yearOfPropertyRight +
                ", certificateOfHouseProperty='" + certificateOfHouseProperty + '\'' +
                ", idCard='" + idCard + '\'' +
                ", precatoryBook='" + precatoryBook + '\'' +
                ", clientId=" + clientId +
                ", userId='" + userId + '\'' +
                '}';
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getApplication() {
        return application;
    }

    public void setApplication(String application) {
        this.application = application;
    }

    public String getTransaction() {
        return transaction;
    }

    public void setTransaction(String transaction) {
        this.transaction = transaction;
    }

    public String[] getAddress() {
        return address;
    }

    public void setAddress(String[] address) {
        this.address = address;
    }

    public double[] getArea() {
        return area;
    }

    public void setArea(double[] area) {
        this.area = area;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int[] getHouseType() {
        return houseType;
    }

    public void setHouseType(int[] houseType) {
        this.houseType = houseType;
    }

    public String getDecoration() {
        return decoration;
    }

    public void setDecoration(String decoration) {
        this.decoration = decoration;
    }

    public String getOrientation() {
        return orientation;
    }

    public void setOrientation(String orientation) {
        this.orientation = orientation;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Double getSellPrice() {
        return sellPrice;
    }

    public void setSellPrice(Double sellPrice) {
        this.sellPrice = sellPrice;
    }

    public String getAttribute() {
        return attribute;
    }

    public void setAttribute(String attribute) {
        this.attribute = attribute;
    }

    public Double getSellLowprice() {
        return sellLowprice;
    }

    public void setSellLowprice(Double sellLowprice) {
        this.sellLowprice = sellLowprice;
    }

    public Date getPurchasingDate() {
        return purchasingDate;
    }

    public void setPurchasingDate(Date purchasingDate) {
        this.purchasingDate = purchasingDate;
    }

    public Double getRentPrice() {
        return rentPrice;
    }

    public void setRentPrice(Double rentPrice) {
        this.rentPrice = rentPrice;
    }

    public Boolean getUniquehouse() {
        return uniquehouse;
    }

    public void setUniquehouse(Boolean uniquehouse) {
        this.uniquehouse = uniquehouse;
    }

    public Double getRentLowprice() {
        return rentLowprice;
    }

    public void setRentLowprice(Double rentLowprice) {
        this.rentLowprice = rentLowprice;
    }

    public Date getPrecatoryDate() {
        return precatoryDate;
    }

    public void setPrecatoryDate(Date precatoryDate) {
        this.precatoryDate = precatoryDate;
    }

    public double getLoan() {
        return loan;
    }

    public void setLoan(double loan) {
        this.loan = loan;
    }

    public String getPrecatoryMethod() {
        return precatoryMethod;
    }

    public void setPrecatoryMethod(String precatoryMethod) {
        this.precatoryMethod = precatoryMethod;
    }

    public String getResource() {
        return resource;
    }

    public void setResource(String resource) {
        this.resource = resource;
    }

    public String getPrecatoryNumber() {
        return precatoryNumber;
    }

    public void setPrecatoryNumber(String precatoryNumber) {
        this.precatoryNumber = precatoryNumber;
    }

    public Date getLunchTime() {
        return lunchTime;
    }

    public void setLunchTime(Date lunchTime) {
        this.lunchTime = lunchTime;
    }

    public String getRecordNumber() {
        return recordNumber;
    }

    public void setRecordNumber(String recordNumber) {
        this.recordNumber = recordNumber;
    }

    public String[] getTag() {
        return tag;
    }

    public void setTag(String[] tag) {
        this.tag = tag;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public Date getBuildYear() {
        return buildYear;
    }

    public void setBuildYear(Date buildYear) {
        this.buildYear = buildYear;
    }

    public String getStatusQuo() {
        return statusQuo;
    }

    public void setStatusQuo(String statusQuo) {
        this.statusQuo = statusQuo;
    }

    public String getPropertyright() {
        return propertyright;
    }

    public void setPropertyright(String propertyright) {
        this.propertyright = propertyright;
    }

    public String getDevelopment() {
        return development;
    }

    public void setDevelopment(String development) {
        this.development = development;
    }

    public String getIncluding() {
        return including;
    }

    public void setIncluding(String including) {
        this.including = including;
    }

    public String getFurniture() {
        return furniture;
    }

    public void setFurniture(String furniture) {
        this.furniture = furniture;
    }

    public Double getOriginalyPurchasingPrice() {
        return originalyPurchasingPrice;
    }

    public void setOriginalyPurchasingPrice(Double originalyPurchasingPrice) {
        this.originalyPurchasingPrice = originalyPurchasingPrice;
    }

    public Double getManagementCost() {
        return managementCost;
    }

    public void setManagementCost(Double managementCost) {
        this.managementCost = managementCost;
    }

    public String getHouseholdApplicances() {
        return householdApplicances;
    }

    public void setHouseholdApplicances(String householdApplicances) {
        this.householdApplicances = householdApplicances;
    }

    public String getPaymentHas() {
        return paymentHas;
    }

    public void setPaymentHas(String paymentHas) {
        this.paymentHas = paymentHas;
    }

    public String getParkingPlot() {
        return parkingPlot;
    }

    public void setParkingPlot(String parkingPlot) {
        this.parkingPlot = parkingPlot;
    }

    public String getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    public String getSeeTheHouse() {
        return seeTheHouse;
    }

    public void setSeeTheHouse(String seeTheHouse) {
        this.seeTheHouse = seeTheHouse;
    }

    public String getProductionLicenseNumber() {
        return productionLicenseNumber;
    }

    public void setProductionLicenseNumber(String productionLicenseNumber) {
        this.productionLicenseNumber = productionLicenseNumber;
    }

    public Date getYearOfPropertyRight() {
        return yearOfPropertyRight;
    }

    public void setYearOfPropertyRight(Date yearOfPropertyRight) {
        this.yearOfPropertyRight = yearOfPropertyRight;
    }

    public String getCertificateOfHouseProperty() {
        return certificateOfHouseProperty;
    }

    public void setCertificateOfHouseProperty(String certificateOfHouseProperty) {
        this.certificateOfHouseProperty = certificateOfHouseProperty;
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public String getPrecatoryBook() {
        return precatoryBook;
    }

    public void setPrecatoryBook(String precatoryBook) {
        this.precatoryBook = precatoryBook;
    }

    public Integer getClientId() {
        return clientId;
    }

    public void setClientId(Integer clientId) {
        this.clientId = clientId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }
}
