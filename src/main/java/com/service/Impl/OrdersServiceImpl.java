package com.service.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.bean.Orders;
import com.dao.OrdersMapper;
import com.dao.ProductsMapper;
import com.service.OrdersService;

@Service("ordersService")
public class OrdersServiceImpl implements OrdersService {
	
	@Autowired
	@Qualifier("ordersMapper")
    private OrdersMapper ordersMapper;
    
	@Override
	public List<Orders> selectOrders() {    //查询订单
		// TODO Auto-generated method stub
		return ordersMapper.selectOrders();
	}

	@Override
	public List<Orders> selectByorderstatus(int orderstatus) {
		// TODO Auto-generated method stub
		return  ordersMapper.selectByorderstatus(orderstatus);
	}

	@Override
	public int deleteByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return ordersMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Orders record) {
		// TODO Auto-generated method stub
		return ordersMapper.insert(record);
	}

	@Override
	public int insertSelective(Orders record) {
		// TODO Auto-generated method stub
		return ordersMapper.insertSelective(record);
	}

	@Override
	public Orders selectByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return ordersMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Orders record) {
		// TODO Auto-generated method stub
		return ordersMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Orders record) {
		// TODO Auto-generated method stub
		return ordersMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Orders> selectFrontOrderstatus(Map map) {
		// TODO Auto-generated method stub
		return ordersMapper.selectFrontOrderstatus(map);
	}

	@Override
	public Integer selectByorderstatusCount(Map map) {
		// TODO Auto-generated method stub
		return ordersMapper.selectByorderstatusCount(map);
	}

}
