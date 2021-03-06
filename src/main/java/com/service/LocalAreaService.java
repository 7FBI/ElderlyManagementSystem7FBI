package com.service;

import java.util.List;
import java.util.Map;

import com.bean.Localarea;

public interface LocalAreaService {
	List<Localarea> getOurMeritMapViews();
	List<Localarea> getOurMeritUsersMoneyViews(Integer area);
	Localarea findTheName(String provincename);
	List<Localarea> findAllLocalAreaMap(Map map);
	int findAllCounts();
	/**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table localarea
     *
     * @mbggenerated
     */
	public int deleteLocalAreaById(Localarea localArea);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table localarea
     *
     * @mbggenerated
     */
    int insert(Localarea record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table localarea
     *
     * @mbggenerated
     */
    public int addLocalArea(Localarea localArea);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table localarea
     *
     * @mbggenerated
     */
    
    public List<Localarea> findLocalAreaByRecord(Localarea localArea);
    public List<Localarea> findAllLocalArea();
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table localarea
     *
     * @mbggenerated
     */
    public int updateLocalAreaById(Localarea localArea);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table localarea
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(Localarea record);
    Localarea selectByPrimaryKey(Integer id);
    int deleteByPrimaryKey(Integer id);
}
