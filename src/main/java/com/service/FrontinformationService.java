package com.service;

import java.util.List;
import java.util.Map;

import com.bean.Frontinformation;

public interface FrontinformationService {
	List<String> selectAllKinds(Map map);
	int selectByMidCount(Map map);
	List<Frontinformation> selectByKey(Integer id);
	List<Frontinformation> selectByMid(Map map);
	/**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table frontinformation
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table frontinformation
     *
     * @mbggenerated
     */
    int insert(Frontinformation record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table frontinformation
     *
     * @mbggenerated
     */
    int insertSelective(Frontinformation record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table frontinformation
     *
     * @mbggenerated
     */
    Frontinformation selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table frontinformation
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(Frontinformation record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table frontinformation
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(Frontinformation record);
}
