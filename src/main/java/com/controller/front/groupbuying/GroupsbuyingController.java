package com.controller.front.groupbuying;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bean.Classification;
import com.bean.GroupProducts;
import com.bean.Groupbuying;
import com.bean.Groupdetail;
import com.bean.OldUsers;
import com.bean.Products;
import com.service.ClassificationService;
import com.service.GroupbuyingService;
import com.service.GroupdetailService;
import com.service.ProductsService;

@Controller
@RequestMapping("/front/groupbuying")
public class GroupsbuyingController {
	@Autowired
	@Qualifier("groupdetailService")
	private GroupdetailService groupdetailService;
  
	@Resource
	private GroupbuyingService groupbuyingService;
	
	@Resource
	private ProductsService productsService;
	
	@Resource
	private ClassificationService classification;
	
	/*获得团购商城商品*/
	@RequestMapping("/Lookto.action")
	public String selectGroupbuying(HttpServletRequest request,HttpServletResponse response){
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
		return "front/Group_purchase";
		
	}
	@RequestMapping("/addGroupDetail")
	@ResponseBody
	public String addGroupDetail(HttpServletRequest request){
		if (request.getSession().getAttribute("oldUsers")==null) {
			return "login";
		}
		OldUsers oldUsers=(OldUsers) request.getSession().getAttribute("oldUsers");
		Groupdetail record=new Groupdetail();
		record.setUid(oldUsers.getUid());
		if (groupdetailService.selectByUidAndGid(record)!=null) {
			return "have";
		}else {
			Integer gid=Integer.valueOf(request.getParameter("gid"));
			record.setGid(gid);
			groupdetailService.insertSelective(record);
			return "true";
		}
	}
	
	
}
