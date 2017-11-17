package com.service.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.ShoppingCart;
import com.dao.ShoppingCartMapper;
import com.service.ShoppingCartService;

@Service("shoppingCartService")
public class ShoppingCartServiceImpl implements ShoppingCartService {
	
	@Autowired
	 private ShoppingCartMapper shoppingCartMapper;

	@Override
	public void deleteByPrimaryKey(Integer id) {      //根据id删除购物车对象
		// TODO Auto-generated method stub
		shoppingCartMapper.deleteByPrimaryKey(id);
	}

	@Override
	public void insertSelective(ShoppingCart record) { //插入购物车对象
		// TODO Auto-generated method stub
		shoppingCartMapper.insertSelective(record);
		
	}

	@Override
	public ShoppingCart selectByPrimaryKey(Integer id) { //根据id查询购物车对象
		// TODO Auto-generated method stub
		return shoppingCartMapper.selectByPrimaryKey(id);
	}

	@Override
	public int insertByaproduvts(ShoppingCart record) {
		// TODO Auto-generated method stub
		return shoppingCartMapper.insertByaproduvts(record);
	}

	@Override
	public void updateAddproducts(ShoppingCart record) {   //根据用户账号和商品id增加购物车中该条记录的商品数量
		// TODO Auto-generated method stub
		shoppingCartMapper.updateAddproducts(record);
	}

	@Override
	public ShoppingCart selectByaproduvts(ShoppingCart record) {
		// TODO Auto-generated method stub
		return shoppingCartMapper.selectByaproduvts(record);
	}

	@Override
	public List<ShoppingCart> selectByaproduvtsList(Map map) {
		// TODO Auto-generated method stub
		return shoppingCartMapper.selectByaproduvtsList(map);
	}

	@Override
	public int deleteByPrimaryKeyList(Map map) {
		// TODO Auto-generated method stub
		return shoppingCartMapper.deleteByPrimaryKeyList(map);
	}
  
}
