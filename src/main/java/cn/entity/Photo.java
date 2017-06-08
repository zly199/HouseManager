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
     * 不是房源
     */
    private Long userid;

    public Photo(Integer id, String url, Long userid) {
        this.id = id;
        this.url = url;
        this.userid = userid;
    }

    public Photo() {
    }

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
     * 不是房源
     * @return userId 不是房源
     */
    public Long getUserid() {
        return userid;
    }

    /**
     * 不是房源
     * @param userid 不是房源
     */
    public void setUserid(Long userid) {
        this.userid = userid;
    }
}