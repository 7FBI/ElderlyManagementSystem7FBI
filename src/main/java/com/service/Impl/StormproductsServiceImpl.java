package com.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bean.Stormproducts;
import com.dao.StormproductsMapper;
import com.service.StormproductsService;

@Service("stormproductsService")
@Transactional     //事物操作
public class StormproductsServiceImpl implements StormproductsService{

	@Autowired
	private StormproductsMapper stormproductsMapper;
	
	@Override
	public List<Stormproducts> selectStormproducts(int uid) {
		// TODO Auto-generated method stub
		return  stormproductsMapper.selectStormproducts(uid);
	}

}
