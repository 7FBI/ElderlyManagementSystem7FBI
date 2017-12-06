package com.service;

import java.util.List;
import java.util.Map;

import com.bean.GroupBackstage;
import com.bean.Groupbuying;
import com.bean.Page;

public interface GroupbuyingService {
	Groupbuying selectByGroupBuyPid(Groupbuying groupbuying);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table groupbuying
	 *
	 * @mbggenerated
	 */
	int deleteByPrimaryKey(Integer id);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table groupbuying
	 *
	 * @mbggenerated
	 */
	int insert(Groupbuying record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table groupbuying
	 *
	 * @mbggenerated
	 */
	int insertSelective(Groupbuying record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table groupbuying
	 *
	 * @mbggenerated
	 */
	Groupbuying selectByPrimaryKey(Integer id);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table groupbuying
	 *
	 * @mbggenerated
	 */
	int updateByPrimaryKeySelective(Groupbuying record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table groupbuying
	 *
	 * @mbggenerated
	 */
	int updateByPrimaryKey(Groupbuying record);

	List<Groupbuying> selectAll();

	Groupbuying selectByPid(int pid);

	List<Groupbuying> selectListGroupbuy(Map map);
	
	List<GroupBackstage> gqueryGroupproducts(Page page);
	List<GroupBackstage> selectGroupBymohu(Page page);
	
	int GroupCounts();
	
	public void delectBypidyu(int pid);
	
	public int selectAddGroupbuying(int pid);
}
