package cn.utils;

import org.junit.Test;

import static org.junit.Assert.*;

/**
 * Created by ZLY on 2017-04-16.
 */
public class HouseUtilsTest {
    @Test
    public void senMail() throws Exception {
        HouseUtils.senMail("post@rain594230.cn","testCode");
    }

}