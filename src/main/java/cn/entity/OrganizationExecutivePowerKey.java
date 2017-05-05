package cn.entity;

public class OrganizationExecutivePowerKey {
    /**
     * 权限拥有部门id
     */
    private String organizationExecutivePowerId;

    /**
     * 权限被拥有部门（此部门的房源/客源是否可以被权限拥有部门查看）
     */
    private String organizationId;

    /**
     * 权限拥有部门id
     * @return organization_executive_power_id 权限拥有部门id
     */
    public String getOrganizationExecutivePowerId() {
        return organizationExecutivePowerId;
    }

    /**
     * 权限拥有部门id
     * @param organizationExecutivePowerId 权限拥有部门id
     */
    public void setOrganizationExecutivePowerId(String organizationExecutivePowerId) {
        this.organizationExecutivePowerId = organizationExecutivePowerId == null ? null : organizationExecutivePowerId.trim();
    }

    /**
     * 权限被拥有部门（此部门的房源/客源是否可以被权限拥有部门查看）
     * @return organization_id 权限被拥有部门（此部门的房源/客源是否可以被权限拥有部门查看）
     */
    public String getOrganizationId() {
        return organizationId;
    }

    /**
     * 权限被拥有部门（此部门的房源/客源是否可以被权限拥有部门查看）
     * @param organizationId 权限被拥有部门（此部门的房源/客源是否可以被权限拥有部门查看）
     */
    public void setOrganizationId(String organizationId) {
        this.organizationId = organizationId == null ? null : organizationId.trim();
    }
}