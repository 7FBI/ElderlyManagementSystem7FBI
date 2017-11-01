package com.service;

import java.util.List;

import com.bean.Orders;

public interface OrdersService {
	
	public List<Orders> selectOrders();   //查询订单
	
	public List<Orders> selectByorderstatus(int orderstatus);   //查询各种类型 待发 待收 接收

}
