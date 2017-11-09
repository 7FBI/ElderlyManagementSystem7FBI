package com.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.bean.Orderdetails;
import com.dao.OrderdetailsMapper;
import com.service.OrderdetailsService;
@Service("orderdetailsService")
public class OrderdetailsServiceImpl implements OrderdetailsService {
	@Autowired
	@Qualifier("orderdetailsMapper")
	private OrderdetailsMapper orderdetailsMapper;

	@Override
	public List<Orderdetails> selectByOrdersId(String oid) {
		// TODO Auto-generated method stub
		return orderdetailsMapper.selectByOrdersId(oid);
	}

	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return orderdetailsMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Orderdetails record) {
		// TODO Auto-generated method stub
		return orderdetailsMapper.insert(record);
	}

	@Override
	public int insertSelective(Orderdetails record) {
		// TODO Auto-generated method stub
		return orderdetailsMapper.insertSelective(record);
	}

	@Override
	public Orderdetails selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return orderdetailsMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Orderdetails record) {
		// TODO Auto-generated method stub
		return orderdetailsMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Orderdetails record) {
		// TODO Auto-generated method stub
		return orderdetailsMapper.updateByPrimaryKey(record);
	}
	
}
