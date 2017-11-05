package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bean.Page;
import com.bean.Products;

public interface ProductsMapper {
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
}