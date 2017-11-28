package com.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import com.bean.Activitydetailinfo;

@Service
public interface ActivitydetailinfoService {
	
	public List<Activitydetailinfo> selectByMid(Integer mid);
	
	 Activitydetailinfo selectByPrimaryKey(Integer id);
	 
	int deleteByPrimaryKey(Integer id);
	
	int insertSelective(Activitydetailinfo record);
	
	int updateByPrimaryKeySelective(Activitydetailinfo record);
/*---------前台-------*/
	//所有的活动
	public List<Activitydetailinfo> findAllActiveInfo(Map map);
	//活动详情
	public Activitydetailinfo findactiveDetailById(Integer id);
	//最新活动
	public List<Activitydetailinfo> findNewActiveInfo();
	//活动条数
	public int getActivityCount();
}
