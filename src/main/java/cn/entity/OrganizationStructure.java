package cn.entity;

public class OrganizationStructure {
    /**
     * 组织机构id
     */
    private String organizationId;

    /**
     * 组织机构名称
     */
    private String organizationName;

    /**
     * 上一级组织结构id\n
     */
    private String parentId;

    /**
     * 上一级完整的id
     */
    private String parentIds;

    /**
     * 房源/客源编号前缀（2-4为答谢字母或者数字）
     */
    private String numberPre;

    /**
     * 部门类型
     */
    private String organizationStyle;

    /**
     * 是否做业务（记业绩）
     */
    private Boolean isBusiness;

    /**
     * 门店属性
     */
    private String storeAttributes;

    /**
     * 是否为门店
     */
    private Boolean isStore;

    /**
     * 部门电话
     */
    private Long departmentPhone;

    /**
     * 部门地址
     */
    private String departmentAddress;

    /**
     * 部门坐标
     */
    private String departmentCoordinate;

    /**
     * 归属共享圈
     */
    private String sharingCircle;

    /**
     * 应收业绩指标（元/月）
     */
    private Integer planPerformance;

    /**
     * 实收业绩指标（元/月）
     */
    private Integer actualPerformance;

    /**
     * 增加时间
     */
    private String addTime;

    /**
     * 门店电话
     */
    private String departmentNumber;

    /**
     * 分机范围(xxx-xxxx)
     */
    private String extensionRange;

    /**
     * 组织机构id
     * @return organization_id 组织机构id
     */
    public String getOrganizationId() {
        return organizationId;
    }

    /**
     * 组织机构id
     * @param organizationId 组织机构id
     */
    public void setOrganizationId(String organizationId) {
        this.organizationId = organizationId == null ? null : organizationId.trim();
    }

    /**
     * 组织机构名称
     * @return organization_name 组织机构名称
     */
    public String getOrganizationName() {
        return organizationName;
    }

    /**
     * 组织机构名称
     * @param organizationName 组织机构名称
     */
    public void setOrganizationName(String organizationName) {
        this.organizationName = organizationName == null ? null : organizationName.trim();
    }

    /**
     * 上一级组织结构id\n
     * @return parent_id 上一级组织结构id\n
     */
    public String getParentId() {
        return parentId;
    }

    /**
     * 上一级组织结构id\n
     * @param parentId 上一级组织结构id\n
     */
    public void setParentId(String parentId) {
        this.parentId = parentId == null ? null : parentId.trim();
    }

    /**
     * 上一级完整的id
     * @return parent_ids 上一级完整的id
     */
    public String getParentIds() {
        return parentIds;
    }

    /**
     * 上一级完整的id
     * @param parentIds 上一级完整的id
     */
    public void setParentIds(String parentIds) {
        this.parentIds = parentIds == null ? null : parentIds.trim();
    }

    /**
     * 房源/客源编号前缀（2-4为答谢字母或者数字）
     * @return number_pre 房源/客源编号前缀（2-4为答谢字母或者数字）
     */
    public String getNumberPre() {
        return numberPre;
    }

    /**
     * 房源/客源编号前缀（2-4为答谢字母或者数字）
     * @param numberPre 房源/客源编号前缀（2-4为答谢字母或者数字）
     */
    public void setNumberPre(String numberPre) {
        this.numberPre = numberPre == null ? null : numberPre.trim();
    }

    /**
     * 部门类型
     * @return organization_style 部门类型
     */
    public String getOrganizationStyle() {
        return organizationStyle;
    }

    /**
     * 部门类型
     * @param organizationStyle 部门类型
     */
    public void setOrganizationStyle(String organizationStyle) {
        this.organizationStyle = organizationStyle == null ? null : organizationStyle.trim();
    }

    /**
     * 是否做业务（记业绩）
     * @return is_business 是否做业务（记业绩）
     */
    public Boolean getIsBusiness() {
        return isBusiness;
    }

    /**
     * 是否做业务（记业绩）
     * @param isBusiness 是否做业务（记业绩）
     */
    public void setIsBusiness(Boolean isBusiness) {
        this.isBusiness = isBusiness;
    }

