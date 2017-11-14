package com.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.Showsphotos;
import com.dao.ShowsphotosMapper;
import com.service.ShowsphotosService;

@Service("showsphotosService")
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
	public int updateByPrimaryKey(Showsphotos record) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public int updateByPrimaryKeySelective(Showsphotos record) {
		// TODO Auto-generated method stub
		return showsphotosMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public void insertFrompidimage(Showsphotos record) {
		
		showsphotosMapper.insertFrompidimage(record);
		
	}

	@Override
	public List<Showsphotos> selectBypid(int pid) {     //根据pid(即是商品id)获得该商品的所有对象
		// TODO Auto-generated method stub
		return showsphotosMapper.selectBypid(pid);
	}

}
