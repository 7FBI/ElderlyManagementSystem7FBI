package com.service.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bean.shoppingCart;
import com.dao.ProductsMapper;
import com.dao.shoppingCartMapper;
import com.service.shoppingCartService;

@Service("shoppingCartService")
public class shoppingCartServiceImpl implements shoppingCartService {
	
	@Autowired
	 private shoppingCartMapper shoppingCartMapper;

	@Override
	public void deleteByPrimaryKey(Integer id) {      //根据id删除购物车对象
		// TODO Auto-generated method stub
		shoppingCartMapper.deleteByPrimaryKey(id);
	}

	@Override
	public void insertSelective(shoppingCart record) { //插入购物车对象
		// TODO Auto-generated method stub
		shoppingCartMapper.insertSelective(record);
		
	}

	@Override
	public shoppingCart selectByPrimaryKey(Integer id) { //根据id查询购物车对象
		// TODO Auto-generated method stub
		return shoppingCartMapper.selectByPrimaryKey(id);
	}

	@Override
	public int insertByaproduvts(shoppingCart record) {
		// TODO Auto-generated method stub
		return shoppingCartMapper.insertByaproduvts(record);
	}

	@Override
	public void updateAddproducts(shoppingCart record) {   //根据用户账号和商品id增加购物车中该条记录的商品数量
		// TODO Auto-generated method stub
		shoppingCartMapper.updateAddproducts(record);
	}

	@Override
	public shoppingCart selectByaproduvts(shoppingCart record) {
		// TODO Auto-generated method stub
		return shoppingCartMapper.selectByaproduvts(record);
	}

	@Override
	public List<shoppingCart> selectByaproduvtsList(Map map) {
		// TODO Auto-generated method stub
		return shoppingCartMapper.selectByaproduvtsList(map);
	}

	@Override
	public int deleteByPrimaryKeyList(Map map) {
		// TODO Auto-generated method stub
		return shoppingCartMapper.deleteByPrimaryKeyList(map);
	}
  
}
