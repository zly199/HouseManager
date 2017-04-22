package cn.enums;

/**
 * Created by ZLY on 2017-04-16.
 */
public enum ActionMailEnum {
    MAIL_TITLE("邮件标题","来自房产中介公司的激活邮件"),
    MAIL_FROM_USERNAME("邮件发送方用户名","houseadmin@rain594230.cn"),
    MAIL_FROM_PWD("邮件发送方密码","123456"),
    MAIL_SERVICE_SMTP("邮件smtp服务器地址","smtp.rain594230.cn"),
    //todo:周谦页面设计
    CONTEXT_MAIN("正文内容","来自房产中介公司的激活邮件"),
    CONTEXT_TITLE("正文标题","欢迎加入我公司！"),
    /*REGISTER_URL("激活地址前缀","http://www.rain594230.cn/activeUser/")*/
    REGISTER_URL("激活地址前缀","http://localhost:8080/HouseMgr/activeUser/")
    ;
    private String name;
    private String context;

    ActionMailEnum(String name, String context) {
        this.name = name;
        this.context = context;
    }

    public String getName() {
        return name;
    }

    public String getContext() {
        return context;
    }
    public static ActionMailEnum stateOf(String name){
        for (ActionMailEnum mail:values()){
            if (mail.getName().equals(name)){
                return mail;
            }
        }

        return null;
    }

}
