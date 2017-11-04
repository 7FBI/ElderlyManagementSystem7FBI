package com.service;

import java.util.List;
import java.util.Map;

import com.bean.Managerinfo;

public interface ManagerInfoService {
	int selectAllManagersCounts(Managerinfo managerinfo);
	List<Managerinfo> selectAllManagers(Map map);
	Managerinfo findManagerBynametype(Managerinfo managerInfo);
	/**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table managerInfo
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table managerInfo
     *
     * @mbggenerated
     */
    int insert(Managerinfo record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table managerInfo
     *
     * @mbggenerated
     */
    int insertSelective(Managerinfo record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table managerInfo
     *
     * @mbggenerated
     */
    Managerinfo selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table managerInfo
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(Managerinfo record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table managerInfo
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(Managerinfo record);
}
