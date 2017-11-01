package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.Orders;
import com.service.OrdersService;

@Controller
@RequestMapping("/Orders")
public class OrdersController {

	@Autowired
	private OrdersService ordersService;
	
	@RequestMapping(value="/selectOrders.action")
	public String SelectOrders(HttpServletRequest request){
		List<Orders> list;
		list=ordersService.selectOrders();
		request.getSession().setAttribute("Orders",list);
		return "backstage/jsp/Orders/ExhibitionOrders";
		
	}
	
	@RequestMapping(value="/selectByorderstatus.action")
	public String SelectByorderstatus(HttpServletRequest request){
		List<Orders> orders;
		orders=ordersService.selectByorderstatus(0);   //待处理订单
		request.getSession().setAttribute("Orders", orders);
		return "backstage/jsp/Orders/waitfor";
	}
	
}
