package com.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.bean.Discount;
import com.bean.Discountproducts;
import com.bean.ProductDiscounts;

@Repository("discountMapper")
public interface DiscountMapper {
	Discount selectByProductPid(Integer pid);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table discount
	 *
	 * @mbggenerated
	 */
	int deleteByPrimaryKey(Integer id);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table discount
	 *
	 * @mbggenerated
	 */
	int insert(Discount record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table discount
	 *
	 * @mbggenerated
	 */
	int insertSelective(Discount record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table discount
	 *
	 * @mbggenerated
	 */
	Discount selectByPrimaryKey(Integer id);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table discount
	 *
	 * @mbggenerated
	 */
	int updateByPrimaryKeySelective(Discount record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table discount
	 *
	 * @mbggenerated
	 */
	int updateByPrimaryKey(Discount record);

	List<Discount> selectAll();

	Discount selectByPid(int pid);

	List<Discount> selectListDiscount(Map map);
	
	List<Discountproducts> selectDiscountproducts();
	
	List<ProductDiscounts> selectproductsanddiscount();
	
	List<ProductDiscounts> selectthreeproducts();
	
	List<Integer> selecttid();
}