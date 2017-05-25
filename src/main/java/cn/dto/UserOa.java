package cn.dto;

import java.io.Serializable;
import java.util.Date;

/**
 * 组织机构人事oa人员列表项
 * Created by ZLY on 2017-05-23.
 */
public class UserOa implements Serializable{
    private Long userId;
    private String userName;
    private String duties;
    private String state;
    private String chifeName;
    private Date entryTime;
    private Date dimissionTime;
    private Date workingTime;
    private Date closingTime;



    public UserOa() {
    }

    public UserOa(Long userId, String userName, String duties, String state, String chifeName, Date entryTime, Date dimissionTime, Date workingTime, Date closingTime) {
        this.userId = userId;
        this.userName = userName;
        this.duties = duties;
        this.state = state;
        this.chifeName = chifeName;
        this.entryTime = entryTime;
        this.dimissionTime = dimissionTime;
        this.workingTime = workingTime;
        this.closingTime = closingTime;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getDuties() {
        return duties;
    }

    public void setDuties(String duties) {
        this.duties = duties;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getChifeName() {
        return chifeName;
    }

    public void setChifeName(String chifeName) {
        this.chifeName = chifeName;
    }

    public Date getEntryTime() {
        return entryTime;
    }

    public void setEntryTime(Date entryTime) {
        this.entryTime = entryTime;
    }

    public Date getDimissionTime() {
        return dimissionTime;
    }

    public void setDimissionTime(Date dimissionTime) {
        this.dimissionTime = dimissionTime;
    }

    public Date getWorkingTime() {
        return workingTime;
    }

    public void setWorkingTime(Date workingTime) {
        this.workingTime = workingTime;
    }

    public Date getClosingTime() {
        return closingTime;
    }

    public void setClosingTime(Date closingTime) {
        this.closingTime = closingTime;
    }

}
