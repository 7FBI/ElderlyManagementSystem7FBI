package com.service;

import com.bean.Infopicture;

public interface InfopictureService {
	/**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table infopicture
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table infopicture
     *
     * @mbggenerated
     */
    int insert(Infopicture record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table infopicture
     *
     * @mbggenerated
     */
    int insertSelective(Infopicture record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table infopicture
     *
     * @mbggenerated
     */
    Infopicture selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table infopicture
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(Infopicture record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table infopicture
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(Infopicture record);
}
