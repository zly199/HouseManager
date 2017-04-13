package cn.dto;

import java.io.Serializable;

/**
 * Created by ZLY on 2017-04-10.
 */
public class LoginForm implements Serializable {
    private int userId;
    private String password;

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
