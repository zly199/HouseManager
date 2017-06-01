package cn.dto;

import java.io.Serializable;
import java.util.Date;

public class FollowUpHouseAvailable implements Serializable {
    /**
     * 跟进内容
     */
    private String content;

    /**
     * 员工姓名
     */
    private String userName;
    /**
     * 员工职务
     */
    private String userDuties;
    /**
     * 员工部门
     */
    private String userDepartment;
    /**
     * 跟进时间
     */
    private Date time;

    /**
     * 跟进方式
     */
    private String method;

    public FollowUpHouseAvailable(String content, String userName, String userDuties, String userDepartment, Date time, String method) {
        this.content = content;
        this.userName = userName;
        this.userDuties = userDuties;
        this.userDepartment = userDepartment;
        this.time = time;
        this.method = method;
    }

    public FollowUpHouseAvailable() {
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserDuties() {
        return userDuties;
    }

    public void setUserDuties(String userDuties) {
        this.userDuties = userDuties;
    }

    public String getUserDepartment() {
        return userDepartment;
    }

    public void setUserDepartment(String userDepartment) {
        this.userDepartment = userDepartment;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getMethod() {
        return method;
    }

    public void setMethod(String method) {
        this.method = method;
    }
}
