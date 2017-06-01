package cn.utils;

import org.junit.Test;

import static org.junit.Assert.*;

/**
 * Created by ZLY on 2017-05-20.
 */
public class CryptographyUtilTest {
    @Test
    public void md5() throws Exception {
        String userName = "曾悦";
        String password = "123456";
        String newPassowrd = CryptographyUtil.md5(password,userName);
        System.out.println(newPassowrd);
    }

}