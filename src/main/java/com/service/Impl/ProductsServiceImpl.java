package com.service.Impl;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.bean.Page;
import com.bean.Products;
import com.dao.ProductsMapper;

import com.service.ProductsService;
@Service("productsService")
@Transactional     //事物操作
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
		return null;
		// TODO Auto-generated method stub
		 
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
	
	 
	@Override
	public List<Products> showProductsByPage() {
		
		return productsMapper.selectProductsByPage();
		 
	}
	@Override
	public long getProductsCount() {
		// TODO Auto-generated method stub
		return productsMapper.getProductsCount();
	}
	@Override
	public List<Products> fenye(Page page) {                  //分页方法
		// TODO Auto-generated method stub
		return  productsMapper.fenye(page);
	}
	 
    public int searchTotalCount(Page page) {
	        return productsMapper.searchTotalCount(page);
	    }
	    
	 public List<Products> getInvBycondtion(Page page){     //模糊查询商品
	        return productsMapper.getInvBycondtion(page);
	    }
	@Override
	public List<Products> selectProductUrlByPid(Integer pid) {
		// TODO Auto-generated method stub
		return productsMapper.selectProductUrlByPid(pid);
	}
	@Override
	public List<Products> selectAllProducts() {
		// TODO Auto-generated method stub
		return productsMapper.selectAllProducts();
	}
	@Override
	public List<Products> selectProductList(Map list) {
		// TODO Auto-generated method stub
		return productsMapper.selectProductList(list);
	}
}
