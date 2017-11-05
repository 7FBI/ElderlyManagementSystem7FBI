package com.service;

import java.util.List;

import com.bean.Page;
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
	
	public List<Products> showProductsByPage();     //获取所有商品
	
	public long getProductsCount();     //获取商品总数
	
	public List<Products> fenye(Page page);     //分页方法  获得该页面的商品
	
    public int searchTotalCount(Page page);     //搜索与描述相同的商品总数
    
    public List<Products> getInvBycondtion(Page page); //搜索与描述相同的商品列表 模糊查询
    public List<Products> selectProductUrlByPid(Integer pid);
    public List<Products> selectAllProducts();

}
