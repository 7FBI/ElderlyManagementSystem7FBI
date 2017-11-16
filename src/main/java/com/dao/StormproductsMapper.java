package com.dao;

import java.util.List;

import com.bean.Stormproducts;

public interface StormproductsMapper {
     
	List<Stormproducts> selectStormproducts(int uid);
	
	 /*根据用户uid删除用户购物车记录 */
	 void delectByuid(String uid);
}
