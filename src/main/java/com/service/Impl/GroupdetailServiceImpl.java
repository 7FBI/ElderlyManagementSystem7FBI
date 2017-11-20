package com.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.bean.Groupdetail;
import com.dao.GroupdetailMapper;
import com.service.GroupdetailService;
@Service("groupdetailService")
public class GroupdetailServiceImpl implements GroupdetailService {
	@Autowired
	@Qualifier("groupdetailMapper")
	private GroupdetailMapper groupdetailMapper;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return groupdetailMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Groupdetail record) {
		// TODO Auto-generated method stub
		return groupdetailMapper.insert(record);
	}

	@Override
	public int insertSelective(Groupdetail record) {
		// TODO Auto-generated method stub
		return groupdetailMapper.insertSelective(record);
	}

	@Override
	public Groupdetail selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return groupdetailMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Groupdetail record) {
		// TODO Auto-generated method stub
		return groupdetailMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Groupdetail record) {
		// TODO Auto-generated method stub
		return groupdetailMapper.updateByPrimaryKey(record);
	}

	@Override
	public Groupdetail selectByUidAndGid(Groupdetail record) {
		// TODO Auto-generated method stub
		return groupdetailMapper.selectByUidAndGid(record);
	}

}
