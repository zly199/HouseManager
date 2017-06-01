package cn.entity;

import java.util.Date;

public class UserDuties {
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
    private String organizationId;

    /**
     * 员工职务
     */
    private Byte dutiesId;

    /**
     * 
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
     * 上级的userid
     */
    private Long chiefId;

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

    public String getUserHousePre() {
        return userHousePre;
    }

    public void setUserHousePre(String userHousePre) {
        this.userHousePre = userHousePre;
    }

    /**
     * 
     * @return locked 
     */
    public Boolean getLocked() {
        return locked;
    }

    /**
     * 
     * @param locked 
     */
    public void setLocked(Boolean locked) {
        this.locked = locked;
    }

    /**
     * 员工编号
     * @return user_id 员工编号
     */
    public Long getUserId() {
        return userId;
    }

    /**
     * 员工编号
     * @param userId 员工编号
     */
    public void setUserId(Long userId) {
        this.userId = userId;
    }

    /**
     * 
     * @return user_name 
     */
    public String getUserName() {
        return userName;
    }

    /**
     * 
     * @param userName 
     */
    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    /**
     * 
     * @return organization_id 
     */
    public String getOrganizationId() {
        return organizationId;
    }

    /**
     * 
     * @param organizationId 
     */
    public void setOrganizationId(String organizationId) {
        this.organizationId = organizationId == null ? null : organizationId.trim();
    }

    /**
     * 员工职务
     * @return duties_id 员工职务
     */
    public Byte getDutiesId() {
        return dutiesId;
    }

    /**
     * 员工职务
     * @param dutiesId 员工职务
     */
    public void setDutiesId(Byte dutiesId) {
        this.dutiesId = dutiesId;
    }

    /**
     * 
     * @return state 
     */
    public String getState() {
        return state;
    }

    /**
     * 
     * @param state 
     */
    public void setState(String state) {
        this.state = state == null ? null : state.trim();
    }

    /**
     * 入职时间
     * @return entry_time 入职时间
     */
    public Date getEntryTime() {
        return entryTime;
    }

    /**
     * 入职时间
     * @param entryTime 入职时间
     */
    public void setEntryTime(Date entryTime) {
        this.entryTime = entryTime;
    }

    /**
     * 离职时间
     * @return dimission_time 离职时间
     */
    public Date getDimissionTime() {
        return dimissionTime;
    }

    /**
     * 离职时间
     * @param dimissionTime 离职时间
     */
    public void setDimissionTime(Date dimissionTime) {
        this.dimissionTime = dimissionTime;
    }

    /**
     * 
     * @return omni 
     */
    public String getOmni() {
        return omni;
    }

    /**
     * 
     * @param omni 
     */
    public void setOmni(String omni) {
        this.omni = omni == null ? null : omni.trim();
    }

    /**
     * 
     * @return source 
     */
    public String getSource() {
        return source;
    }

    /**
     * 
     * @param source 
     */
    public void setSource(String source) {
        this.source = source == null ? null : source.trim();
    }

    /**
     * 
     * @return technical_title 
     */
    public String getTechnicalTitle() {
        return technicalTitle;
    }

    /**
     * 
     * @param technicalTitle 
     */
    public void setTechnicalTitle(String technicalTitle) {
        this.technicalTitle = technicalTitle == null ? null : technicalTitle.trim();
    }

    /**
     * 
     * @return record 
     */
    public String getRecord() {
        return record;
    }

    /**
     * 
     * @param record 
     */
    public void setRecord(String record) {
        this.record = record == null ? null : record.trim();
    }

    /**
     * 
     * @return main_buildings 
     */
    public String getMainBuildings() {
        return mainBuildings;
    }

    /**
     * 
     * @param mainBuildings 
     */
    public void setMainBuildings(String mainBuildings) {
        this.mainBuildings = mainBuildings == null ? null : mainBuildings.trim();
    }

    /**
     * 上级的userid
     * @return chief_id 上级的userid
     */
    public Long getChiefId() {
        return chiefId;
    }

    /**
     * 上级的userid
     * @param chiefId 上级的userid
     */
    public void setChiefId(Long chiefId) {
        this.chiefId = chiefId;
    }

    /**
     * 联系方式id
     * @return connecttion_way 联系方式id
     */
    public Integer getConnecttionWay() {
        return connecttionWay;
    }

    /**
     * 联系方式id
     * @param connecttionWay 联系方式id
     */
    public void setConnecttionWay(Integer connecttionWay) {
        this.connecttionWay = connecttionWay;
    }

    /**
     * 
     * @return password 
     */
    public String getPassword() {
        return password;
    }

    /**
     * 
     * @param password 
     */
    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    /**
     * 上班时间
     * @return working_time 上班时间
     */
    public Date getWorkingTime() {
        return workingTime;
    }

    /**
     * 上班时间
     * @param workingTime 上班时间
     */
    public void setWorkingTime(Date workingTime) {
        this.workingTime = workingTime;
    }

    /**
     * 下班时间
     * @return closing_time 下班时间
     */
    public Date getClosingTime() {
        return closingTime;
    }

    /**
     * 下班时间
     * @param closingTime 下班时间
     */
    public void setClosingTime(Date closingTime) {
        this.closingTime = closingTime;
    }

    /**
     * 个人信息id
     * @return user_persion 个人信息id
     */
    public Long getUserPersion() {
        return userPersion;
    }

    /**
     * 个人信息id
     * @param userPersion 个人信息id
     */
    public void setUserPersion(Long userPersion) {
        this.userPersion = userPersion;
    }
}