package com.service;

import java.util.List;

import org.springframework.stereotype.Service;
import com.bean.Activitydetailinfo;

@Service
public interface ActivitydetailinfoService {
	
	public List<Activitydetailinfo> selectByMid(Integer mid);
	
	 Activitydetailinfo selectByPrimaryKey(Integer id);
	 
	int deleteByPrimaryKey(Integer id);
	
	int insertSelective(Activitydetailinfo record);
	
	int updateByPrimaryKeySelective(Activitydetailinfo record);
}
