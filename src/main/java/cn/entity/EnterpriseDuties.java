package cn.entity;

public class EnterpriseDuties {
    /**
     * 职务编号
     */
    private Byte enterpriseDutiesId;

    /**
     * 职务名称
     */
    private String dutiesName;

    /**
     * 底薪
     */
    private Integer basicSalary;

    /**
     * 级别
     */
    private Byte rank;

    /**
     * 职务属性
     */
    private String jobAttributes;

    /**
     * 职务编号
     * @return enterprise_duties_id 职务编号
     */
    public Byte getEnterpriseDutiesId() {
        return enterpriseDutiesId;
    }

    /**
     * 职务编号
     * @param enterpriseDutiesId 职务编号
     */
    public void setEnterpriseDutiesId(Byte enterpriseDutiesId) {
        this.enterpriseDutiesId = enterpriseDutiesId;
    }

    /**
     * 职务名称
     * @return duties_name 职务名称
     */
    public String getDutiesName() {
        return dutiesName;
    }

    /**
     * 职务名称
     * @param dutiesName 职务名称
     */
    public void setDutiesName(String dutiesName) {
        this.dutiesName = dutiesName == null ? null : dutiesName.trim();
    }

    /**
     * 底薪
     * @return basic_salary 底薪
     */
    public Integer getBasicSalary() {
        return basicSalary;
    }

    /**
     * 底薪
     * @param basicSalary 底薪
     */
    public void setBasicSalary(Integer basicSalary) {
        this.basicSalary = basicSalary;
    }

    /**
     * 级别
     * @return rank 级别
     */
    public Byte getRank() {
        return rank;
    }

    /**
     * 级别
     * @param rank 级别
     */
    public void setRank(Byte rank) {
        this.rank = rank;
    }

    /**
     * 职务属性
     * @return job_attributes 职务属性
     */
    public String getJobAttributes() {
        return jobAttributes;
    }

    /**
     * 职务属性
     * @param jobAttributes 职务属性
     */
    public void setJobAttributes(String jobAttributes) {
        this.jobAttributes = jobAttributes == null ? null : jobAttributes.trim();
    }
}