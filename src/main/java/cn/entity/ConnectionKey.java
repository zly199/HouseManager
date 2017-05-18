package cn.entity;

public class ConnectionKey {
    /**
     * 联系方式
     */
    private Long connection;

    /**
     * 联系人
     */
    private Long connectionUser;

    /**
     * 联系方式
     * @return connection 联系方式
     */
    public Long getConnection() {
        return connection;
    }

    /**
     * 联系方式
     * @param connection 联系方式
     */
    public void setConnection(Long connection) {
        this.connection = connection;
    }

    /**
     * 联系人
     * @return connection_user 联系人
     */
    public Long getConnectionUser() {
        return connectionUser;
    }

    /**
     * 联系人
     * @param connectionUser 联系人
     */
    public void setConnectionUser(Long connectionUser) {
        this.connectionUser = connectionUser;
    }
}