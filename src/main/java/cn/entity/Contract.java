package cn.entity;

public class Contract {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column contract.contract_id
     *
     * @mbggenerated
     */
    private Integer contractId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column contract.contract_content
     *
     * @mbggenerated
     */
    private String contractContent;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column contract.contract_id
     *
     * @return the value of contract.contract_id
     *
     * @mbggenerated
     */
    public Integer getContractId() {
        return contractId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column contract.contract_id
     *
     * @param contractId the value for contract.contract_id
     *
     * @mbggenerated
     */
    public void setContractId(Integer contractId) {
        this.contractId = contractId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column contract.contract_content
     *
     * @return the value of contract.contract_content
     *
     * @mbggenerated
     */
    public String getContractContent() {
        return contractContent;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column contract.contract_content
     *
     * @param contractContent the value for contract.contract_content
     *
     * @mbggenerated
     */
    public void setContractContent(String contractContent) {
        this.contractContent = contractContent == null ? null : contractContent.trim();
    }
}