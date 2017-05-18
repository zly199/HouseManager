package cn.entity;

public class Permission {
    /**
     * 权限id
     */
    private Integer permissionId;

    /**
     * 权限名
     */
    private String name;

    /**
     * 权限字符串
     */
    private String permissionChar;

    /**
     * 权限类型是类型还是url
     */
    private String type;

    /**
     * 权限执行的url，如果type为menu的时候，才有url
     */
    private String url;

    /**
     * 父权限的id
     */
    private Integer parentId;

    /**
     * 父权限的完整表达，如0/11/21
     */
    private String parentIds;

    /**
     * 权限id
     * @return permission_id 权限id
     */
    public Integer getPermissionId() {
        return permissionId;
    }

    /**
     * 权限id
     * @param permissionId 权限id
     */
    public void setPermissionId(Integer permissionId) {
        this.permissionId = permissionId;
    }

    /**
     * 权限名
     * @return name 权限名
     */
    public String getName() {
        return name;
    }

    /**
     * 权限名
     * @param name 权限名
     */
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    /**
     * 权限字符串
     * @return permission_char 权限字符串
     */
    public String getPermissionChar() {
        return permissionChar;
    }

    /**
     * 权限字符串
     * @param permissionChar 权限字符串
     */
    public void setPermissionChar(String permissionChar) {
        this.permissionChar = permissionChar == null ? null : permissionChar.trim();
    }

    /**
     * 权限类型是类型还是url
     * @return type 权限类型是类型还是url
     */
    public String getType() {
        return type;
    }

    /**
     * 权限类型是类型还是url
     * @param type 权限类型是类型还是url
     */
    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    /**
     * 权限执行的url，如果type为menu的时候，才有url
     * @return url 权限执行的url，如果type为menu的时候，才有url
     */
    public String getUrl() {
        return url;
    }

    /**
     * 权限执行的url，如果type为menu的时候，才有url
     * @param url 权限执行的url，如果type为menu的时候，才有url
     */
    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }

    /**
     * 父权限的id
     * @return parent_id 父权限的id
     */
    public Integer getParentId() {
        return parentId;
    }

    /**
     * 父权限的id
     * @param parentId 父权限的id
     */
    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    /**
     * 父权限的完整表达，如0/11/21
     * @return parent_ids 父权限的完整表达，如0/11/21
     */
    public String getParentIds() {
        return parentIds;
    }

    /**
     * 父权限的完整表达，如0/11/21
     * @param parentIds 父权限的完整表达，如0/11/21
     */
    public void setParentIds(String parentIds) {
        this.parentIds = parentIds == null ? null : parentIds.trim();
    }
}