package com.service;

import java.util.List;
import java.util.Map;

import com.bean.Remarkpicture;

public interface RemarkpictureService {
	List<Remarkpicture> selectByopinionidAll(Remarkpicture remarkpicture);
	int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table remarkpicture
     *
     * @mbggenerated
     */
    int insert(Remarkpicture record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table remarkpicture
     *
     * @mbggenerated
     */
    int insertSelective(Remarkpicture record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table remarkpicture
     *
     * @mbggenerated
     */
    Remarkpicture selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table remarkpicture
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(Remarkpicture record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table remarkpicture
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(Remarkpicture record);
    
    int insertRemarkpictureList(Map map);
}