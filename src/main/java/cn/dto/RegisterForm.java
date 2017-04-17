package cn.dto;

import java.io.Serializable;

/**
 * Created by ZLY on 2017-04-13.
 */
public class RegisterForm implements Serializable{

    private String username;

    private String password;

    private String email;

    private int userAge;

    private long userPhone;

    public int getUserAge() {
        return userAge;
    }

    public void setUserAge(int userAge) {
        this.userAge = userAge;
    }

    public long getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(long userPhone) {
        this.userPhone = userPhone;
    }

    public String getUsername() {

        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "RegisterForm{" +
                "username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", email='" + email + '\'' +
                ", userAge=" + userAge +
                ", userPhone=" + userPhone +
                '}';
    }
}
