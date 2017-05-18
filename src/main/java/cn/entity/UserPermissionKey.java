package cn.entity;

public class UserPermissionKey {
    /**
     * 用户id
     */
    private Long userId;

    /**
     * 权限id
     */
    private Integer permissionId;

    /**
     * 用户id
     * @return user_id 用户id
     */
    public Long getUserId() {
        return userId;
    }

    /**
     * 用户id
     * @param userId 用户id
     */
    public void setUserId(Long userId) {
        this.userId = userId;
    }

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
}