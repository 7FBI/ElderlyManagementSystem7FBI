package com.dao;

import java.util.List;

import com.bean.Stormproducts;

public interface StormproductsMapper {
     
	List<Stormproducts> selectStormproducts(int uid);
}
