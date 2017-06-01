package cn.dto;



import com.fasterxml.jackson.annotation.JsonFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * 完成职务，组织名，上级的转换
 * Created by ZLY on 2017-05-23.
 */
public class UserAvailable implements Serializable {
    /**
     *
     */
    private Boolean locked;

    /**
     * 员工编号
     */
    private Long userId;

    /**
     *
     */
    private String userName;

    /**
     *
     */
    private String organizationName;

    /**
     * 员工职务
     */
    private String dutiesName;

    /**
     *
     */
    private String state;

    /**
     * 入职时间
     */
    @JsonFormat(pattern = "hh:mm:ss", timezone = "GMT+8")
    private Date entryTime;

    /**
     * 离职时间
     */
    @JsonFormat(pattern = "hh:mm:ss", timezone = "GMT+8")
    private Date dimissionTime;

    /**
     *
     */
    private String omni;

    /**
     *
     */
    private String source;

    /**
     *
     */
    private String technicalTitle;

    /**
     *
     */
    private String record;

    /**
     *
     */
    private String mainBuildings;

    /**
     * 上级的名字
     */
    private String chiefName;

    /**
     * 联系方式id
     */
    private Integer connecttionWay;

    /**
     *
     */
    private String password;

    /**
     * 上班时间
     */
    @JsonFormat(pattern = "hh:mm:ss")
    private Date workingTime;

    /**
     * 下班时间
     */
    @JsonFormat(pattern = "hh:mm:ss")
    private Date closingTime;

    /**
     * 个人信息id
     */
    private Long userPersion;

    /**
     * 个人房源前缀（私盘）,不包括部门的房源前缀
     */
    private String userHousePre;

    public UserAvailable() {

    }

    public UserAvailable(Boolean locked, Long userId, String userName, String organizationName, String dutiesName, String state, Date entryTime, Date dimissionTime, String omni, String source, String technicalTitle, String record, String mainBuildings, String chiefName, Integer connecttionWay, String password, Date workingTime, Date closingTime, Long userPersion, String userHousePre) {
        this.locked = locked;
        this.userId = userId;
        this.userName = userName;
        this.organizationName = organizationName;
        this.dutiesName = dutiesName;
        this.state = state;
        this.entryTime = entryTime;
        this.dimissionTime = dimissionTime;
        this.omni = omni;
        this.source = source;
        this.technicalTitle = technicalTitle;
        this.record = record;
        this.mainBuildings = mainBuildings;
        this.chiefName = chiefName;
        this.connecttionWay = connecttionWay;
        this.password = password;
        this.workingTime = workingTime;
        this.closingTime = closingTime;
        this.userPersion = userPersion;
        this.userHousePre = userHousePre;
    }

    public Boolean getLocked() {
        return locked;
    }

    public void setLocked(Boolean locked) {
        this.locked = locked;
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

    public String getOrganizationName() {
        return organizationName;
    }

    public void setOrganizationName(String organizationName) {
        this.organizationName = organizationName;
    }

    public String getDutiesName() {
        return dutiesName;
    }

    public void setDutiesName(String dutiesName) {
        this.dutiesName = dutiesName;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
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

    public String getOmni() {
        return omni;
    }

    public void setOmni(String omni) {
        this.omni = omni;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public String getTechnicalTitle() {
        return technicalTitle;
    }

    public void setTechnicalTitle(String technicalTitle) {
        this.technicalTitle = technicalTitle;
    }

    public String getRecord() {
        return record;
    }

    public void setRecord(String record) {
        this.record = record;
    }

    public String getMainBuildings() {
        return mainBuildings;
    }

    public void setMainBuildings(String mainBuildings) {
        this.mainBuildings = mainBuildings;
    }

    public String getChiefName() {
        return chiefName;
    }

    public void setChiefName(String chiefName) {
        this.chiefName = chiefName;
    }

    public Integer getConnecttionWay() {
        return connecttionWay;
    }

    public void setConnecttionWay(Integer connecttionWay) {
        this.connecttionWay = connecttionWay;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
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

    public Long getUserPersion() {
        return userPersion;
    }

    public void setUserPersion(Long userPersion) {
        this.userPersion = userPersion;
    }

    public String getUserHousePre() {
        return userHousePre;
    }

    public void setUserHousePre(String userHousePre) {
        this.userHousePre = userHousePre;
    }
}
