package com.service;

import java.util.List;

import com.bean.Stormproducts;

public interface StormproductsService {
    
	List<Stormproducts> selectStormproducts(int uid);     //根据用户id查询用户购物车对象
	
	void delectByuid(String uid);    //根据用户uid删除用户购物车记录
	
}
