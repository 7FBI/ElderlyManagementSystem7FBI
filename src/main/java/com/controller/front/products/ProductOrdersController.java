package com.controller.front.products;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Frontinformation;
import com.bean.Managerinfo;
import com.bean.OldUsers;
import com.bean.Orderdetails;
import com.bean.Orders;
import com.bean.Products;
import com.bean.Profile;
import com.controller.front.oldusers.OldUsersController;
import com.controller.util.shop.ShopPrices;
import com.service.DiscountService;
import com.service.GroupbuyingService;
import com.service.OrderdetailsService;
import com.service.OrdersService;
import com.service.ProductsService;
import com.service.ProfileService;

@Controller
@RequestMapping("/front/orders")
public class ProductOrdersController {
	@Autowired
	@Qualifier("profileService")
	private ProfileService profileService;

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
		ModelAndView view = new ModelAndView();
		if (request.getSession().getAttribute("oldUsers") == null) {
			view.setViewName("/front/login");
			return view;
		}
		OldUsers oldUsers = (OldUsers) request.getSession().getAttribute("oldUsers");
		view.setViewName("/front/oldUser/ordersInfo");
		String[] pid = request.getParameterValues("pid");
		String[] num = request.getParameterValues("num");
		Orders orders = getNewOrders(oldUsers);
		List<Profile> profiles = profileService.selectProfileByUid(oldUsers.getUid());
		List<Orderdetails> list = new ArrayList<Orderdetails>();
		for (int i = 0; i < num.length; i++) {
			Orderdetails orderdetails = new Orderdetails();
			orderdetails.setPid(Integer.valueOf(pid[i]));
			orderdetails.setOrdercount(Integer.valueOf(num[i]));
			orderdetails.setOid(orders.getId());
			list.add(orderdetails);
		}
		orderdetailsService.insertSelectiveList(list);
		// view.addObject("products", products);
		view.addObject("orderdetails", list);
		view.addObject("orders", orders);
		view.addObject("profile", profiles);
		return view;
	}

	@RequestMapping("/ordersInfo")
	public ModelAndView ordersInfo(HttpServletRequest request) {
		ModelAndView view = new ModelAndView();
		if (request.getSession().getAttribute("oldUsers") == null) {
			view.setViewName("/front/login");
			return view;
		}
		String oid = request.getParameter("id");
		OldUsers oldUsers = (OldUsers) request.getSession().getAttribute("oldUsers");
		view.setViewName("/front/oldUser/ordersInfo");
		Orders orders = ordersService.selectByPrimaryKey(oid);
		if (orders.getMoney() <= 0.0) {
			orders.setMoney(ShopPrices.getAllShowPrices(oid, productsService, groupbuyingService, discountService,
					ordersService, orderdetailsService));
			ordersService.updateByPrimaryKeySelective(orders);
		}
		List<Profile> profiles = profileService.selectProfileByUid(oldUsers.getUid());
		List<Orderdetails> list = orderdetailsService.selectByOrdersId(oid);
		view.addObject("orderdetails", list);
		view.addObject("orders", orders);
		view.addObject("profile", profiles);
		return view;
	}
	
	
	@RequestMapping("/ordersOverInfo")
	public ModelAndView ordersOverInfo(HttpServletRequest request) {
		ModelAndView view = new ModelAndView();
		if (request.getSession().getAttribute("oldUsers") == null) {
			view.setViewName("/front/login");
			return view;
		}
		String oid = request.getParameter("id");
		OldUsers oldUsers = (OldUsers) request.getSession().getAttribute("oldUsers");
		view.setViewName("/front/oldUser/ordersOverInfo");
		Orders orders = ordersService.selectByPrimaryKey(oid);
		if (orders.getMoney() <= 0.0) {
			orders.setMoney(ShopPrices.getAllShowPrices(oid, productsService, groupbuyingService, discountService,
					ordersService, orderdetailsService));
			ordersService.updateByPrimaryKeySelective(orders);
		}
		List<Profile> profiles = profileService.selectProfileByUid(oldUsers.getUid());
		List<Orderdetails> list = orderdetailsService.selectByOrdersId(oid);
		view.addObject("orderdetails", list);
		view.addObject("orders", orders);
		view.addObject("profile", profiles);
		return view;
	}
	

	@RequestMapping("/allOrdersList")
	@ResponseBody
	public ModelAndView allOrdersInfo(HttpServletRequest request) {
		ModelAndView view = new ModelAndView();
		if (request.getSession().getAttribute("oldUsers") == null) {
			view.setViewName("/front/login");
			return view;
		}
		view.setViewName("/front/oldUser/orderList");
		Integer status=0;
		if (request.getParameter("status")!=null) {
			status=Integer.valueOf(request.getParameter("status"));
		}
		OldUsers oldUsers = (OldUsers) request.getSession().getAttribute("oldUsers");
		Map<String, Object> map = new HashMap<String, Object>();
		Orders ord=new Orders();
		ord.setOrderstatus(status);
		ord.setUid(oldUsers.getUid());
		Integer max = 10;
		Integer page = 0;
		Integer counts = 0;
		map.put("orders", ord);
		// 当前页
		if (request.getParameter("page") != null) {
			page = Integer.valueOf(request.getParameter("page"));
		}
		if (page < 0) {
			page = 0;
		}
		counts = ordersService.selectByorderstatusCount(map) / max;
		if (counts <= 0) {
			counts = 0;
		}
		if (page >= counts) {
			page = counts;
		}
		map.put("page", page * max);
		map.put("max", max);
		List<Orders> orders = ordersService.selectFrontOrderstatus(map);
		for (Orders orders2 : orders) {
			if (orders2.getMoney() <= 0.0) {
				orders2.setMoney(ShopPrices.getAllShowPrices(orders2.getId(), productsService, groupbuyingService, discountService,
						ordersService, orderdetailsService));
				ordersService.updateByPrimaryKeySelective(orders2);
			}
		}
		view.addObject("orders", orders);
		return view;
	}

	@RequestMapping("/updateOrders")
	@ResponseBody
	public String updateOrders(HttpServletRequest request, Orders orders) {
		if (request.getSession().getAttribute("oldUsers") == null) {
			return "login";
		}
		ordersService.updateByPrimaryKeySelective(orders);
		return "true";
	}

	@RequestMapping("/deleteOrders")
	public String deleteOrders(HttpServletRequest request) {
		if (request.getSession().getAttribute("oldUsers") == null) {
			return "/front/login";
		}
		String id = request.getParameter("id");
		ordersService.deleteByPrimaryKey(id);
		return "redirect:/";
	}

	@RequestMapping("overOrders")
	@ResponseBody
	public String overOrders(HttpServletRequest request) {
		if (request.getSession().getAttribute("oldUsers") == null) {
			return "login";
		}
		String id = request.getParameter("id");
		Orders orders = ordersService.selectByPrimaryKey(id);
		OldUsers oldUsers = (OldUsers) request.getSession().getAttribute("oldUsers");
		if (orders != null) {
			if (oldUsers.getBalance() > orders.getMoney()) {
				orders.setOrderstatus(1);
				ordersService.updateByPrimaryKeySelective(orders);
			} else {
				return "balance";
			}
		}

		return "true";
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
