package com.service;

import com.bean.Oldlogin;

public interface OldloginService {
	int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table oldlogin
     *
     * @mbggenerated
     */
    int insert(Oldlogin record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table oldlogin
     *
     * @mbggenerated
     */
    int insertSelective(Oldlogin record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table oldlogin
     *
     * @mbggenerated
     */
    Oldlogin selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table oldlogin
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(Oldlogin record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table oldlogin
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(Oldlogin record);
}
