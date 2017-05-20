package cn.entity;

import java.util.Date;

public class FollowupHouse {
    /**
     * 房源跟进信息id
     */
    private Long id;

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
    private String houseid;

    /**
     * 跟进时间
     */
    private Date time;

    /**
     * 跟进方式
     */
    private String method;

    /**
     * 房源跟进信息id
     * @return id 房源跟进信息id
     */
    public Long getId() {
        return id;
    }

    /**
     * 房源跟进信息id
     * @param id 房源跟进信息id
     */
    public void setId(Long id) {
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
    public String getHouseid() {
        return houseid;
    }

    /**
     * 房源id
     * @param houseid 房源id
     */
    public void setHouseid(String houseid) {
        this.houseid = houseid == null ? null : houseid.trim();
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
}