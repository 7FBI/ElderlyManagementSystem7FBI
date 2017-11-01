package com.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.Activepicutre;
import com.dao.ActivepicutreMapper;
import com.service.ActivepicutreService;
@Service("ActivepicutreService")
public class ActivepicureServiceImpl implements ActivepicutreService{
	@Autowired
	private ActivepicutreMapper activepicutreMapper;
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(Activepicutre record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(Activepicutre record) {
		// TODO Auto-generated method stub
		return activepicutreMapper.insertSelective(record);
	}

	@Override
	public Activepicutre selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateByPrimaryKeySelective(Activepicutre record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(Activepicutre record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Activepicutre> selectByActivityid(Integer activityid) {
	
		return activepicutreMapper.selectByActivityid(activityid);
	}

	@Override
	public int deleteByActivityid(Integer activityid) {
		
		return activepicutreMapper.deleteByActivityid(activityid);
	}

}
