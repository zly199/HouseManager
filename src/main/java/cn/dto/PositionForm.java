package cn.dto;

import java.io.Serializable;

public class PositionForm implements Serializable{
    public String x;
    public String y;

    public String getX() {
        return x;
    }

    public void setX(String x) {
        this.x = x;
    }

    public String getY() {
        return y;
    }

    public void setY(String y) {
        this.y = y;
    }
}
