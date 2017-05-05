package cn.entity;

import java.util.Date;

public class FollowupHouse {
    /**
     * 房源跟进信息id
     */
    private Integer id;

    /**
     * 跟进内容
     */
    private String content;

    /**
     * 员工id
     */
    private Long userid;

    /**
     * 房源id
     */
    private Integer houseid;

    /**
     * 跟进时间
     */
    private Date time;

    /**
     * 跟进方式
     */
    private String method;

    /**
     * 状态
     */
    private String status;

    /**
     * 交易
     */
    private String trail;

    /**
     * 房源跟进信息id
     * @return id 房源跟进信息id
     */
    public Integer getId() {
        return id;
    }

    /**
     * 房源跟进信息id
     * @param id 房源跟进信息id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 跟进内容
     * @return content 跟进内容
     */
    public String getContent() {
        return content;
    }

    /**
     * 跟进内容
     * @param content 跟进内容
     */
    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    /**
     * 员工id
     * @return userid 员工id
     */
    public Long getUserid() {
        return userid;
    }

    /**
     * 员工id
     * @param userid 员工id
     */
    public void setUserid(Long userid) {
        this.userid = userid;
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
     * 跟进时间
     * @return time 跟进时间
     */
    public Date getTime() {
        return time;
    }

    /**
     * 跟进时间
     * @param time 跟进时间
     */
    public void setTime(Date time) {
        this.time = time;
    }

    /**
     * 跟进方式
     * @return method 跟进方式
     */
    public String getMethod() {
        return method;
    }

    /**
     * 跟进方式
     * @param method 跟进方式
     */
    public void setMethod(String method) {
        this.method = method == null ? null : method.trim();
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
}