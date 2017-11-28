package com.controller.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bean.Activitydetailinfo;
import com.bean.Localarea;
import com.bean.OldUsers;
import com.bean.Orders;
import com.bean.Products;
import com.service.ActivitydetailinfoService;
import com.service.DiscountService;
import com.service.GroupbuyingService;
import com.service.LocalAreaService;
import com.service.ManagerInfoService;
import com.service.ManagerService;
import com.service.OldUsersService;
import com.service.OrderdetailsService;
import com.service.OrdersService;
import com.service.ProductsService;
import com.service.VideoService;
import com.service.WatchhistoryService;

@Controller
@RequestMapping("/localareaviews")
public class LocalareaViewController {
	@Autowired
	@Qualifier("oldUsersService")
	private OldUsersService oldUsersService;
	
	@Autowired
	@Qualifier("managerService")
	private ManagerService managerService;
	
	@Autowired
	@Qualifier("managerInfoService")
	private ManagerInfoService managerInfoService;
	
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
	
	@Autowired
	@Qualifier("activitydetailinfoService")
	private ActivitydetailinfoService activitydetailinfoService;
	
	@Autowired
	@Qualifier("videoService")
	private VideoService videoService;
	
	@Autowired
	@Qualifier("watchhistoryService")
	private WatchhistoryService watchhistoryService;
	
	
	@Autowired
	@Qualifier("localAreaService")
	private LocalAreaService localAreaService;
	
	@RequestMapping("/mapViews")
	@ResponseBody
	public Map<String, Object> mapViews(HttpServletRequest request){
		Map<String, Object> map=new HashMap<String, Object>();
		List<Localarea> list=localAreaService.getOurMeritMapViews();
		map.put("ourMerit", list);
		return map;
	}
	
	@RequestMapping("/yearMoneys")
	@ResponseBody
	public Map<String, Object> yearMoneys(HttpServletRequest request){
		Map<String, Object> map=new HashMap<String, Object>();
		if (request.getParameter("area")==null|"".equals(request.getParameter("area"))) {
			return null;
		}
		Integer area=Integer.valueOf(request.getParameter("area"));
		List<Localarea> list=localAreaService.getOurMeritUsersMoneyViews(area);
		map.put("ourMeritMoneys", list);
		return map;
	}
	
	@RequestMapping("/getYesrAllMoneys")
	@ResponseBody
	public Map<String, Object> getYesrAllMoneys(HttpServletRequest request){
		Map<String, Object> map=new HashMap<String, Object>();
		Double yearMoneys=ordersService.selectOrdersAllMoneysYear();
		map.put("yearMoneys", yearMoneys);
		return map;
	}
	
	
	@RequestMapping("/getAllOldUsers")
	@ResponseBody
	public Map<String, Object> getAllOldUsers(HttpServletRequest request){
		Map<String, Object> map=new HashMap<String, Object>();
		Double yearMoneys=ordersService.selectOrdersAllMoneysYear();
		map.put("yearMoneys", yearMoneys);
		return map;
	}
	
	@RequestMapping("/getAllProducts")
	@ResponseBody
	public Map<String, Object> getAllProducts(HttpServletRequest request){
		Map<String, Object> map=new HashMap<String, Object>();
		Double yearMoneys=ordersService.selectOrdersAllMoneysYear();
		map.put("yearMoneys", yearMoneys);
		return map;
	}
	

}
