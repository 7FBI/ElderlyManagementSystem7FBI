package com.dao;

import java.util.List;

import com.bean.Creditshop;
import com.bean.Products;

public interface CreditshopMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table creditshop
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(Integer pid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table creditshop
     *
     * @mbggenerated
     */
    int insert(Creditshop record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table creditshop
     *
     * @mbggenerated
     */
    int insertSelective(Creditshop record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table creditshop
     *
     * @mbggenerated
     */
    Creditshop selectByPrimaryKey(Integer pid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table creditshop
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(Creditshop record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table creditshop
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(Creditshop record);
   
    List<Products> SelectAllCreditShop();
}