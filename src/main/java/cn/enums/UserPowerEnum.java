package cn.enums;

/**
 * Created by ZLY on 2017-04-16.
 */
public enum UserPowerEnum {
    NOT_ACTIVE_USER(0,"未激活用户"),
    LIMITED_USER(1,"受限用户（未经管理员授权）"),
    NORMAL_USER(2,"普通用户(销售员)"),
    ADMIN_USER(3,"管理员用户（销售经理）"),
    SUPER_USER(4,"超级管理员(总经理)")
    ;

    private int powerId;
    private String powerInfo;

    UserPowerEnum(int powerId, String powerInfo) {
        this.powerId = powerId;
        this.powerInfo = powerInfo;
    }

    public int getPowerId() {
        return powerId;
    }

    public String getPowerInfo() {
        return powerInfo;
    }

    public static UserPowerEnum stateOf(int powerId){
        for (UserPowerEnum power:values()){
            if (power.getPowerId()==powerId){
                return power;
            }
        }

        return null;
    }
}
