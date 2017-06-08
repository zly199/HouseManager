package cn.dto;

import java.io.Serializable;
import java.util.Date;

public class UserDto implements Serializable{
    /**
     *
     */
    private String locked;

    /**
     * 员工编号
     */
    private Long userId;

    /**
     用户名
     */
    private String userName;

    /**
     *所属部门
     */
    private String organizationId;

    /**
     * 员工职务
     */
    private String dutiesId;

    /**
     *状态
     */
    private String state;

    /**
     * 入职时间
     */
    private Date entryTime;

    /**
     * 离职时间
     */
    private Date dimissionTime;

    /**
     *坐席
     */
    private String omni;

    /**
     *来源
     */
    private String source;

    /**
     *头衔
     */
    private String technicalTitle;

    /**
     *档案路径
     */
    private String record;

    /**
     *主营楼盘
     */
    private String mainBuildings;

    /**
     * 上级的userid
     */
    private String chiefId;

    /**
     * 联系方式id
     */
    private String connecttionWay;

    /**
     *密码
     */
    private String password;

    /**
     * 上班时间
     */
    private Date workingTime;

    /**
     * 下班时间
     */
    private Date closingTime;

    /**
     * 个人信息id
     */
    private Long userPersion;

    /**
     * 个人房源前缀（私盘）,不包括部门的房源前缀
     */
    private String userHousePre;

    public UserDto() {
    }

    public UserDto(String locked, Long userId, String userName, String organizationId, String dutiesId, String state, Date entryTime, Date dimissionTime, String omni, String source, String technicalTitle, String record, String mainBuildings, String chiefId, String connecttionWay, String password, Date workingTime, Date closingTime, Long userPersion, String userHousePre) {
        this.locked = locked;
        this.userId = userId;
        this.userName = userName;
        this.organizationId = organizationId;
        this.dutiesId = dutiesId;
        this.state = state;
        this.entryTime = entryTime;
        this.dimissionTime = dimissionTime;
        this.omni = omni;
        this.source = source;
        this.technicalTitle = technicalTitle;
        this.record = record;
        this.mainBuildings = mainBuildings;
        this.chiefId = chiefId;
        this.connecttionWay = connecttionWay;
        this.password = password;
        this.workingTime = workingTime;
        this.closingTime = closingTime;
        this.userPersion = userPersion;
        this.userHousePre = userHousePre;
    }

    public String getLocked() {
        return locked;
    }

    public void setLocked(String locked) {
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

    public String getOrganizationId() {
        return organizationId;
    }

    public void setOrganizationId(String organizationId) {
        this.organizationId = organizationId;
    }

    public String getDutiesId() {
        return dutiesId;
    }

    public void setDutiesId(String dutiesId) {
        this.dutiesId = dutiesId;
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

    public String getChiefId() {
        return chiefId;
    }

    public void setChiefId(String chiefId) {
        this.chiefId = chiefId;
    }

    public String getConnecttionWay() {
        return connecttionWay;
    }

    public void setConnecttionWay(String connecttionWay) {
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
