package cn.entity;

import java.util.Date;

public class UserDuties {
    /**
     * 员工编号
     */
    private Long userId;

    /**
     * 员工姓名
     */
    private String userName;

    /**
     * 员工部门id
     */
    private String organizationId;

    /**
     * 员工职务
     */
    private Byte dutiesId;

    /**
     * 员工状态
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
     * 坐席
     */
    private String omni;

    /**
     * 来源
     */
    private String source;

    /**
     * 职称
     */
    private String technicalTitle;

    /**
     * 档案
     */
    private String record;

    /**
     * 主营楼盘
     */
    private String mianBuildings;

    /**
     * 上级的userid
     */
    private Long chiefId;

    /**
     * 联系方式id
     */
    private Integer connecttionWay;

    /**
     * 密码
     */
    private String passwd;

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
     * 员工姓名
     * @return user_name 员工姓名
     */
    public String getUserName() {
        return userName;
    }

    /**
     * 员工姓名
     * @param userName 员工姓名
     */
    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    /**
     * 员工部门id
     * @return organization_id 员工部门id
     */
    public String getOrganizationId() {
        return organizationId;
    }

    /**
     * 员工部门id
     * @param organizationId 员工部门id
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
     * 员工状态
     * @return state 员工状态
     */
    public String getState() {
        return state;
    }

    /**
     * 员工状态
     * @param state 员工状态
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
     * 坐席
     * @return omni 坐席
     */
    public String getOmni() {
        return omni;
    }

    /**
     * 坐席
     * @param omni 坐席
     */
    public void setOmni(String omni) {
        this.omni = omni == null ? null : omni.trim();
    }

    /**
     * 来源
     * @return source 来源
     */
    public String getSource() {
        return source;
    }

    /**
     * 来源
     * @param source 来源
     */
    public void setSource(String source) {
        this.source = source == null ? null : source.trim();
    }

    /**
     * 职称
     * @return technical_title 职称
     */
    public String getTechnicalTitle() {
        return technicalTitle;
    }

    /**
     * 职称
     * @param technicalTitle 职称
     */
    public void setTechnicalTitle(String technicalTitle) {
        this.technicalTitle = technicalTitle == null ? null : technicalTitle.trim();
    }

    /**
     * 档案
     * @return record 档案
     */
    public String getRecord() {
        return record;
    }

    /**
     * 档案
     * @param record 档案
     */
    public void setRecord(String record) {
        this.record = record == null ? null : record.trim();
    }

    /**
     * 主营楼盘
     * @return mian_buildings 主营楼盘
     */
    public String getMianBuildings() {
        return mianBuildings;
    }

    /**
     * 主营楼盘
     * @param mianBuildings 主营楼盘
     */
    public void setMianBuildings(String mianBuildings) {
        this.mianBuildings = mianBuildings == null ? null : mianBuildings.trim();
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
     * 密码
     * @return passwd 密码
     */
    public String getPasswd() {
        return passwd;
    }

    /**
     * 密码
     * @param passwd 密码
     */
    public void setPasswd(String passwd) {
        this.passwd = passwd == null ? null : passwd.trim();
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