package com.controller.front.products;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bean.OldUsers;
import com.bean.Orderdetails;
import com.bean.Orders;
import com.bean.Products;
import com.controller.util.shop.ShopPrices;
import com.service.DiscountService;
import com.service.GroupbuyingService;
import com.service.OrderdetailsService;
import com.service.OrdersService;
import com.service.ProductsService;

@Controller
@RequestMapping("/front/orders")
public class ProductOrdersController {

	@Autowired
	@Qualifier("discountService")
	private DiscountService discountService;

	@Autowired
	@Qualifier("orderdetailsService")
	private OrderdetailsService orderdetailsService;

	@Autowired
	@Qualifier("productsService")
	private ProductsService productsService;

	@Autowired
	@Qualifier("groupbuyingService")
	private GroupbuyingService groupbuyingService;

	@Autowired
	@Qualifier("ordersService")
	private OrdersService ordersService;

	@RequestMapping("/addOrder")
	public ModelAndView addOrder(HttpServletRequest request) {
		OldUsers oldUsers = (OldUsers) request.getSession().getAttribute("oldUsers");
		ModelAndView view = new ModelAndView();
		view.setViewName("/");
		String[] pid = request.getParameterValues("pid");
		String[] num = request.getParameterValues("num");
		Orders orders = getNewOrders(oldUsers);
		List<Products> products = ShopPrices.getNewPorducts(pid, productsService, groupbuyingService, discountService,
				ordersService, orderdetailsService);
		List<Orderdetails> list = new ArrayList<Orderdetails>();
		for (int i = 0; i < num.length; i++) {
			Orderdetails orderdetails = new Orderdetails();
			orderdetails.setPid(Integer.valueOf(pid[i]));
			orderdetails.setOrdercount(Integer.valueOf(num[i]));
			orderdetails.setOid(orders.getId());
			list.add(orderdetails);
		}
		view.addObject("products", products);
		return view;
	}

	// 生成新订单
	private Orders getNewOrders(OldUsers oldUsers) {
		Orders orders = new Orders();
		/*
		 * 设置属性
		 * 
		 */
		/*
		 * OldUsers oldUsers = (OldUsers)
		 * request.getSession().getAttribute("oldUsers"); String address =
		 * request.getParameter("address"); if
		 * (request.getParameter("remarks").length() >= 2) {
		 * orders.setRemarks(request.getParameter("remarks")); }
		 */
		orders.setUid(oldUsers.getUid());
		orders.setOrderaddress(oldUsers.getAddress());
		orders.setOrdertime(new Date());
		ordersService.insertSelective(orders);
		return orders;
	}
}
