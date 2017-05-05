package cn.entity;

import java.util.Date;

public class UserAbnormal {
    /**
     * 异动id
     */
    private Integer abnormalId;

    /**
     * 异动发生时间
     */
    private Date actionTime;

    /**
     * 异动类别
     */
    private String actionStyle;

    /**
     * 旧数据
     */
    private String oldData;

    /**
     * 新数据
     */
    private String newData;

    /**
     * 
     */
    private Long abnormalUser;

    /**
     * 异动id
     * @return abnormal_id 异动id
     */
    public Integer getAbnormalId() {
        return abnormalId;
    }

    /**
     * 异动id
     * @param abnormalId 异动id
     */
    public void setAbnormalId(Integer abnormalId) {
        this.abnormalId = abnormalId;
    }

    /**
     * 异动发生时间
     * @return action_time 异动发生时间
     */
    public Date getActionTime() {
        return actionTime;
    }

    /**
     * 异动发生时间
     * @param actionTime 异动发生时间
     */
    public void setActionTime(Date actionTime) {
        this.actionTime = actionTime;
    }

    /**
     * 异动类别
     * @return action_style 异动类别
     */
    public String getActionStyle() {
        return actionStyle;
    }

    /**
     * 异动类别
     * @param actionStyle 异动类别
     */
    public void setActionStyle(String actionStyle) {
        this.actionStyle = actionStyle == null ? null : actionStyle.trim();
    }

    /**
     * 旧数据
     * @return old_data 旧数据
     */
    public String getOldData() {
        return oldData;
    }

    /**
     * 旧数据
     * @param oldData 旧数据
     */
    public void setOldData(String oldData) {
        this.oldData = oldData == null ? null : oldData.trim();
    }

    /**
     * 新数据
     * @return new_data 新数据
     */
    public String getNewData() {
        return newData;
    }

    /**
     * 新数据
     * @param newData 新数据
     */
    public void setNewData(String newData) {
        this.newData = newData == null ? null : newData.trim();
    }

    /**
     * 
     * @return abnormal_user 
     */
    public Long getAbnormalUser() {
        return abnormalUser;
    }

    /**
     * 
     * @param abnormalUser 
     */
    public void setAbnormalUser(Long abnormalUser) {
        this.abnormalUser = abnormalUser;
    }
}