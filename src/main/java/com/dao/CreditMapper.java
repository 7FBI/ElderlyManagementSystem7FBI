package com.dao;

import com.bean.Credit;

public interface CreditMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table credit
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(String uid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table credit
     *
     * @mbggenerated
     */
    int insert(Credit record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table credit
     *
     * @mbggenerated
     */
    int insertSelective(Credit record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table credit
     *
     * @mbggenerated
     */
    Credit selectByPrimaryKey(String uid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table credit
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(Credit record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table credit
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(Credit record);
}