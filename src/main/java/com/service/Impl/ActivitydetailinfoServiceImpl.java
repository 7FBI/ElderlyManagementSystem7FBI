package com.service.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.Activitydetailinfo;
import com.dao.ActivitydetailinfoMapper;
import com.service.ActivitydetailinfoService;
@Service("activitydetailinfoService")
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

	@Override
	public List<Activitydetailinfo> findAllActiveInfo(Map map) {
		// TODO Auto-generated method stub
		return activitydetailinfoMapper.findAllActiveInfo(map);
	}

	@Override
	public Activitydetailinfo findactiveDetailById(Integer id) {
		// TODO Auto-generated method stub
		return activitydetailinfoMapper.findactiveDetailById(id);
	}

	@Override
	public List<Activitydetailinfo> findNewActiveInfo() {
		// TODO Auto-generated method stub
		return activitydetailinfoMapper.findNewActiveInfo();
	}

	@Override
	public int getActivityCount() {
		// TODO Auto-generated method stub
		return activitydetailinfoMapper.getActivityCount();
	}

}
