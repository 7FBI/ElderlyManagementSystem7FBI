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
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Frontinformation;
import com.bean.Managerinfo;
import com.bean.OldUsers;
import com.bean.Orderdetails;
import com.bean.Orders;
import com.bean.Products;
import com.bean.Profile;
import com.bean.ShoppingCart;
import com.controller.front.oldusers.OldUsersController;
import com.controller.util.shop.ShopPrices;
import com.service.CreditService;
import com.service.DiscountService;
import com.service.GroupbuyingService;
import com.service.OldUsersService;
import com.service.OrderdetailsService;
import com.service.OrdersService;
import com.service.ProductsService;
import com.service.ProfileService;
import com.service.ShoppingCartService;

@Controller
@RequestMapping("/front/orders")
public class ProductOrdersController {
	@Autowired
	@Qualifier("oldUsersService")
	private OldUsersService oldUsersService;
	
	@Autowired
	@Qualifier("shoppingCartService")
	private ShoppingCartService shoppingCartService;

	@Autowired
	@Qualifier("creditService")
	private CreditService creditService;

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
	@ResponseBody
	public String addOrder(HttpServletRequest request ,@RequestBody Products[] products) {
		if (request.getSession().getAttribute("oldUsers") == null) {
			return "login";
		}
		
		OldUsers oldUsers = (OldUsers) request.getSession().getAttribute("oldUsers");
		Orders orders = getNewOrders(oldUsers);
		//List<Profile> profiles = profileService.selectProfileByUid(oldUsers.getUid());
		List<Orderdetails> list = new ArrayList<Orderdetails>();
		List<Integer> pids = new ArrayList<Integer>();
		for (int i = 0; i < products.length; i++) {
			Orderdetails orderdetails = new Orderdetails();
			orderdetails.setPid(Integer.valueOf(products[i].getId()));
			orderdetails.setOrdercount(Integer.valueOf(products[i].getSumNum()));
			orderdetails.setOid(orders.getId());
			list.add(orderdetails);
			pids.add(products[i].getId());
		}
		orderdetailsService.insertSelectiveList(list);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", pids);
		map.put("uid", oldUsers.getUid());
		List<ShoppingCart> sList = shoppingCartService.selectByaproduvtsList(map);
		System.out.println("--------------size:"+sList.size());
		List<Integer> integers = new ArrayList<Integer>();
		for (ShoppingCart ShoppingCart : sList) {
			integers.add(ShoppingCart.getId());
		}
		if (integers.size()>0) {
			map.put("list", integers);
			shoppingCartService.deleteByPrimaryKeyList(map);
		}
		//查看是否存在打折
		orders.setMoney(ShopPrices.getAllShowPrices(orders.getId(), discountService, orderdetailsService));
		ordersService.updateByPrimaryKeySelective(orders);
		//request.setAttribute("id", orders.getId());
		return  orders.getId();
	}

	@RequestMapping("/addOneOrder")
	public ModelAndView addOneOrder(HttpServletRequest request) {
		ModelAndView view = new ModelAndView();
		if (request.getSession().getAttribute("oldUsers") == null) {
			view.setViewName("front/login");
			return view;
		}
		OldUsers oldUsers = (OldUsers) request.getSession().getAttribute("oldUsers");
		Integer pid = Integer.valueOf(request.getParameter("pid"));
		Integer num = Integer.valueOf(request.getParameter("num"));
		Orders orders = getNewOrders(oldUsers);
		Orderdetails orderdetails = new Orderdetails();
		orderdetails.setPid(pid);
		orderdetails.setOrdercount(num);
		orderdetails.setOid(orders.getId());
		ShoppingCart scart = new ShoppingCart();
		scart.setPid(pid);
		scart.setUid(oldUsers.getUid());
		ShoppingCart sCart = shoppingCartService.selectByaproduvts(scart);
		orderdetailsService.insertSelective(orderdetails);
		if (sCart != null) {
			shoppingCartService.deleteByPrimaryKey(sCart.getId());
		}
		if (orders.getMoney() == null || orders.getMoney() <= 0.0) {
			orders.setMoney(ShopPrices.getAllShowPrices(orders.getId(), ordersService, orderdetailsService));
			ordersService.updateByPrimaryKeySelective(orders);
		}
		request.setAttribute("id", orders.getId());
		return ordersInfoByExchange(request,orders.getId());
	}

