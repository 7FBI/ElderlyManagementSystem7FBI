package com.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.bean.Oldlogin;
import com.dao.OldUsersMapper;
import com.dao.OldloginMapper;
import com.service.OldloginService;
@Service("oldloginService")
public class OldloginServiceImpl implements OldloginService {

	@Autowired
	@Qualifier("oldloginMapper")
	private OldloginMapper oldloginMapper;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return oldloginMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Oldlogin record) {
		// TODO Auto-generated method stub
		return oldloginMapper.insert(record);
	}

	@Override
	public int insertSelective(Oldlogin record) {
		// TODO Auto-generated method stub
		return oldloginMapper.insertSelective(record);
	}

	@Override
	public Oldlogin selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return oldloginMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Oldlogin record) {
		// TODO Auto-generated method stub
		return oldloginMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Oldlogin record) {
		// TODO Auto-generated method stub
		return oldloginMapper.updateByPrimaryKey(record);
	}

	
}
