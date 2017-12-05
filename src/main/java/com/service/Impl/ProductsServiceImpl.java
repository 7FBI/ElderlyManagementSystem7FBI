package com.service.Impl;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.bean.OldDiseaselibrary;
import com.bean.Page;
import com.bean.Products;
import com.bean.productCustom;
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
	public Products selectByPrimaryKey(int id) {           //根据商品id获得商品
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
	
	@Override
	public List<Products> selectProductsByLikeName(String pName) {
		// TODO Auto-generated method stub
		return productsMapper.selectProductsByLikeName(pName);
	}

	@Override
	public List<Products> selectAllProductsByType(Integer tid) {
		// TODO Auto-generated method stub
		return productsMapper.selectAllProductsByType(tid);
	}

	@Override
	public List<OldDiseaselibrary> selectOldDiseaselibraryByProducts(Integer pid) {
		// TODO Auto-generated method stub
		return productsMapper.selectOldDiseaselibraryByProducts(pid);
	}

	@Override
	public Products selectProductDetailByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return productsMapper.selectProductDetailByPrimaryKey(id);
	}
	@Override
	public List<Products> selectProductsByTid() {
		// TODO Auto-generated method stub
		return productsMapper.selectProductsByTid();
	}
	@Override
	public List<productCustom> productDiscount() {//查询所有打折商品
		// TODO Auto-generated method stub
		return productsMapper.productDiscount();
	}
	@Override
	public List<Products> productTypeSumCount() {
		// TODO Auto-generated method stub
		return productsMapper.productTypeSumCount();
	}
	@Override
	public List<Products> productCollectionOne(Map map) {
		// TODO Auto-generated method stub
		return productsMapper.productCollectionOne(map);
	}
	@Override
	public List<Products> productSalesOne(Map map) {
		// TODO Auto-generated method stub
		return productsMapper.productSalesOne(map);
	}
	@Override
	public List<Products> productSeasonGroupbuy(Map map) {
		// TODO Auto-generated method stub
		return productsMapper.productSeasonGroupbuy(map);
	}
	@Override
	public List<Products> productSeasonNot(Map map) {
		// TODO Auto-generated method stub
		return productsMapper.productSeasonNot(map);
	}
	@Override
	public List<Products> productSeasonDiscount(Map map) {
		// TODO Auto-generated method stub
		return productsMapper.productSeasonDiscount(map);
	}
	@Override
	public List<Products> productByidDateFormat(Integer id) {
		// TODO Auto-generated method stub
		return productsMapper.productByidDateFormat(id);
	}
	@Override
	public List<Products> productTypeGroupByQuarter() {
		// TODO Auto-generated method stub
		return productsMapper.productTypeGroupByQuarter();
	}
	@Override
	public List<Products> productTypeGroupByWeek() {
		// TODO Auto-generated method stub
		return productsMapper.productTypeGroupByWeek();
	}
	@Override
	public List<Products> querySaleProductCountByTid(Integer tid) {
		// TODO Auto-generated method stub
		return productsMapper.querySaleProductCountByTid(tid);
	}
	@Override
	public List<Products> querySomeProductByTid(Integer tid) {
		// TODO Auto-generated method stub
		return productsMapper.querySomeProductByTid(tid);
	}
	@Override
	public List<Products> productTypeTidByQuarter(Integer tid) {
		// TODO Auto-generated method stub
		return productsMapper.productTypeTidByQuarter(tid);
	}
	@Override
	public List<Products> selectRecommend(int tid) {
		// TODO Auto-generated method stub
		return  productsMapper.selectRecommend(tid);
	}
	@Override
	public List<Products> selectProductsByTypeAndLikeName(Map map) { //根据商品类型和商品名字查询出所有商品
		// TODO Auto-generated method stub
		return productsMapper.selectProductsByTypeAndLikeName(map);
	}
	@Override
	public List<Products> selectrcai(int tid) {
		// TODO Auto-generated method stub
		return productsMapper.selectrcai(tid);
	}
	@Override
	public Products selectBypnameui(String pname) {
		// TODO Auto-generated method stub
		return productsMapper.selectBypnameui(pname);
	}
	@Override
	public Products selectByitoBackstage(int id) {
		// TODO Auto-generated method stub
		return productsMapper.selectByitoBackstage(id);
	}
}
