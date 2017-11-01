package com.service;

import java.util.List;

import com.bean.Products;

public interface ProductsService {
	
	public void insertSelective(Products record);
	
	public int insertProducts(Products record);
	
	public  List<Products> selectProducts();
	
	public List<Products> QueryProductsBypname(String pname);
	
	public void updateByPrimaryKeySelective(Products record);
	
	public void deleteProductsByid(int id);
	
	public Products selectByPrimaryKey(int id);
	
	public int selectId();

}