	@RequestMapping("/ordersInfo")
	public ModelAndView ordersInfo(HttpServletRequest request, String id) {
		ModelAndView view = new ModelAndView();
		if (request.getSession().getAttribute("oldUsers") == null) {
			view.setViewName("front/login");
			return view;
		}
		// String oid = request.getParameter("id");
		String oid = id;
		OldUsers oldUsers = (OldUsers) request.getSession().getAttribute("oldUsers");
		view.setViewName("front/oldUser/ordersInfo");
		Orders orders = ordersService.selectByPrimaryKey(oid);

		if (orders.getMoney() == null || orders.getMoney() <= 0.0) {
			orders.setMoney(0.0);
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
			view.setViewName("front/login");
			return view;
		}
		String oid = request.getParameter("id");
		OldUsers oldUsers = (OldUsers) request.getSession().getAttribute("oldUsers");
		view.setViewName("front/oldUser/Order_Detail");
		Orders orders = ordersService.selectByPrimaryKey(oid);
		if (orders.getMoney() == null || orders.getMoney() <= 0.0) {
			//orders.setMoney(ShopPrices.getAllShowPrices(orders.getId(), ordersService, orderdetailsService));
			orders.setMoney(0.0);
			ordersService.updateByPrimaryKeySelective(orders);
		}
		List<Profile> profiles = profileService.selectProfileByUid(oldUsers.getUid());
		List<Orderdetails> list = orderdetailsService.selectByOrdersId(oid);
		view.addObject("orderdetails", list);
		view.addObject("orders", orders);
		view.addObject("profile", profiles);
		return view;
	}

	// 兑换商品时增加一个订单
	@RequestMapping("/addOneOrderByExchange")
	public ModelAndView addOneOrderByExchange(HttpServletRequest request) {
		ModelAndView view = new ModelAndView();
		if (request.getSession().getAttribute("oldUsers") == null) {
			view.setViewName("front/login");
			return view;
		}
		OldUsers oldUsers = (OldUsers) request.getSession().getAttribute("oldUsers");
		Integer pid = Integer.valueOf(request.getParameter("pid"));
		Integer num = Integer.valueOf(request.getParameter("num"));
		Orders orders = getNewOrders(oldUsers);
		Orderdetails orderdetails = new Orderdetails();
		orderdetails.setPid(pid);
		orderdetails.setOrdercount(num);
		orderdetails.setOid(orders.getId());
		orderdetailsService.insertSelective(orderdetails);
		request.setAttribute("id", orders.getId());
		return ordersInfoByExchange(request, orders.getId());
	}

	// 积分商城兑换物品-》支付详情页
	@RequestMapping("/ordersInfoByExchange")
	public ModelAndView ordersInfoByExchange(HttpServletRequest request, String id) {
		ModelAndView view = new ModelAndView();
		if (request.getSession().getAttribute("oldUsers") == null) {
			view.setViewName("front/login");
			return view;
		}
		// String oid = request.getParameter("id");
		String oid = id;
		OldUsers oldUsers = (OldUsers) request.getSession().getAttribute("oldUsers");
		view.setViewName("front/Pay");
		Orders orders = ordersService.selectByPrimaryKey(oid);
		if (orders.getMoney() == null || orders.getMoney() <= 0.0) {
			orders.setMoney(0.0);
			ordersService.updateByPrimaryKeySelective(orders);
		}
		List<Profile> profiles = profileService.selectProfileByUid(oldUsers.getUid());
		List<Orderdetails> list = orderdetailsService.selectByOrdersId(oid);
		view.addObject("orderdetails", list);
		view.addObject("orders", orders);
		view.addObject("profile", profiles);
		return view;
	}

