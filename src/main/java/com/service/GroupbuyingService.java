package com.service;

import com.bean.Groupbuying;

public interface GroupbuyingService {
	Groupbuying selectByGroupBuyPid(Groupbuying groupbuying);
	/**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table groupbuying
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table groupbuying
     *
     * @mbggenerated
     */
    int insert(Groupbuying record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table groupbuying
     *
     * @mbggenerated
     */
    int insertSelective(Groupbuying record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table groupbuying
     *
     * @mbggenerated
     */
    Groupbuying selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table groupbuying
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(Groupbuying record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table groupbuying
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(Groupbuying record);
}
