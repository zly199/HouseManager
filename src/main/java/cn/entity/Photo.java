package cn.entity;

public class Photo {
    /**
     * 图片id
     */
    private Integer id;

    /**
     * 图片地址
     */
    private String url;

    /**
     * 房源id
     */
    private Integer houseid;

    /**
     * 图片id
     * @return id 图片id
     */
    public Integer getId() {
        return id;
    }

    /**
     * 图片id
     * @param id 图片id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 图片地址
     * @return url 图片地址
     */
    public String getUrl() {
        return url;
    }

    /**
     * 图片地址
     * @param url 图片地址
     */
    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }

    /**
     * 房源id
     * @return houseid 房源id
     */
    public Integer getHouseid() {
        return houseid;
    }

    /**
     * 房源id
     * @param houseid 房源id
     */
    public void setHouseid(Integer houseid) {
        this.houseid = houseid;
    }
}