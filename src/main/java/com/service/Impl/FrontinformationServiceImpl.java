package com.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.bean.Frontinformation;
import com.dao.FrontinformationMapper;
import com.service.FrontinformationService;
@Service("frontinformationService")
public class FrontinformationServiceImpl implements FrontinformationService {
	@Autowired
	@Qualifier("frontinformationMapper")
	private FrontinformationMapper frontinformationMapper;

	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return frontinformationMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Frontinformation record) {
		// TODO Auto-generated method stub
		return frontinformationMapper.insert(record);
	}

	@Override
	public int insertSelective(Frontinformation record) {
		// TODO Auto-generated method stub
		return frontinformationMapper.insertSelective(record);
	}

	@Override
	public Frontinformation selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return frontinformationMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Frontinformation record) {
		// TODO Auto-generated method stub
		return frontinformationMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Frontinformation record) {
		// TODO Auto-generated method stub
		return frontinformationMapper.updateByPrimaryKey(record);
	}

}