	// 订单管理-》订单详情页
	@RequestMapping("/ordersOverInfoByExchange")
	public ModelAndView ordersOverInfoByExchange(HttpServletRequest request) {
		ModelAndView view = new ModelAndView();
		if (request.getSession().getAttribute("oldUsers") == null) {
			view.setViewName("front/login");
			return view;
		}
		String oid = request.getParameter("id");
		OldUsers oldUsers = (OldUsers) request.getSession().getAttribute("oldUsers");
		view.setViewName("front/Order_Detail");
		Orders orders = ordersService.selectByPrimaryKey(oid);
		if (orders.getMoney() == null || orders.getMoney() <= 0.0) {
			orders.setMoney(0.0);
			ordersService.updateByPrimaryKeySelective(orders);
		}
		List<Profile> profiles = profileService.selectProfileByUid(oldUsers.getUid());
		//List<Orderdetails> list = orderdetailsService.selectByOrdersId(oid);
		List<Orderdetails> list=ShopPrices.getAllOrderdetailsPrices(oid, discountService,orderdetailsService);
		view.addObject("orderdetails", list);
		view.addObject("orders", orders);
		view.addObject("profile", profiles);
		return view;
	}

	// 订单详情页的确认收货按钮跳转到确认收货页
	@RequestMapping("/ordersOverInfoByExchangeConfirmReceipt")
	public ModelAndView ordersOverInfoByExchangeConfirmReceipt(HttpServletRequest request) {
		ModelAndView view = new ModelAndView();
		if (request.getSession().getAttribute("oldUsers") == null) {
			view.setViewName("/front/login");
			return view;
		}
		String oid = request.getParameter("id");
		OldUsers oldUsers = (OldUsers) request.getSession().getAttribute("oldUsers");
		view.setViewName("/front/Confirm_Receipt");
		Orders orders = ordersService.selectByPrimaryKey(oid);
		if (orders != null) {
			orders.setOrderstatus(2);
			orders.setOrdertime(new Date());
			ordersService.updateByPrimaryKeySelective(orders);
		}
		List<Profile> profiles = profileService.selectProfileByUid(oldUsers.getUid());
		//List<Orderdetails> list = orderdetailsService.selectByOrdersId(oid);
		List<Orderdetails> list=ShopPrices.getAllOrderdetailsPrices(oid, discountService,orderdetailsService);
		view.addObject("orderdetails", list);
		view.addObject("orders", orders);
		view.addObject("profile", profiles);
		return view;
	}

	@RequestMapping("/allOrdersList")
	public ModelAndView allOrdersInfo(HttpServletRequest request) {
		ModelAndView view = new ModelAndView();
		if (request.getSession().getAttribute("oldUsers") == null) {
			view.setViewName("/front/login");
			return view;
		}

		Integer status = null;
		if (request.getParameter("status") != null) {
			status = Integer.valueOf(request.getParameter("status"));
		}
		// view.setViewName(getStatusJsp(status));
		view.setViewName("front/SelfCenter_Exchange");
		OldUsers oldUsers = (OldUsers) request.getSession().getAttribute("oldUsers");
		Map<String, Object> map = new HashMap<String, Object>();
		Orders ord = new Orders();
		ord.setOrderstatus(status);
		ord.setUid(oldUsers.getUid());
		Integer max = 15;
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
		int i = 0;
		for (Orders orders2 : orders) {
			if (orders2.getMoney() == null || orders2.getMoney() <= 0.0) {
				orders2.setMoney(ShopPrices.getAllShowPrices(orders2.getId(), ordersService, orderdetailsService));
				ordersService.updateByPrimaryKeySelective(orders2);
			}
			orders.get(i).setOrderdetails(ShopPrices.getAllOrderdetailsPrices(orders2.getId(), productsService,
					groupbuyingService, discountService, ordersService, orderdetailsService));
			i++;
		}
		List<Orders> orders2 = ShopPrices.getAllShowPrices(orders);
		view.addObject("orders", orders2);
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
		return "redirect:/front/oldUsers/selectByUid";
	}

