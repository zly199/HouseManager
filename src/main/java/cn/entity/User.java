package cn.entity;

public class User {
    /**
     * 员工编号
     */
    private Long userId;

    /**
     * 
     */
    private String userName;

    /**
     * 
     */
    private String password;

    /**
     * 员工职务
     */
    private Byte roleId;

    /**
     * 
     */
    private Boolean locked;

    /**
     * 员工编号
     * @return user_id 员工编号
     */
    public Long getUserId() {
        return userId;
    }

    /**
     * 员工编号
     * @param userId 员工编号
     */
    public void setUserId(Long userId) {
        this.userId = userId;
    }

    /**
     * 
     * @return user_name 
     */
    public String getUserName() {
        return userName;
    }

    /**
     * 
     * @param userName 
     */
    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    /**
     * 
     * @return password 
     */
    public String getPassword() {
        return password;
    }

    /**
     * 
     * @param password 
     */
    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    /**
     * 员工职务
     * @return role_id 员工职务
     */
    public Byte getRoleId() {
        return roleId;
    }

    /**
     * 员工职务
     * @param roleId 员工职务
     */
    public void setRoleId(Byte roleId) {
        this.roleId = roleId;
    }

    /**
     * 
     * @return locked 
     */
    public Boolean getLocked() {
        return locked;
    }

    /**
     * 
     * @param locked 
     */
    public void setLocked(Boolean locked) {
        this.locked = locked;
    }

    @Override
    public String toString() {
        return "User{" +
                "userId=" + userId +
                ", userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                ", roleId=" + roleId +
                ", locked=" + locked +
                '}';
    }
}