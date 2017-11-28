package com.controller.front.groupbuying;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Classification;
import com.bean.Discountproducts;
import com.bean.GroupProducts;
import com.bean.Groupbuying;
import com.bean.OldUsers;
import com.bean.Products;
import com.bean.Showsphotos;
import com.service.ClassificationService;
import com.service.DiscountService;
import com.service.GroupbuyingService;
import com.service.ProductsService;
import com.service.ShowsphotosService;

@Controller
@RequestMapping("/front/groupbuying")
public class GroupsbuyingController {
  
	@Resource
	private GroupbuyingService groupbuyingService;
	
	@Autowired
	@Qualifier("discountService")
	private DiscountService discountService;
	
	@Resource
	private ClassificationService classification;
	
	@Autowired
	@Qualifier("showsphotosService")          //商品其余图片
	private ShowsphotosService showsphotosService;
	

	@Autowired
	@Qualifier("productsService")
	private ProductsService productsService;
	
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
	public String GroupLook(HttpServletRequest request,int pid){
		/*商品其余图片*/
		List<Showsphotos> photos=null; 
		List<String> photoUrl=new ArrayList<String>();
		photos=showsphotosService.selectBypid(pid);
		for(Showsphotos url:photos){
			photoUrl.add(url.getImage());
		}
		/*得到商品信息*/
		Products product=productsService.selectByPrimaryKey(pid);
	   /* 得到团购信息*/
		Groupbuying groupbuying=groupbuyingService.selectByPrimaryKey(pid);
	   /*得到打折推荐*/
		List<Discountproducts> discount=new ArrayList<Discountproducts>();
		Discountproducts discountone=new Discountproducts();
		discount=discountService.selectDiscountproducts();
		if(discount.size()>=2){
			discountone=discount.get(0);
			discount.remove(0);
		}
		request.setAttribute("discount",discount);
		request.setAttribute("discountone",discountone);
		request.setAttribute("photoUrl",photoUrl);
		request.setAttribute("product",product);
		request.setAttribute("groupbuying",groupbuying);
		return "front/Groupseeproducts";
	}
	
}
