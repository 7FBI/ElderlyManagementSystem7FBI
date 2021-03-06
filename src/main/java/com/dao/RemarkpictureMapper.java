package com.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.bean.Remarkpicture;
@Repository("remarkpictureMapper")
public interface RemarkpictureMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table remarkpicture
     *
     * @mbggenerated
     */
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
    List<Remarkpicture> selectByopinionidAll(Remarkpicture remarkpicture);
}