package com.controller.front.groupbuying;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Classification;
import com.bean.GroupProducts;
import com.bean.Groupbuying;
import com.bean.OldUsers;
import com.bean.Products;
import com.service.ClassificationService;
import com.service.GroupbuyingService;
import com.service.ProductsService;

@Controller
@RequestMapping("/front/groupbuying")
public class GroupsbuyingController {
  
	@Resource
	private GroupbuyingService groupbuyingService;
	
	@Resource
	private ProductsService productsService;
	
	@Resource
	private ClassificationService classification;
	
	/*获得团购商城商品*/
	@RequestMapping("/Lookto.action")
	public String selectGroupbuying(HttpServletRequest request){
		if(request.getSession().getAttribute("oldUsers")!=null){
		OldUsers user=(OldUsers) request.getSession().getAttribute("oldUsers"); 
		List<Classification> lebie=new ArrayList<Classification>();   /*类别*/
		lebie=classification.selectClassifiaction();
		List<GroupProducts> zhuij=new ArrayList<GroupProducts>();     /*复合类*/
		List<Groupbuying> list=new ArrayList<Groupbuying>();
		List<Products> test=new ArrayList<Products>(); 
		/* 查询出团购表*/
		list=groupbuyingService.selectAll();
		for(Groupbuying lists:list){
			GroupProducts produ=new GroupProducts();
			produ.setGroupbuying(lists);
			Products hui=productsService.selectByPrimaryKey(lists.getPid());
			produ.setProducts(hui);
			 
			
			System.out.println(produ.getGroupbuying().getGroupprice());
			zhuij.add(produ);
		}
		request.setAttribute("toali",lebie);
		request.setAttribute("Groupbuyings", zhuij);
		request.setAttribute("user",user);
		return "front/Group_purchase";
		}
		return "front/login";
	}
	
	/*团购商城商品详情页*/
	@RequestMapping("/toxiangqing.action")
	public ModelAndView GroupLook(HttpServletRequest request){
		ModelAndView modelAndView = new ModelAndView();
		return modelAndView;
	}
	
}
