package com.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.bean.Returnshopping;
@Repository("returnshoppingMapper")
public interface ReturnshoppingMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table returnshopping
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table returnshopping
     *
     * @mbggenerated
     */
    int insert(Returnshopping record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table returnshopping
     *
     * @mbggenerated
     */
    int insertSelective(Returnshopping record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table returnshopping
     *
     * @mbggenerated
     */
    Returnshopping selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table returnshopping
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(Returnshopping record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table returnshopping
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(Returnshopping record);

	List<Returnshopping> ReturnShoppingByRid(Integer returnid);

	void addReturnShoppingByRid(Returnshopping returnShopping);
}