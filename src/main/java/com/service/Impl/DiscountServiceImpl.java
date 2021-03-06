package com.service.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.bean.Discount;
import com.bean.DiscountQueryproducts;
import com.bean.Discountproducts;
import com.bean.Page;
import com.bean.ProductDiscounts;
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

	@Override
	public Discount selectByProductPid(Integer pid) {
		// TODO Auto-generated method stub
		return discountMapper.selectByProductPid(pid);
	}

	@Override
	public List<Discount> selectListDiscount(Map map) {
		// TODO Auto-generated method stub
		return discountMapper.selectListDiscount(map);
	}

	@Override
	public List<Discount> selectAll() {
		// TODO Auto-generated method stub
		return discountMapper.selectAll();
	}

	@Override
	public Discount selectByPid(int pid) {
		// TODO Auto-generated method stub
		return discountMapper.selectByPid(pid);
	}
   /* 团购商品打折推荐*/
	@Override
	public List<Discountproducts> selectDiscountproducts() {
		// TODO Auto-generated method stub
		return  discountMapper.selectDiscountproducts();
	}

	@Override
	public List<ProductDiscounts> selectproductsanddiscount() {
		// TODO Auto-generated method stub
		return  discountMapper.selectproductsanddiscount();
	}

	@Override
	public List<ProductDiscounts> selectthreeproducts() {
		// TODO Auto-generated method stub
		return discountMapper.selectthreeproducts();
	}

	@Override
	public List<Integer> selecttid() {
		// TODO Auto-generated method stub
		return discountMapper.selecttid();
	}

	@Override
	public List<DiscountQueryproducts> PageDiscount(Page page) {
		// TODO Auto-generated method stub
		return discountMapper.PageDiscount(page);
	}

	@Override
	public List<DiscountQueryproducts> selectDiscountmohu(Page page) {
		// TODO Auto-generated method stub
		return discountMapper.selectDiscountmohu(page);
	}

	@Override
	public int DiscountCounts() {
		// TODO Auto-generated method stub
		return discountMapper.DiscountCounts();
	}

	@Override
	public void deleteBypid(int pid) {
		// TODO Auto-generated method stub
		discountMapper.deleteBypid(pid);
	}

}
