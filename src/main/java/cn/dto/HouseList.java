package cn.dto;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * 房源列表显示实体
 * Created by ZLY on 2017-05-19.
 */
public class HouseList implements Serializable{
    /*标签*/
    private String tag;
    /*房源id*/
    private String id;
    /*交易*/
    private String transaction;
    /*状态*/
    private String status;
    /*城区*/
    private String city;
    /*商圈*/
    private String trade;
    /*数据字典*/
    private String dictionaries;
    /*栋座*/
    private String building;
    /*房号*/
    private String roomNumber;
    /*总楼层*/
    private String totalFloor;
    /*房型*/
    private String houseType;
    /*售总价*/
    private Double sellPrice;
    /*租总价*/
    private Double rentPrice;
    /*看房*/
    private String seeTheHouse;
    /*部门*/
    private String organization;
    /*员工*/
    private String userName;
    /*公私*/
    private String attribute;
    /*最后跟进日*/
    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date LastFollowDate;
    /*照片*/
    private int phoneCount;

    public HouseList(){

    };

    public HouseList(String tag, String id, String transaction, String status, String city, String trade, String dictionaries, String building, String roomNumber, String totalFloor, String houseType, Double sellPrice, Double rentPrice, String seeTheHouse, String organization, String userName, String attribute, Date lastFollowDate, int phoneCount) {
        this.tag = tag;
        this.id = id;
        this.transaction = transaction;
        this.status = status;
        this.city = city;
        this.trade = trade;
        this.dictionaries = dictionaries;
        this.building = building;
        this.roomNumber = roomNumber;
        this.totalFloor = totalFloor;
        this.houseType = houseType;
        this.sellPrice = sellPrice;
        this.rentPrice = rentPrice;
        this.seeTheHouse = seeTheHouse;
        this.organization = organization;
        this.userName = userName;
        this.attribute = attribute;
        this.LastFollowDate = lastFollowDate;
        this.phoneCount = phoneCount;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTransaction() {
        return transaction;
    }

    public void setTransaction(String transaction) {
        this.transaction = transaction;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getTrade() {
        return trade;
    }

    public void setTrade(String trade) {
        this.trade = trade;
    }

    public String getDictionaries() {
        return dictionaries;
    }

    public void setDictionaries(String dictionaries) {
        this.dictionaries = dictionaries;
    }

    public String getBuilding() {
        return building;
    }

    public void setBuilding(String building) {
        this.building = building;
    }

    public String getRoomNumber() {
        return roomNumber;
    }

    public void setRoomNumber(String roomNumber) {
        this.roomNumber = roomNumber;
    }

    public String getTotalFloor() {
        return totalFloor;
    }

    public void setTotalFloor(String totalFloor) {
        this.totalFloor = totalFloor;
    }

    public String getHouseType() {
        return houseType;
    }

    public void setHouseType(String houseType) {
        this.houseType = houseType;
    }

    public Double getSellPrice() {
        return sellPrice;
    }

    public void setSellPrice(Double sellPrice) {
        this.sellPrice = sellPrice;
    }

    public Double getRentPrice() {
        return rentPrice;
    }

    public void setRentPrice(Double rentPrice) {
        this.rentPrice = rentPrice;
    }

    public String getSeeTheHouse() {
        return seeTheHouse;
    }

    public void setSeeTheHouse(String seeTheHouse) {
        this.seeTheHouse = seeTheHouse;
    }

    public String getOrganization() {
        return organization;
    }

    public void setOrganization(String organization) {
        this.organization = organization;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getAttribute() {
        return attribute;
    }

    public void setAttribute(String attribute) {
        this.attribute = attribute;
    }

    public Date getLastFollowDate() {
        return LastFollowDate;
    }

    public void setLastFollowDate(Date lastFollowDate) {
        LastFollowDate = lastFollowDate;
    }

    public int getPhoneCount() {
        return phoneCount;
    }

    public void setPhoneCount(int phoneCount) {
        this.phoneCount = phoneCount;
    }
}
