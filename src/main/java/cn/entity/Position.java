package cn.entity;

public class Position {
    /**
     * 坐标id
     */
    private String posizitionid;

    /**
     * x坐标
     */
    private String posizitionx;

    /**
     * y坐标
     */
    private String posizitiony;

    /**
     * 房源id
     */
    private String housePositionid;

    /**
     * 坐标id
     * @return posizitionId 坐标id
     */
    public String getPosizitionid() {
        return posizitionid;
    }

    /**
     * 坐标id
     * @param posizitionid 坐标id
     */
    public void setPosizitionid(String posizitionid) {
        this.posizitionid = posizitionid == null ? null : posizitionid.trim();
    }

    /**
     * x坐标
     * @return posizitionX x坐标
     */
    public String getPosizitionx() {
        return posizitionx;
    }

    /**
     * x坐标
     * @param posizitionx x坐标
     */
    public void setPosizitionx(String posizitionx) {
        this.posizitionx = posizitionx == null ? null : posizitionx.trim();
    }

    /**
     * y坐标
     * @return posizitionY y坐标
     */
    public String getPosizitiony() {
        return posizitiony;
    }

    /**
     * y坐标
     * @param posizitiony y坐标
     */
    public void setPosizitiony(String posizitiony) {
        this.posizitiony = posizitiony == null ? null : posizitiony.trim();
    }

    /**
     * 房源id
     * @return house_positionId 房源id
     */
    public String getHousePositionid() {
        return housePositionid;
    }

    /**
     * 房源id
     * @param housePositionid 房源id
     */
    public void setHousePositionid(String housePositionid) {
        this.housePositionid = housePositionid == null ? null : housePositionid.trim();
    }
}