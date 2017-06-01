package cn.entity;

import java.io.Serializable;

public class HouseOwner implements Serializable{
    /**
     * id
     */
    private Integer id;

    /**
     * 姓名
     */
    private String name;

    /**
     * 联系方式1
     */
    private Long firstPhone;

    /**
     * 联系方式2
     */
    private Long secondPhone;

    /**
     * 证件
     */
    private String idCard;

    /**
     * 备注
     */
    private String comment;

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
     * 姓名
     * @return name 姓名
     */
    public String getName() {
        return name;
    }

    /**
     * 姓名
     * @param name 姓名
     */
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    /**
     * 联系方式1
     * @return first_phone 联系方式1
     */
    public Long getFirstPhone() {
        return firstPhone;
    }

    /**
     * 联系方式1
     * @param firstPhone 联系方式1
     */
    public void setFirstPhone(Long firstPhone) {
        this.firstPhone = firstPhone;
    }

    /**
     * 联系方式2
     * @return second_phone 联系方式2
     */
    public Long getSecondPhone() {
        return secondPhone;
    }

    /**
     * 联系方式2
     * @param secondPhone 联系方式2
     */
    public void setSecondPhone(Long secondPhone) {
        this.secondPhone = secondPhone;
    }

    /**
     * 证件
     * @return id_card 证件
     */
    public String getIdCard() {
        return idCard;
    }

    /**
     * 证件
     * @param idCard 证件
     */
    public void setIdCard(String idCard) {
        this.idCard = idCard == null ? null : idCard.trim();
    }

    /**
     * 备注
     * @return comment 备注
     */
    public String getComment() {
        return comment;
    }

    /**
     * 备注
     * @param comment 备注
     */
    public void setComment(String comment) {
        this.comment = comment == null ? null : comment.trim();
    }
}