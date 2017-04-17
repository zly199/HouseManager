package cn.enums;

/**
 * Created by ZLY on 2017-04-16.
 */
public enum LoginModelEnum {
    REGISTER_SUCCESS("注册成功","注册成功，请到以下邮箱继续操作："),
    ACTIVE_URL_FAILED("注册失败","激活失败,链接过期或者不可用"),
    ACTIVE_SUCCESS("激活成功","恭喜您，激活成功，您可以登陆了"),
    ACTIVE_FAILED("激活失败","很抱歉，激活失败"),
    LOGIN_FAILED("登录失败","用户名或密码错误"),
    ;
    private String name;
    private String context;

    LoginModelEnum(String name, String context) {
        this.name = name;
        this.context = context;
    }

    public String getName() {
        return name;
    }

    public String getContext() {
        return context;
    }
    public static LoginModelEnum stateOf(String name){
        for (LoginModelEnum mail:values()){
            if (mail.getName().equals(name)){
                return mail;
            }
        }

        return null;
    }

}
