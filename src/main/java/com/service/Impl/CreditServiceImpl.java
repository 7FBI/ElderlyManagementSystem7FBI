package com.service.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bean.Credit;
import com.dao.CreditMapper;
import com.service.CreditService;
@Service("creditService")
@Transactional     //事物操作
public class CreditServiceImpl implements CreditService {

	@Autowired
	private CreditMapper creditMapper;
	
	@Override
	public void deleteByPrimaryKey(String uid) {   //根据id 根据用户uid 删除积分对象
		// TODO Auto-generated method stub
		creditMapper.deleteByPrimaryKey(uid);
	}

	@Override
	public void insertSelective(Credit record) {   //插入积分对象
		// TODO Auto-generated method stub
		creditMapper.insertSelective(record);
	}

	@Override
	public Credit selectByPrimaryKey(String uid) {  //根据uid 查询得到对象
		// TODO Auto-generated method stub
		return creditMapper.selectByPrimaryKey(uid);
	}

	@Override
	public void updateByPrimaryKeySelective(Credit record) {   //根据uid 修改用户的积分
		// TODO Auto-generated method stub
		creditMapper.updateByPrimaryKeySelective(record);
		
	}

	@Override
	public void updateByPrimaryKey(Credit record) {     //根据uid 修改用户的积分
		// TODO Auto-generated method stub
		creditMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Credit> selectCredit() {            //查看所有用户的积分表详情
		// TODO Auto-generated method stub
		return creditMapper.selectCredit();
	}

	@Override
	public Credit selectCreditByUid(String uid) {
		// TODO Auto-generated method stub
		return creditMapper.selectCreditByUid(uid);
	}

	@Override
	public void updateCreditByBuy(Map<String, Object> map) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateCreditByExchange(Map<String, Object> map) {
		// TODO Auto-generated method stub
		
	}

}
