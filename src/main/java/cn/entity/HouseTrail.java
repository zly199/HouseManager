package cn.entity;

public class HouseTrail {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house_trail.house_trail
     *
     * @mbggenerated
     */
    private Integer houseTrail;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house_trail.house_state
     *
     * @mbggenerated
     */
    private String houseState;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house_trail.trail_user
     *
     * @mbggenerated
     */
    private String trailUser;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house_trail.house_trail
     *
     * @return the value of house_trail.house_trail
     *
     * @mbggenerated
     */
    public Integer getHouseTrail() {
        return houseTrail;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house_trail.house_trail
     *
     * @param houseTrail the value for house_trail.house_trail
     *
     * @mbggenerated
     */
    public void setHouseTrail(Integer houseTrail) {
        this.houseTrail = houseTrail;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house_trail.house_state
     *
     * @return the value of house_trail.house_state
     *
     * @mbggenerated
     */
    public String getHouseState() {
        return houseState;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house_trail.house_state
     *
     * @param houseState the value for house_trail.house_state
     *
     * @mbggenerated
     */
    public void setHouseState(String houseState) {
        this.houseState = houseState == null ? null : houseState.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house_trail.trail_user
     *
     * @return the value of house_trail.trail_user
     *
     * @mbggenerated
     */
    public String getTrailUser() {
        return trailUser;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house_trail.trail_user
     *
     * @param trailUser the value for house_trail.trail_user
     *
     * @mbggenerated
     */
    public void setTrailUser(String trailUser) {
        this.trailUser = trailUser == null ? null : trailUser.trim();
    }
}