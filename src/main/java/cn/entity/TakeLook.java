package cn.entity;

import java.util.Date;

public class TakeLook {
    /**
     * 
     */
    private Integer id;

    /**
     * 最后带看时间
     */
    private Date lastTime;

    /**
     * 带看次数
     */
    private Integer lookTimes;

    /**
     * 房源id
     */
    private Integer houseid;

    /**
     * 楼盘id
     */
    private Integer housesid;

    /**
     * 带看编号
     */
    private String takeNumber;

    /**
     * 交易
     */
    private String trail;

    /**
     * 套数
     */
    private Long houseNumber;

    /**
     * 状态
     */
    private String status;

    /**
     * 创建时间
     */
    private Date creatTime;

    /**
     * 
     */
    private String inspector;

    /**
     * 审核时间
     */
    private Date inspectTime;

    /**
     * 
     * @return id 
     */
    public Integer getId() {
        return id;
    }

    /**
     * 
     * @param id 
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 最后带看时间
     * @return last_time 最后带看时间
     */
    public Date getLastTime() {
        return lastTime;
    }

    /**
     * 最后带看时间
     * @param lastTime 最后带看时间
     */
    public void setLastTime(Date lastTime) {
        this.lastTime = lastTime;
    }

    /**
     * 带看次数
     * @return look_times 带看次数
     */
    public Integer getLookTimes() {
        return lookTimes;
    }

    /**
     * 带看次数
     * @param lookTimes 带看次数
     */
    public void setLookTimes(Integer lookTimes) {
        this.lookTimes = lookTimes;
    }

    /**
     * 房源id
     * @return houseid 房源id
     */
    public Integer getHouseid() {
        return houseid;
    }

    /**
     * 房源id
     * @param houseid 房源id
     */
    public void setHouseid(Integer houseid) {
        this.houseid = houseid;
    }

    /**
     * 楼盘id
     * @return housesid 楼盘id
     */
    public Integer getHousesid() {
        return housesid;
    }

    /**
     * 楼盘id
     * @param housesid 楼盘id
     */
    public void setHousesid(Integer housesid) {
        this.housesid = housesid;
    }

    /**
     * 带看编号
     * @return take_number 带看编号
     */
    public String getTakeNumber() {
        return takeNumber;
    }

    /**
     * 带看编号
     * @param takeNumber 带看编号
     */
    public void setTakeNumber(String takeNumber) {
        this.takeNumber = takeNumber == null ? null : takeNumber.trim();
    }

    /**
     * 交易
     * @return trail 交易
     */
    public String getTrail() {
        return trail;
    }

    /**
     * 交易
     * @param trail 交易
     */
    public void setTrail(String trail) {
        this.trail = trail == null ? null : trail.trim();
    }

    /**
     * 套数
     * @return house_number 套数
     */
    public Long getHouseNumber() {
        return houseNumber;
    }

    /**
     * 套数
     * @param houseNumber 套数
     */
    public void setHouseNumber(Long houseNumber) {
        this.houseNumber = houseNumber;
    }

    /**
     * 状态
     * @return status 状态
     */
    public String getStatus() {
        return status;
    }

    /**
     * 状态
     * @param status 状态
     */
    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    /**
     * 创建时间
     * @return creat_time 创建时间
     */
    public Date getCreatTime() {
        return creatTime;
    }

    /**
     * 创建时间
     * @param creatTime 创建时间
     */
    public void setCreatTime(Date creatTime) {
        this.creatTime = creatTime;
    }

    /**
     * 
     * @return inspector 
     */
    public String getInspector() {
        return inspector;
    }

    /**
     * 
     * @param inspector 
     */
    public void setInspector(String inspector) {
        this.inspector = inspector == null ? null : inspector.trim();
    }

    /**
     * 审核时间
     * @return inspect_time 审核时间
     */
    public Date getInspectTime() {
        return inspectTime;
    }

    /**
     * 审核时间
     * @param inspectTime 审核时间
     */
    public void setInspectTime(Date inspectTime) {
        this.inspectTime = inspectTime;
    }
}