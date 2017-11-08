package com.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.bean.Backinformation;

@Service
public interface BackinformationService {
	 int deleteByPrimaryKey(Integer id);

	    /**
	     * This method was generated by MyBatis Generator.
	     * This method corresponds to the database table backinformation
	     *
	     * @mbggenerated
	     */
	    int insert(Backinformation record);

	    /**
	     * This method was generated by MyBatis Generator.
	     * This method corresponds to the database table backinformation
	     *
	     * @mbggenerated
	     */
	    int insertSelective(Backinformation record);

	    /**
	     * This method was generated by MyBatis Generator.
	     * This method corresponds to the database table backinformation
	     *
	     * @mbggenerated
	     */
	    Backinformation selectByPrimaryKey(Integer id);

	    /**
	     * This method was generated by MyBatis Generator.
	     * This method corresponds to the database table backinformation
	     *
	     * @mbggenerated
	     */
	    int updateByPrimaryKeySelective(Backinformation record);

	    /**
	     * This method was generated by MyBatis Generator.
	     * This method corresponds to the database table backinformation
	     *
	     * @mbggenerated
	     */
	    int updateByPrimaryKey(Backinformation record);
	    
	    List<Backinformation>selectByAuthor();

	    List<Backinformation>selectAllByAuthor(Integer author);

}