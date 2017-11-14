package com.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bean.Shoppingcart;
import com.dao.ProductsMapper;
import com.dao.ShoppingcartMapper;
import com.service.ShoppingcartService;

@Service("shoppingService")
@Transactional     //事物操作
public class ShoppingcartServiceImpl implements ShoppingcartService {
	
	@Autowired
	 private ShoppingcartMapper shoppingcartMapper;

	@Override
	public void deleteByPrimaryKey(Integer id) {      //根据id删除购物车对象
		// TODO Auto-generated method stub
		shoppingcartMapper.deleteByPrimaryKey(id);
	}

	@Override
	public void insertSelective(Shoppingcart record) { //插入购物车对象
		// TODO Auto-generated method stub
		shoppingcartMapper.insertSelective(record);
		
	}

	@Override
	public Shoppingcart selectByPrimaryKey(Integer id) { //根据id查询购物车对象
		// TODO Auto-generated method stub
		return shoppingcartMapper.selectByPrimaryKey(id);
	}

	@Override
	public int insertByaproduvts(Shoppingcart record) {
		// TODO Auto-generated method stub
		return shoppingcartMapper.insertByaproduvts(record);
	}

	@Override
	public void updateAddproducts(Shoppingcart record) {   //根据用户账号和商品id增加购物车中该条记录的商品数量
		// TODO Auto-generated method stub
		shoppingcartMapper.updateAddproducts(record);
	}
  
}
