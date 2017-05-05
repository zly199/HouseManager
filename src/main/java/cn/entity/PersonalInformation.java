package cn.entity;

import java.util.Date;

public class PersonalInformation {
    /**
     * 个人信息编号
     */
    private Long personId;

    /**
     * 身份证号
     */
    private Long idCard;

    /**
     * 民族
     */
    private String nation;

    /**
     * 电子邮件
     */
    private String email;

    /**
     * 联系地址
     */
    private String address;

    /**
     * 银行账号
     */
    private String bankAccount;

    /**
     * 个人签名
     */
    private String signature;

    /**
     * 个人简介
     */
    private String resume;

    /**
     * 性别
     */
    private String sex;

    /**
     * 籍贯
     */
    private String nativePlace;

    /**
     * 生日
     */
    private Date birthday;

    /**
     * 政治面貌
     */
    private String politicalStatus;

    /**
     * 学历
     */
    private String educationalBackground;

    /**
     * 
     */
    private String personalInformationcol;

    /**
     * 毕业院校
     */
    private String graduateInstitutions;

    /**
     * 专业
     */
    private String major;

    /**
     * 备注
     */
    private String tip;

    /**
     * 附件地址
     */
    private String attachment;

    /**
     * 个人信息编号
     * @return person_id 个人信息编号
     */
    public Long getPersonId() {
        return personId;
    }

    /**
     * 个人信息编号
     * @param personId 个人信息编号
     */
    public void setPersonId(Long personId) {
        this.personId = personId;
    }

    /**
     * 身份证号
     * @return id_card 身份证号
     */
    public Long getIdCard() {
        return idCard;
    }

    /**
     * 身份证号
     * @param idCard 身份证号
     */
    public void setIdCard(Long idCard) {
        this.idCard = idCard;
    }

    /**
     * 民族
     * @return nation 民族
     */
    public String getNation() {
        return nation;
    }

    /**
     * 民族
     * @param nation 民族
     */
    public void setNation(String nation) {
        this.nation = nation == null ? null : nation.trim();
    }

    /**
     * 电子邮件
     * @return email 电子邮件
     */
    public String getEmail() {
        return email;
    }

    /**
     * 电子邮件
     * @param email 电子邮件
     */
    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    /**
     * 联系地址
     * @return address 联系地址
     */
    public String getAddress() {
        return address;
    }

    /**
     * 联系地址
     * @param address 联系地址
     */
    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    /**
     * 银行账号
     * @return bank_account 银行账号
     */
    public String getBankAccount() {
        return bankAccount;
    }

    /**
     * 银行账号
     * @param bankAccount 银行账号
     */
    public void setBankAccount(String bankAccount) {
        this.bankAccount = bankAccount == null ? null : bankAccount.trim();
    }

    /**
     * 个人签名
     * @return signature 个人签名
     */
    public String getSignature() {
        return signature;
    }

    /**
     * 个人签名
     * @param signature 个人签名
     */
    public void setSignature(String signature) {
        this.signature = signature == null ? null : signature.trim();
    }

    /**
     * 个人简介
     * @return resume 个人简介
     */
    public String getResume() {
        return resume;
    }

    /**
     * 个人简介
     * @param resume 个人简介
     */
    public void setResume(String resume) {
        this.resume = resume == null ? null : resume.trim();
    }

    /**
     * 性别
     * @return sex 性别
     */
    public String getSex() {
        return sex;
    }

    /**
     * 性别
     * @param sex 性别
     */
    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    /**
     * 籍贯
     * @return native_place 籍贯
     */
    public String getNativePlace() {
        return nativePlace;
    }

    /**
     * 籍贯
     * @param nativePlace 籍贯
     */
    public void setNativePlace(String nativePlace) {
        this.nativePlace = nativePlace == null ? null : nativePlace.trim();
    }

    /**
     * 生日
     * @return birthday 生日
     */
    public Date getBirthday() {
        return birthday;
    }

    /**
     * 生日
     * @param birthday 生日
     */
    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    /**
     * 政治面貌
     * @return political_status 政治面貌
     */
    public String getPoliticalStatus() {
        return politicalStatus;
    }

    /**
     * 政治面貌
     * @param politicalStatus 政治面貌
     */
    public void setPoliticalStatus(String politicalStatus) {
        this.politicalStatus = politicalStatus == null ? null : politicalStatus.trim();
    }

    /**
     * 学历
     * @return educational_background 学历
     */
    public String getEducationalBackground() {
        return educationalBackground;
    }

    /**
     * 学历
     * @param educationalBackground 学历
     */
    public void setEducationalBackground(String educationalBackground) {
        this.educationalBackground = educationalBackground == null ? null : educationalBackground.trim();
    }

    /**
     * 
     * @return personal_informationcol 
     */
    public String getPersonalInformationcol() {
        return personalInformationcol;
    }

    /**
     * 
     * @param personalInformationcol 
     */
    public void setPersonalInformationcol(String personalInformationcol) {
        this.personalInformationcol = personalInformationcol == null ? null : personalInformationcol.trim();
    }

    /**
     * 毕业院校
     * @return graduate_institutions 毕业院校
     */
    public String getGraduateInstitutions() {
        return graduateInstitutions;
    }

    /**
     * 毕业院校
     * @param graduateInstitutions 毕业院校
     */
    public void setGraduateInstitutions(String graduateInstitutions) {
        this.graduateInstitutions = graduateInstitutions == null ? null : graduateInstitutions.trim();
    }

    /**
     * 专业
     * @return major 专业
     */
    public String getMajor() {
        return major;
    }

    /**
     * 专业
     * @param major 专业
     */
    public void setMajor(String major) {
        this.major = major == null ? null : major.trim();
    }

    /**
     * 备注
     * @return tip 备注
     */
    public String getTip() {
        return tip;
    }

    /**
     * 备注
     * @param tip 备注
     */
    public void setTip(String tip) {
        this.tip = tip == null ? null : tip.trim();
    }

    /**
     * 附件地址
     * @return attachment 附件地址
     */
    public String getAttachment() {
        return attachment;
    }

    /**
     * 附件地址
     * @param attachment 附件地址
     */
    public void setAttachment(String attachment) {
        this.attachment = attachment == null ? null : attachment.trim();
    }
}