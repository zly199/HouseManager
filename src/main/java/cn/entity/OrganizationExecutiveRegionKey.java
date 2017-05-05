package cn.entity;

public class OrganizationExecutiveRegionKey {
    /**
     * 
     */
    private String organizationExecutiveRegionId;

    /**
     * 
     */
    private String organizationId;

    /**
     * 
     * @return organization_executive_region_id 
     */
    public String getOrganizationExecutiveRegionId() {
        return organizationExecutiveRegionId;
    }

    /**
     * 
     * @param organizationExecutiveRegionId 
     */
    public void setOrganizationExecutiveRegionId(String organizationExecutiveRegionId) {
        this.organizationExecutiveRegionId = organizationExecutiveRegionId == null ? null : organizationExecutiveRegionId.trim();
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
}