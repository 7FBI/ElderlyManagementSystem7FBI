package com.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.bean.OldDiseaselibrary;
import com.bean.Page;
import com.bean.Products;
import com.bean.productCustom;

public interface ProductsMapper {
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
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table products
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table products
     *
     * @mbggenerated
     */
    int insert(Products record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table products
     *
     * @mbggenerated
     */
    int insertSelective(Products record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table products
     *
     * @mbggenerated
     */
    Products selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table products
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(Products record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table products
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(Products record);

    List<Products> selectProductsByPage();      //查询所有商品

	List<Products> QueryProductsBypname(String pname);
	
	int selectId();
	
	long getProductsCount();     //获取商品总数量
	
	List<Products> fenye(Page page);        //分页方法 Page是分页公共类 根据page查询到该页面的商品
	
    public List<Products> getInvBycondtion(Page page); //根据条件查询帖子 模糊查询
    
    public Integer searchTotalCount(Page page);// 根据描述 搜索商品数量

	List<Products> selectProductUrlByPid(Integer pid);

	List<Products> selectAllProducts();
	
	 public List<Products> selectProductsByLikeName(String pName);
	 public List<Products> selectAllProductsByType(Integer tid);
	 
	 public Products selectProductDetailByPrimaryKey(Integer id);
	 public List<OldDiseaselibrary> selectOldDiseaselibraryByProducts(Integer pid);
      List<Products> selectProductsByTid();
      
      public List<productCustom> productDiscount();
      
//    销量排序
    public List<Products> querySaleProductCountByTid(Integer tid);
    public List<Products> querySomeProductByTid(Integer tid);
}