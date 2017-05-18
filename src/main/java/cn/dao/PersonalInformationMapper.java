package cn.dao;

import cn.entity.PersonalInformation;

public interface PersonalInformationMapper {
    /**
     *
     * @mbggenerated 2017-05-18
     */
    int deleteByPrimaryKey(Long personId);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int insert(PersonalInformation record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int insertSelective(PersonalInformation record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    PersonalInformation selectByPrimaryKey(Long personId);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int updateByPrimaryKeySelective(PersonalInformation record);

    /**
     *
     * @mbggenerated 2017-05-18
     */
    int updateByPrimaryKey(PersonalInformation record);
}