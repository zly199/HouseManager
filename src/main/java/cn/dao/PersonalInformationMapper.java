package cn.dao;

import cn.entity.PersonalInformation;

public interface PersonalInformationMapper {
    /**
     *
     * @mbggenerated 2017-05-05
     */
    int deleteByPrimaryKey(Long personId);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int insert(PersonalInformation record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int insertSelective(PersonalInformation record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    PersonalInformation selectByPrimaryKey(Long personId);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int updateByPrimaryKeySelective(PersonalInformation record);

    /**
     *
     * @mbggenerated 2017-05-05
     */
    int updateByPrimaryKey(PersonalInformation record);
}