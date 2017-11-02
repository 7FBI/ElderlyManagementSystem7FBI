package com.dao;

import java.util.List;

import com.bean.Activepicutre;

public interface ActivepicutreMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table activepicutre
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table activepicutre
     *
     * @mbggenerated
     */
    int insert(Activepicutre record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table activepicutre
     *
     * @mbggenerated
     */
    int insertSelective(Activepicutre record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table activepicutre
     *
     * @mbggenerated
     */
    Activepicutre selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table activepicutre
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(Activepicutre record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table activepicutre
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(Activepicutre record);
    
    List<Activepicutre> selectByActivityid(Integer activityid);
    
    int deleteByActivityid(Integer activityid);
}