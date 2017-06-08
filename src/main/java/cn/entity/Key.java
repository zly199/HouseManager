package cn.entity;

public class Key {
    /**
     * id
     */
    private Integer id;

    /**
     * 钥匙编号
     */
    private String number;

    /**
     * 钥匙名称
     */
    private String name;

    /**
     * 钥匙类别
     */
    private String type;

    /**
     * 保管门店id
     */
    private String organizationid;

    /**
     * 员工id
     */
    private Long userid;

    /**
     * 状态
     */
    private String status;

    /**
     * 备注
     */
    private String remark;

    public Key() {
    }

    public Key(Integer id, String number, String name, String type, String organizationid, Long userid, String status, String remark) {
        this.id = id;
        this.number = number;
        this.name = name;
        this.type = type;
        this.organizationid = organizationid;
        this.userid = userid;
        this.status = status;
        this.remark = remark;
    }

    /**
     * id
     * @return id id
     */
    public Integer getId() {
        return id;
    }

    /**
     * id
     * @param id id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 钥匙编号
     * @return number 钥匙编号
     */
    public String getNumber() {
        return number;
    }

    /**
     * 钥匙编号
     * @param number 钥匙编号
     */
    public void setNumber(String number) {
        this.number = number == null ? null : number.trim();
    }

    /**
     * 钥匙名称
     * @return name 钥匙名称
     */
    public String getName() {
        return name;
    }

    /**
     * 钥匙名称
     * @param name 钥匙名称
     */
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    /**
     * 钥匙类别
     * @return type 钥匙类别
     */
    public String getType() {
        return type;
    }

    /**
     * 钥匙类别
     * @param type 钥匙类别
     */
    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    /**
     * 保管门店id
     * @return organizationid 保管门店id
     */
    public String getOrganizationid() {
        return organizationid;
    }

    /**
     * 保管门店id
     * @param organizationid 保管门店id
     */
    public void setOrganizationid(String organizationid) {
        this.organizationid = organizationid == null ? null : organizationid.trim();
    }

    /**
     * 员工id
     * @return userid 员工id
     */
    public Long getUserid() {
        return userid;
    }

    /**
     * 员工id
     * @param userid 员工id
     */
    public void setUserid(Long userid) {
        this.userid = userid;
    }

    /**
     * 状态
     * @return status 状态
     */
    public String getStatus() {
        return status;
    }

    /**
     * 状态
     * @param status 状态
     */
    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    /**
     * 备注
     * @return remark 备注
     */
    public String getRemark() {
        return remark;
    }

    /**
     * 备注
     * @param remark 备注
     */
    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}