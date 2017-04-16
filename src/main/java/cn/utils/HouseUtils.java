package cn.utils;

import cn.enums.ActionMailEnum;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;
import java.util.UUID;

/**
 * 工具类
 * Created by ZLY on 2017-04-14.
 */
public class HouseUtils {
    /**
     * 随机产生字符串
     * @return
     */
    public static String getUUID(){
        //去除随机产生的‘-’
        String uuid= UUID.randomUUID().toString().replace("-","");
        return  uuid;
    }

    /**
     * 发送邮件方法
     * @param to 给谁发送
     * @param code 邮件激活码
     */
    public static void senMail(String to,String code) throws MessagingException {
        //todo:周谦页面设计
        //创建连接对象
        //用户名
        String userName = ActionMailEnum.MAIL_FROM_USERNAME.getContext();
        //密码
        String pwd = ActionMailEnum.MAIL_FROM_PWD.getContext();
        //邮箱服务器

        String serviceUrl = ActionMailEnum.MAIL_SERVICE_SMTP.getContext();
        //激活链接
        String registerUrl = ActionMailEnum.REGISTER_URL.getContext();
        Properties props = new Properties();
        props.put("mail.smtp.host", serviceUrl);
        props.put("mail.smtp.port", "25");
        props.put("mail.smtp.auth", "true");
        Session session = Session.getInstance(props, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(userName,pwd);
            }
        });
        //创建邮件对象
        Message message = new MimeMessage(session);
        //设置发件人
        message.setFrom(new InternetAddress(userName));
        //设置收件人
        message.setRecipient(Message.RecipientType.TO,new InternetAddress(to));
        //设置主题
        message.setSubject(ActionMailEnum.MAIL_TITLE.getContext());
        //发送正文

        message.setContent(
                "<h1>"+ ActionMailEnum.CONTEXT_TITLE.getContext()+"</h1>"
                        +"<h2>"+ ActionMailEnum.CONTEXT_MAIN.getContext()+"</h2>"
                        +"<h3><a href="+registerUrl+""+code+">"+registerUrl+""+code+"</a></h3>",
                "text/html;charset=UTF-8");

        //发送激活邮件
        /*Transport transport = session.getTransport("smtp");
        transport.connect("mail");*/
        Transport.send(message);
    }
}
