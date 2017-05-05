package cn.entity;

public class PersonPower {
    /**
     * 
     */
    private Long powerUserId;

    /**
     * 部门行政跨部权限
     */
    private String organizationId;

    /**
     * 
     * @return power_user_id 
     */
    public Long getPowerUserId() {
        return powerUserId;
    }

    /**
     * 
     * @param powerUserId 
     */
    public void setPowerUserId(Long powerUserId) {
        this.powerUserId = powerUserId;
    }

    /**
     * 部门行政跨部权限
     * @return organization_id 部门行政跨部权限
     */
    public String getOrganizationId() {
        return organizationId;
    }

    /**
     * 部门行政跨部权限
     * @param organizationId 部门行政跨部权限
     */
    public void setOrganizationId(String organizationId) {
        this.organizationId = organizationId == null ? null : organizationId.trim();
    }
}