    /**
     * 门店属性
     * @return store_attributes 门店属性
     */
    public String getStoreAttributes() {
        return storeAttributes;
    }

    /**
     * 门店属性
     * @param storeAttributes 门店属性
     */
    public void setStoreAttributes(String storeAttributes) {
        this.storeAttributes = storeAttributes == null ? null : storeAttributes.trim();
    }

    /**
     * 是否为门店
     * @return is_store 是否为门店
     */
    public Boolean getIsStore() {
        return isStore;
    }

    /**
     * 是否为门店
     * @param isStore 是否为门店
     */
    public void setIsStore(Boolean isStore) {
        this.isStore = isStore;
    }

    /**
     * 部门电话
     * @return department_phone 部门电话
     */
    public Long getDepartmentPhone() {
        return departmentPhone;
    }

    /**
     * 部门电话
     * @param departmentPhone 部门电话
     */
    public void setDepartmentPhone(Long departmentPhone) {
        this.departmentPhone = departmentPhone;
    }

    /**
     * 部门地址
     * @return department_address 部门地址
     */
    public String getDepartmentAddress() {
        return departmentAddress;
    }

    /**
     * 部门地址
     * @param departmentAddress 部门地址
     */
    public void setDepartmentAddress(String departmentAddress) {
        this.departmentAddress = departmentAddress == null ? null : departmentAddress.trim();
    }

    /**
     * 部门坐标
     * @return department_coordinate 部门坐标
     */
    public String getDepartmentCoordinate() {
        return departmentCoordinate;
    }

    /**
     * 部门坐标
     * @param departmentCoordinate 部门坐标
     */
    public void setDepartmentCoordinate(String departmentCoordinate) {
        this.departmentCoordinate = departmentCoordinate == null ? null : departmentCoordinate.trim();
    }

    /**
     * 归属共享圈
     * @return sharing_circle 归属共享圈
     */
    public String getSharingCircle() {
        return sharingCircle;
    }

    /**
     * 归属共享圈
     * @param sharingCircle 归属共享圈
     */
    public void setSharingCircle(String sharingCircle) {
        this.sharingCircle = sharingCircle == null ? null : sharingCircle.trim();
    }

    /**
     * 应收业绩指标（元/月）
     * @return plan_performance 应收业绩指标（元/月）
     */
    public Integer getPlanPerformance() {
        return planPerformance;
    }

    /**
     * 应收业绩指标（元/月）
     * @param planPerformance 应收业绩指标（元/月）
     */
    public void setPlanPerformance(Integer planPerformance) {
        this.planPerformance = planPerformance;
    }

    /**
     * 实收业绩指标（元/月）
     * @return Actual_performance 实收业绩指标（元/月）
     */
    public Integer getActualPerformance() {
        return actualPerformance;
    }

    /**
     * 实收业绩指标（元/月）
     * @param actualPerformance 实收业绩指标（元/月）
     */
    public void setActualPerformance(Integer actualPerformance) {
        this.actualPerformance = actualPerformance;
    }

    /**
     * 增加时间
     * @return add_time 增加时间
     */
    public String getAddTime() {
        return addTime;
    }

    /**
     * 增加时间
     * @param addTime 增加时间
     */
    public void setAddTime(String addTime) {
        this.addTime = addTime == null ? null : addTime.trim();
    }

    /**
     * 门店电话
     * @return department_number 门店电话
     */
    public String getDepartmentNumber() {
        return departmentNumber;
    }

    /**
     * 门店电话
     * @param departmentNumber 门店电话
     */
    public void setDepartmentNumber(String departmentNumber) {
        this.departmentNumber = departmentNumber == null ? null : departmentNumber.trim();
    }

    /**
     * 分机范围(xxx-xxxx)
     * @return extension_range 分机范围(xxx-xxxx)
     */
    public String getExtensionRange() {
        return extensionRange;
    }

    /**
     * 分机范围(xxx-xxxx)
     * @param extensionRange 分机范围(xxx-xxxx)
     */
    public void setExtensionRange(String extensionRange) {
        this.extensionRange = extensionRange == null ? null : extensionRange.trim();
    }
}