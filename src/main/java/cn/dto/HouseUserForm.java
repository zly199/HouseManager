package cn.dto;

import java.io.Serializable;

/**
 * 房源归属人form
 */
public class HouseUserForm implements Serializable {
    private String houseUserName1;
    private String houseUserName2;
    private String houseUserName3;

    public String getHouseUserName1() {
        return houseUserName1;
    }

    public void setHouseUserName1(String houseUserName1) {
        this.houseUserName1 = houseUserName1;
    }

    public String getHouseUserName2() {
        return houseUserName2;
    }

    public void setHouseUserName2(String houseUserName2) {
        this.houseUserName2 = houseUserName2;
    }

    public String getHouseUserName3() {
        return houseUserName3;
    }

    public void setHouseUserName3(String houseUserName3) {
        this.houseUserName3 = houseUserName3;
    }
}
