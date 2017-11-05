package com.service;

import java.util.List;

import com.bean.Returnshopping;

public interface ReturnShoppingService {

	List<Returnshopping> ReturnShoppingByRid(Integer returnid);

	void addReturnShoppingByRid(Returnshopping returnShopping);

	void deleteByPrimaryKey(int id);

	void updateByPrimaryKeySelective(Returnshopping returnshopping);

	Returnshopping selectByPrimaryKey(Integer id);

}
