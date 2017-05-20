package cn.entity;

import java.util.Date;

public class FollowupClient {
    /**
     * 员工id
     */
    private Long id;

    /**
     * 跟进内容
     */
    private String contents;

    /**
     * 员工id
     */
    private Long userid;

    /**
     * 跟进时间
     */
    private Date time;

    /**
     * 客户id
     */
    private Integer clientid;

    /**
     * 员工id
     * @return id 员工id
     */
    public Long getId() {
        return id;
    }

    /**
     * 员工id
     * @param id 员工id
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * 跟进内容
     * @return contents 跟进内容
     */
    public String getContents() {
        return contents;
    }

    /**
     * 跟进内容
     * @param contents 跟进内容
     */
    public void setContents(String contents) {
        this.contents = contents == null ? null : contents.trim();
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
     * 客户id
     * @return clientid 客户id
     */
    public Integer getClientid() {
        return clientid;
    }

    /**
     * 客户id
     * @param clientid 客户id
     */
    public void setClientid(Integer clientid) {
        this.clientid = clientid;
    }
}