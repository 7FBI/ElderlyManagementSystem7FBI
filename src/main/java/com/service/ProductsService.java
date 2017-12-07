package com.service;

import java.util.List;
import java.util.Map;

import com.bean.OldDiseaselibrary;
import com.bean.Page;
import com.bean.Products;
import com.bean.productCustom;

public interface ProductsService {
	List<Products> productTypeTidByQuarter(Integer tid);
	List<Products> productTypeGroupByQuarter();

	List<Products> productTypeGroupByWeek();

	List<Products> productByidDateFormat(Integer id);

	List<Products> productSeasonGroupbuy(Map map);

	List<Products> productSeasonNot(Map map);

	List<Products> productSeasonDiscount(Map map);

	List<Products> productTypeSumCount();

	List<Products> productCollectionOne(Map map);

	List<Products> productSalesOne(Map map);

	List<Products> selectProductList(Map list);

	public void insertSelective(Products record);

	public int insertProducts(Products record);

	public List<Products> selectProducts();

	public List<Products> QueryProductsBypname(String pname);

	public void updateByPrimaryKeySelective(Products record);

	public void deleteProductsByid(int id);

	public Products selectByPrimaryKey(int id);

	public int selectId();

	public List<Products> showProductsByPage(); // 获取所有商品

	public long getProductsCount(); // 获取商品总数

	public List<Products> fenye(Page page); // 分页方法 获得该页面的商品

	public int searchTotalCount(Page page); // 搜索与描述相同的商品总数

	public List<Products> getInvBycondtion(Page page); // 搜索与描述相同的商品列表 模糊查询

	public List<Products> selectProductUrlByPid(Integer pid);

	public List<Products> selectAllProducts();

	public List<Products> selectProductsByLikeName(String pName);

	public List<Products> selectAllProductsByType(Integer tid);

	public Products selectProductDetailByPrimaryKey(Integer id);

	public List<OldDiseaselibrary> selectOldDiseaselibraryByProducts(Integer pid);

	public List<Products> selectProductsByTid();

	public List<productCustom> productDiscount();// 用于查询所有打折商品的,使用到扩展类productCustom
//  销量
  public List<Products> querySaleProductCountByTid(Integer tid);
  public List<Products> querySomeProductByTid(Integer tid);
  
  public List<Products> selectRecommend(int tid);
  
 List<Products> selectProductsByTypeAndLikeName(Map map); //根据商品类型和商品名字查询出所有商品
 
  List<Products> selectrcai(int tid);
  
  public Products selectBypnameui(String pname);
  
  public Products selectByitoBackstage(int id);
  
  public List<Products> selectProductsByLikeTypeName(String classname);
  public List<Products> selectAllProductsByPrice(Double price);
}
