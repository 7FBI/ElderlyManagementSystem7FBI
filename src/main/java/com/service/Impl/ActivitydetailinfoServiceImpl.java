package com.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.Activitydetailinfo;
import com.dao.ActivitydetailinfoMapper;
import com.service.ActivitydetailinfoService;
@Service("ActivitydetailinfoService")
public class ActivitydetailinfoServiceImpl implements ActivitydetailinfoService{
	
	@Autowired
	private ActivitydetailinfoMapper activitydetailinfoMapper;

	@Override
	public List<Activitydetailinfo> selectByMid(Integer mid) {
		
		return activitydetailinfoMapper.selectByMid(mid);
	}

	@Override
	public int deleteByPrimaryKey(Integer id) {
	
		return activitydetailinfoMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insertSelective(Activitydetailinfo record) {
	
		return activitydetailinfoMapper.insertSelective(record);
	}

	@Override
	public int updateByPrimaryKeySelective(Activitydetailinfo record) {
	
		return activitydetailinfoMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public Activitydetailinfo selectByPrimaryKey(Integer id) {
		return activitydetailinfoMapper.selectByPrimaryKey(id);
	}

}
