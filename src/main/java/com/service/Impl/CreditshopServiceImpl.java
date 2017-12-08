package com.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.bean.Creditshop;
import com.bean.Products;
import com.dao.CreditshopMapper;
import com.service.CreditshopService;

@Service("creditshopService")
public class CreditshopServiceImpl implements CreditshopService {
	
	@Autowired
	@Qualifier("creditshopMapper")
	private CreditshopMapper  creditshopMapper;

	@Override
	public List<Products> SelectAllCreditShop() {
		// TODO Auto-generated method stub
		return creditshopMapper.SelectAllCreditShop();
	}

	@Override
	public int deleteByPrimaryKey(Integer pid) {
		// TODO Auto-generated method stub
		return creditshopMapper.deleteByPrimaryKey(pid);
	}

	@Override
	public int insert(Creditshop record) {
		// TODO Auto-generated method stub
		return creditshopMapper.insert(record);
	}

	@Override
	public int insertSelective(Creditshop record) {
		// TODO Auto-generated method stub
		return creditshopMapper.insertSelective(record);
	}

	@Override
	public Creditshop selectByPrimaryKey(Integer pid) {
		// TODO Auto-generated method stub
		return creditshopMapper.selectByPrimaryKey(pid);
	}

	@Override
	public int updateByPrimaryKeySelective(Creditshop record) {
		// TODO Auto-generated method stub
		return creditshopMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Creditshop record) {
		// TODO Auto-generated method stub
		return creditshopMapper.updateByPrimaryKey(record);
	}

}
