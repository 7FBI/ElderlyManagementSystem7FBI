package com.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bean.Products;
import com.dao.ProductsMapper;
import com.service.ProductsService;
@Service()
public class ProductsServiceImpl implements ProductsService {
	
	@Autowired
    private ProductsMapper productsMapper;
	
	@Override
	public void insertSelective(Products record) {
		// TODO Auto-generated method stub
		productsMapper.insertSelective(record);
	}
	@Override
	public int insertProducts(Products record) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	@Override
	public List<Products> selectProducts() {
		// TODO Auto-generated method stub
		return productsMapper.selectProducts();
	}
	
	@Override
	public List<Products> QueryProductsBypname(String pname) {
		// TODO Auto-generated method stub
		return productsMapper.QueryProductsBypname(pname);
	}
	
	@Override
	public void updateByPrimaryKeySelective(Products record){
		productsMapper.updateByPrimaryKeySelective(record);
	}
	
	@Override
	public void deleteProductsByid(int id) {
		// TODO Auto-generated method stub
		productsMapper.deleteByPrimaryKey(id);
		
	}
	@Override
	public Products selectByPrimaryKey(int id) {
		// TODO Auto-generated method stub
		return productsMapper.selectByPrimaryKey(id);
	}
	
	@Override
	public int  selectId(){
		return productsMapper.selectId();
	}
 
}
