package com.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.bean.Discount;
import com.dao.DiscountMapper;
import com.service.DiscountService;
@Service("discountService")
public class DiscountServiceImpl implements DiscountService {
	
	@Autowired
	@Qualifier("discountMapper")
	private DiscountMapper discountMapper;

	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return discountMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Discount record) {
		// TODO Auto-generated method stub
		return discountMapper.insert(record);
	}

	@Override
	public int insertSelective(Discount record) {
		// TODO Auto-generated method stub
		return discountMapper.insertSelective(record);
	}

	@Override
	public Discount selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return discountMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Discount record) {
		// TODO Auto-generated method stub
		return discountMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Discount record) {
		// TODO Auto-generated method stub
		return discountMapper.updateByPrimaryKey(record);
	}

}
