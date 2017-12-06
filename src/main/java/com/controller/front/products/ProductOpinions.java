package com.controller.front.products;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.httpclient.methods.PostMethod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.bean.OldUsers;
import com.bean.Opinions;
import com.bean.Orderdetails;
import com.bean.Products;
import com.bean.Remarkpicture;
import com.controller.util.shop.ShopPrices;
import com.others.file.UploadImage;
import com.service.DiscountService;
import com.service.GroupbuyingService;
import com.service.OpinionsService;
import com.service.OrderdetailsService;
import com.service.OrdersService;
import com.service.ProductsService;
import com.service.RemarkpictureService;

@Controller
@RequestMapping("/front/opinions")
public class ProductOpinions {
	@Autowired
	@Qualifier("ordersService")
	private OrdersService ordersService;
	
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
	@Qualifier("discountService")
	private DiscountService discountService;
	
	@Autowired
	@Qualifier("remarkpictureService")
	private RemarkpictureService remarkpictureService;
	
	@Autowired
	@Qualifier("opinionsService")
	private OpinionsService opinionsService;

	@RequestMapping("/opinionsList")
	@ResponseBody
	public Map<String, Object> opinionsList(HttpServletRequest request) {
		Map<String, Object> map = new HashMap<String, Object>();
		List<Opinions> list = null;
		Integer pid = 0;
		Integer max = 2;
		Integer page = 0;
		Integer counts = 0;
		Double avg=0.0;
		if (request.getParameter("pid") != null) {
			pid = Integer.valueOf(request.getParameter("pid"));
		}
		map.put("pid", pid);
		avg=opinionsService.selectByPidOpinionsAvg(pid);
		// 当前页
		if (request.getParameter("page") != null) {
			page = Integer.valueOf(request.getParameter("page"));
		}
		if (page < 0) {
			page = 0;
		}
		counts = opinionsService.selectByPidOpinionsCount(map);
		map.put("counts", counts);
		counts=counts / max;
		if (counts <= 0) {
			counts = 0;
		}
		if (page >= counts) {
			page = counts;
		}
		map.put("page", page * max);
		map.put("max", max);
		list=opinionsService.selectByPidOpinions(map);
		map.put("page", page);
		map.put("opinions", list);
		map.put("count", counts+1);
		map.put("avg", avg);
		return map;
	}
	
	@RequestMapping("/remarkList")
	@ResponseBody
	public List<Remarkpicture> remarkList(HttpServletRequest request){
		Integer opid=0;
		if (request.getParameter("opid")==null) {
			return null;
		}
		opid=Integer.valueOf(request.getParameter("opid"));
		Remarkpicture remarkpicture=new Remarkpicture();
		remarkpicture.setOpinionid(opid);
		List<Remarkpicture> list=null;
		list=remarkpictureService.selectByopinionidAll(remarkpicture);
		return list;
	}
	
	@RequestMapping("/addOpinionsView")
	public ModelAndView addProductOpinions(HttpServletRequest request){
		ModelAndView view=new ModelAndView();
		if (request.getSession().getAttribute("oldUsers") == null) {
			view.setViewName("/front/login");
			return view;
		}
		Integer id=Integer.valueOf(request.getParameter("pid"));
		//String oid=request.getParameter("oid");
		//List<Orderdetails> oList=ShopPrices.getAllOrderdetailsPrices(oid, productsService, groupbuyingService, discountService, ordersService, orderdetailsService);
		Products products=productsService.selectByPrimaryKey(id);
		Double newMoney=0.0;
		newMoney=ShopPrices.getNewMoney(id, productsService, groupbuyingService, discountService);
		if (0.0==newMoney) {
			view.addObject("newMoney", products.getPrice());
		}else {
			view.addObject("newMoney", newMoney);
		}
		view.setViewName("/front/productOpinions");
		view.addObject("products", products);
		return view;
	}
	
	@RequestMapping("/addProductOpinions")
	@ResponseBody
	public String addProductOpinions(HttpServletRequest request,Opinions opinions,@RequestParam("files") MultipartFile[] files){
		if (request.getSession().getAttribute("oldUsers") == null) {
			return "login";
		}
		OldUsers oldUsers=(OldUsers) request.getSession().getAttribute("oldUsers");
		opinions.setUid(oldUsers.getUid());
		opinions.setOpinionstime(new Date());
		opinionsService.insertSelective(opinions);
		List<String> urList=null;
		if (files.length>0) {
			if (files[0]!=null) {
				MultipartFile[] file=new MultipartFile[files.length-1];
				for (int i = 0; i < file.length; i++) {
					file[i]=files[i];
				}
				urList=UploadImage.addImages(file, "/opinions/image", request);
				Map<String, List<Remarkpicture>> map=new HashMap<String, List<Remarkpicture>>();
				List<Remarkpicture> list=new ArrayList<Remarkpicture>();
				for (String urls : urList) {
					Remarkpicture remarkpicture=new Remarkpicture();
					remarkpicture.setOpinionid(opinions.getId());
					remarkpicture.setRemarkurl(urls);
					list.add(remarkpicture);
				}
				map.put("list", list);
				remarkpictureService.insertRemarkpictureList(map);
			}
		}
		return "true";
	}
	
	
	@RequestMapping("/opinionsMode")
	public ModelAndView opinionsMode(HttpServletRequest request) {
		ModelAndView view=new ModelAndView();
		Map<String, Object> map=new HashMap<String, Object>();
		List<Opinions> list = null;
		Integer pid = 0;
		if (request.getSession().getAttribute("oldUsers")!=null) {
			view.setViewName("front/login");
			return view;
		}
		OldUsers oldUsers=(OldUsers) request.getSession().getAttribute("oldUsers");
		map.put("uid", oldUsers.getUid());
		list=opinionsService.selectByPidOpinions(map);
		view.addObject("opinions",list);
		view.setViewName("front/SelfCenter_Comment");
		return view;
	}

}
