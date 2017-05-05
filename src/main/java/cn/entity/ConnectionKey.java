package cn.entity;

public class ConnectionKey {
    /**
     * 联系方式
     */
    private Long connection;

    /**
     * 
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
     * 
     * @return connection_user 
     */
    public Long getConnectionUser() {
        return connectionUser;
    }

    /**
     * 
     * @param connectionUser 
     */
    public void setConnectionUser(Long connectionUser) {
        this.connectionUser = connectionUser;
    }
}