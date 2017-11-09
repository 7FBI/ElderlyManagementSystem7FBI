package com.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.bean.Products;
import com.dao.CreditshopMapper;
import com.service.CreditshopService;

@Service("creditShopService")
public class CreditshopServiceImpl implements CreditshopService {
	
	@Autowired
	@Qualifier("creditshopMapper")
	private CreditshopMapper  creditshopMapper;

	@Override
	public List<Products> SelectAllCreditShop() {
		// TODO Auto-generated method stub
		return creditshopMapper.SelectAllCreditShop();
	}

}
