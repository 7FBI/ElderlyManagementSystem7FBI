package com.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.Showsphotos;
import com.dao.ShowsphotosMapper;
import com.service.ShowsphotosService;

@Service("ShowsphotosService")
public class ShowsphotosServiceImpl implements ShowsphotosService {
	
	@Autowired
	private ShowsphotosMapper showsphotosMapper;

	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(Showsphotos record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void insertSelective(Showsphotos record) {
		// TODO Auto-generated method stub
		showsphotosMapper.insertSelective(record);
	}

	@Override
	public Showsphotos selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateByPrimaryKeySelective(Showsphotos record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(Showsphotos record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void insertFrompidimage(Showsphotos record) {
		
		showsphotosMapper.insertFrompidimage(record);
		
	}

}
