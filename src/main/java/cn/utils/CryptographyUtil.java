package cn.utils;

import org.apache.shiro.crypto.hash.Md5Hash;

/**
 * Created by ZLY on 2017-05-18.
 */
public class CryptographyUtil {
    /**
     * md5加密
     * @param str 要加密的字符串
     * @param salt 盐值
     * @return
     */
    public static String md5(String str,String salt){

        return new Md5Hash(str,salt).toString();
    }
}
