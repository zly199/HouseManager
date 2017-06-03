package cn.dto;

import java.io.Serializable;
import java.util.List;

/**
 * 房源新增页的下拉列表，用来限定房源新增的公私盘以及部门的归属
 */
public class HouseAddActionList implements Serializable {
//    公盘和私盘和特盘列表
    private List<String> atrributes;
    //    部门列表
    private List<String> departments;
    //    人员列表
    private List<String> users;

    public List<String> getAtrributes() {
        return atrributes;
    }

    public void setAtrributes(List<String> atrributes) {
        this.atrributes = atrributes;
    }

    public List<String> getDepartments() {
        return departments;
    }

    public void setDepartments(List<String> departments) {
        this.departments = departments;
    }

    public List<String> getUsers() {
        return users;
    }

    public void setUsers(List<String> users) {
        this.users = users;
    }
}
