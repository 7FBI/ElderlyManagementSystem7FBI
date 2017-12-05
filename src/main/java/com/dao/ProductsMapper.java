package com.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.bean.OldDiseaselibrary;
import com.bean.Page;
import com.bean.Products;
import com.bean.productCustom;
@Repository("productsMapper")
public interface ProductsMapper {
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

    List<Products> selectProductsByPage();      //鏌ヨ鎵�鏈夊晢鍝�

	List<Products> QueryProductsBypname(String pname);
	
	int selectId();
	
	long getProductsCount();     //鑾峰彇鍟嗗搧鎬绘暟閲�
	
	List<Products> fenye(Page page);        //鍒嗛〉鏂规硶 Page鏄垎椤靛叕鍏辩被 鏍规嵁page鏌ヨ鍒拌椤甸潰鐨勫晢鍝�
	
    public List<Products> getInvBycondtion(Page page); //鏍规嵁鏉′欢鏌ヨ甯栧瓙 妯＄硦鏌ヨ
    
    public Integer searchTotalCount(Page page);// 鏍规嵁鎻忚堪 鎼滅储鍟嗗搧鏁伴噺

	List<Products> selectProductUrlByPid(Integer pid);

	List<Products> selectAllProducts();
	
	 public List<Products> selectProductsByLikeName(String pName);
	 public List<Products> selectAllProductsByType(Integer tid);
	 
	 public Products selectProductDetailByPrimaryKey(Integer id);
	 public List<OldDiseaselibrary> selectOldDiseaselibraryByProducts(Integer pid);
      List<Products> selectProductsByTid();
      
      public List<productCustom> productDiscount();
      
//    閿�閲忔帓搴�
    public List<Products> querySaleProductCountByTid(Integer tid);
    public List<Products> querySomeProductByTid(Integer tid);
    
    List<Products> selectRecommend(int tid);
    
   
	List<Products> selectProductsByTypeAndLikeName(Map map);  //根据商品类型和商品名字查询出所有商品
	
	List<Products> selectrcai(int tid);
	
	Products selectBypnameui(String pname);
	
	Products selectByitoBackstage(int id);
}