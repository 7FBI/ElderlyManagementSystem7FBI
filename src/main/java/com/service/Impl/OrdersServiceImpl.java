package com.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.Orders;
import com.dao.OrdersMapper;
import com.dao.ProductsMapper;
import com.service.OrdersService;

@Service()
public class OrdersServiceImpl implements OrdersService {
	
	@Autowired
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

}
