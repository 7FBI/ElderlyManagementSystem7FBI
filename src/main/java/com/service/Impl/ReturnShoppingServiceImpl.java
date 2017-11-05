package com.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.bean.Returnshopping;
import com.dao.ReturnshoppingMapper;
import com.service.ReturnShoppingService;
@Service("returnShoppingService")
public class ReturnShoppingServiceImpl implements ReturnShoppingService {
	@Autowired
	@Qualifier("returnshoppingMapper")
	private ReturnshoppingMapper returnshoppingMapper;
	@Override
	public List<Returnshopping> ReturnShoppingByRid(Integer returnid) {
		// TODO Auto-generated method stub
		return returnshoppingMapper.ReturnShoppingByRid(returnid);
	}
	@Override
	public void addReturnShoppingByRid(Returnshopping returnShopping) {
		// TODO Auto-generated method stub
		returnshoppingMapper.addReturnShoppingByRid(returnShopping);
	}
	@Override
	public void deleteByPrimaryKey(int id) {
		// TODO Auto-generated method stub
		returnshoppingMapper.deleteByPrimaryKey(id);
	}
	@Override
	public void updateByPrimaryKeySelective(Returnshopping returnshopping) {
		// TODO Auto-generated method stub
		returnshoppingMapper.updateByPrimaryKeySelective(returnshopping);
	}
	@Override
	public Returnshopping selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return returnshoppingMapper.selectByPrimaryKey(id);
	}

	
}
