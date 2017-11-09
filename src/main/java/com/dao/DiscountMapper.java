package com.dao;

import org.springframework.stereotype.Repository;

import com.bean.Discount;
@Repository("discountMapper")
public interface DiscountMapper {
	Discount selectByProductPid(Integer pid);
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table discount
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table discount
     *
     * @mbggenerated
     */
    int insert(Discount record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table discount
     *
     * @mbggenerated
     */
    int insertSelective(Discount record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table discount
     *
     * @mbggenerated
     */
    Discount selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table discount
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(Discount record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table discount
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(Discount record);
}