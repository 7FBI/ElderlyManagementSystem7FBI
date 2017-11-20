package com.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import com.bean.Oldcollection;
import com.bean.Products;
import com.dao.OldcollectionMapper;
import com.service.OldCollectionService;

@Service("OldCollectionService")
public class OldCollectionServiceImpl implements OldCollectionService{

	@Resource
	private OldcollectionMapper oldcollectionMapper;

	@Override
	public int insert(Oldcollection record) {
		// TODO Auto-generated method stub
		return oldcollectionMapper.insert(record);
	}

	@Override
	public int insertSelective(Oldcollection record) {
		// TODO Auto-generated method stub
		return oldcollectionMapper.insertSelective(record);
	}

	@Override
	public int delete(Oldcollection record) {
		// TODO Auto-generated method stub
		return oldcollectionMapper.delete(record);
	}

	@Override
	public Oldcollection select(Oldcollection record) {
		// TODO Auto-generated method stub
		return oldcollectionMapper.select(record);
	}

	@Override
	public List<Products> selectList(String uid) {
		// TODO Auto-generated method stub
		return oldcollectionMapper.selectList(uid);
	}


}