	//下单
	@RequestMapping("/overOrders")
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
				oldUsers.setBalance(oldUsers.getBalance()-orders.getMoney());
				oldUsersService.updateByPrimaryKeySelective(oldUsers);
				orders.setOrdertime(new Date());
				ordersService.updateByPrimaryKeySelective(orders);
				// 增加积分
				ShopPrices.addCredit(oldUsers, orders.getMoney(), creditService);
			} else {
				return "balance";
			}
		}

		return "true";
	}

	@RequestMapping("/overProducts")
	@ResponseBody
	public String overProducts(HttpServletRequest request) {
		if (request.getSession().getAttribute("oldUsers") == null) {
			return "login";
		}
		String id = request.getParameter("id");
		Orders orders = ordersService.selectByPrimaryKey(id);
		if (orders != null) {
				orders.setOrderstatus(2);
				orders.setOrdertime(new Date());
				ordersService.updateByPrimaryKeySelective(orders);
		}
		return "true";
	}

	@RequestMapping("/overProductsMod")
	public ModelAndView overProductsMod(HttpServletRequest request) {
		ModelAndView view = new ModelAndView();
		if (request.getSession().getAttribute("oldUsers") == null) {
			view.setViewName("login");
			return view;
		}
		String id = request.getParameter("id");
		Orders orders = ordersService.selectByPrimaryKey(id);
		if (orders != null) {
			orders.setOrderstatus(2);
			orders.setOrdertime(new Date());
			ordersService.updateByPrimaryKeySelective(orders);
		}
		return allOrdersInfo(request);
	}

	private String getStatusJsp(Integer status) {
		if (status == null) {
			return "/front/oldUser/ordersAllList";
		}
		String s = "";
		switch (status) {
		case 1:
			s = "/front/oldUser/ordersAllList1";
			break;
		case 2:
			s = "/front/oldUser/ordersAllList2";
			break;
		default:
			s = "/front/oldUser/ordersAllList0";
			break;
		}
		return s;
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
	
	
	//团购添加
		@RequestMapping("/addGroupOrders")
		public ModelAndView addGroupOrders(HttpServletRequest request) {
			ModelAndView view = new ModelAndView();
			if (request.getSession().getAttribute("oldUsers") == null) {
				view.setViewName("/front/login");
				return view;
			}
			OldUsers oldUsers = (OldUsers) request.getSession().getAttribute("oldUsers");
			Integer pid = Integer.valueOf(request.getParameter("pid"));
			Integer num = Integer.valueOf(request.getParameter("num"));
			Orders orders = getNewOrders(oldUsers);
			Orderdetails orderdetails = new Orderdetails();
			orderdetails.setPid(pid);
			orderdetails.setOrdercount(num);
			orderdetails.setOid(orders.getId());
			ShoppingCart scart=new ShoppingCart();
			scart.setPid(pid);
			scart.setUid(oldUsers.getUid());
			ShoppingCart sCart=shoppingCartService.selectByaproduvts(scart);
			if (sCart!=null) {
				shoppingCartService.deleteByPrimaryKey(sCart.getId());
			}
			orderdetailsService.insertSelective(orderdetails);
			orders.setMoney(ShopPrices.getAllShowPrices(orders.getId(),  groupbuyingService, orderdetailsService));
			ordersService.updateByPrimaryKeySelective(orders);
			request.setAttribute("id", orders.getId());
			return ordersInfoByExchange(request,orders.getId());
		}
		
		
		//打折添加
		@RequestMapping("/addDiscountOrders")
		public ModelAndView addDiscountOrders(HttpServletRequest request) {
			ModelAndView view = new ModelAndView();
			if (request.getSession().getAttribute("oldUsers") == null) {
				view.setViewName("/front/login");
				return view;
			}
			OldUsers oldUsers = (OldUsers) request.getSession().getAttribute("oldUsers");
			String[] pid=request.getParameterValues("pid");
			String[] num=request.getParameterValues("num");
			Orders orders = getNewOrders(oldUsers);
			List<Orderdetails> list=new ArrayList<Orderdetails>();
			for (int i = 0; i < num.length; i++) {
				Orderdetails orderdetails = new Orderdetails();
				orderdetails.setPid(Integer.valueOf(pid[i]));
				orderdetails.setOrdercount(Integer.valueOf(num[i]));
				orderdetails.setOid(orders.getId());
				ShoppingCart scart=new ShoppingCart();
				scart.setPid(Integer.valueOf(pid[i]));
				scart.setUid(oldUsers.getUid());
				ShoppingCart sCart=shoppingCartService.selectByaproduvts(scart);
				if (sCart!=null) {
					shoppingCartService.deleteByPrimaryKey(sCart.getId());
				}
				list.add(orderdetails);
			}
			orderdetailsService.insertSelectiveList(list);
			orders.setMoney(ShopPrices.getAllShowPrices(orders.getId(), discountService, orderdetailsService));
			ordersService.updateByPrimaryKeySelective(orders);
			request.setAttribute("id", orders.getId());
			return ordersInfo(request,orders.getId());
		}

}
