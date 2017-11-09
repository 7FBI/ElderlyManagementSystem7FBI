package com.controller.backstage.orders;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.Orders;
import com.service.OrdersService;

@Controller
@RequestMapping("/backstage/Orders")
public class OrdersController {

	@Autowired
	private OrdersService ordersService;
	
	@RequestMapping(value="/selectOrders.action")
	public String SelectOrders(HttpServletRequest request){    //已经收货 已完成订单     
		List<Orders> list;
		List<String> str = new ArrayList<String>();
		list=ordersService.selectByorderstatus(2);
		request.getSession().setAttribute("Orders",list);
		return "backstage/jsp/Orders/ExhibitionOrders";
		
	}
	
	@RequestMapping(value="/selectByorderstatus.action")
	public String SelectByorderstatus(HttpServletRequest request){  //待处理订单
		List<Orders> orders;
		orders=ordersService.selectByorderstatus(0);   
		request.getSession().setAttribute("Orders", orders);
		return "backstage/jsp/Orders/waitfor";
	}
	
   @RequestMapping(value="SelectTOsend.action")
   public String SelectBySend(HttpServletRequest request){        //已发货 待收货订单
	List<Orders> orders;
	orders=ordersService.selectByorderstatus(1);  
	request.getSession().setAttribute("OrdersSend", orders);
	return "backstage/jsp/Orders/ofterfahuo";
	   
   }
   /**  
    * 将Date类型时间转换为字符串  
    * @param date  
    * @return  
    */    
   public static String toString(Date date) {    
   
       String time;    
       SimpleDateFormat formater = new SimpleDateFormat();    
       formater.applyPattern("yyyy年MM月dd日 HH:mm");    
       time = formater.format(date);    
       return time;    
   }    
   
}
