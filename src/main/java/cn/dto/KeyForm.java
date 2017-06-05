package cn.dto;

import java.io.Serializable;

public class KeyForm implements Serializable {
    private String keyId;
    private String keyType;
    private String keyNumber;
    private String keyOrganazation;
    private String keyUser;
    private String HouseId;
    private String keyRemark;

    public String getKeyRemark() {
        return keyRemark;
    }

    public void setKeyRemark(String keyRemark) {
        this.keyRemark = keyRemark;
    }

    public String getKeyId() {
        return keyId;
    }

    public void setKeyId(String keyId) {
        this.keyId = keyId;
    }

    public String getKeyType() {
        return keyType;
    }

    public void setKeyType(String keyType) {
        this.keyType = keyType;
    }

    public String getKeyNumber() {
        return keyNumber;
    }

    public void setKeyNumber(String keyNumber) {
        this.keyNumber = keyNumber;
    }

    public String getKeyOrganazation() {
        return keyOrganazation;
    }

    public void setKeyOrganazation(String keyOrganazation) {
        this.keyOrganazation = keyOrganazation;
    }

    public String getKeyUser() {
        return keyUser;
    }

    public void setKeyUser(String keyUser) {
        this.keyUser = keyUser;
    }

    public String getHouseId() {
        return HouseId;
    }

    public void setHouseId(String houseId) {
        HouseId = houseId;
    }
//清楚所有属性
    public void clear() {
          keyId=null;
          keyType=null;
          keyNumber=null;
          keyOrganazation=null;
          keyUser=null;
          HouseId=null;
          keyRemark=null;
    }
}
