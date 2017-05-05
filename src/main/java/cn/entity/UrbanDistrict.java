package cn.entity;

public class UrbanDistrict {
    /**
     * 城区或商圈id
     */
    private Integer idurbanDistrictId;

    /**
     * 城区或商圈的名字
     */
    private String urbanDistrictName;

    /**
     * 父节点（城区的父节点为0），商圈的父节点为对应的城区
     */
    private Integer parentIdurbanDistrict;

    /**
     * 城区或商圈id
     * @return idurban_district_id 城区或商圈id
     */
    public Integer getIdurbanDistrictId() {
        return idurbanDistrictId;
    }

    /**
     * 城区或商圈id
     * @param idurbanDistrictId 城区或商圈id
     */
    public void setIdurbanDistrictId(Integer idurbanDistrictId) {
        this.idurbanDistrictId = idurbanDistrictId;
    }

    /**
     * 城区或商圈的名字
     * @return urban_district_name 城区或商圈的名字
     */
    public String getUrbanDistrictName() {
        return urbanDistrictName;
    }

    /**
     * 城区或商圈的名字
     * @param urbanDistrictName 城区或商圈的名字
     */
    public void setUrbanDistrictName(String urbanDistrictName) {
        this.urbanDistrictName = urbanDistrictName == null ? null : urbanDistrictName.trim();
    }

    /**
     * 父节点（城区的父节点为0），商圈的父节点为对应的城区
     * @return parent_idurban_district 父节点（城区的父节点为0），商圈的父节点为对应的城区
     */
    public Integer getParentIdurbanDistrict() {
        return parentIdurbanDistrict;
    }

    /**
     * 父节点（城区的父节点为0），商圈的父节点为对应的城区
     * @param parentIdurbanDistrict 父节点（城区的父节点为0），商圈的父节点为对应的城区
     */
    public void setParentIdurbanDistrict(Integer parentIdurbanDistrict) {
        this.parentIdurbanDistrict = parentIdurbanDistrict;
    }
}