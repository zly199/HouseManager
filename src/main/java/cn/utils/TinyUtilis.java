package cn.utils;

public class TinyUtilis {
    /**
     * 根据quantum生成x位的纯数字随机数
     * @param quantum
     * @return
     */
    public static String getNumberRandom(int quantum){
        StringBuilder sb = new StringBuilder();
        java.util.Random r=new java.util.Random();
        for (int i=0;i<quantum;i++){
            sb.append(r.nextInt(10));
        }
        return sb.toString();
    }
}
