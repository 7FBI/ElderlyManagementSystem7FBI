package com.controller.front.groupbuying;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Classification;
import com.bean.Discountproducts;
import com.bean.GroupProducts;
import com.bean.Groupbuying;
import com.bean.Groupdetail;
import com.bean.OldUsers;
import com.bean.Products;
import com.bean.Showsphotos;
import com.controller.util.shop.OldCollectionBoolean;
import com.service.ClassificationService;
import com.service.DiscountService;
import com.service.GroupbuyingService;
import com.service.GroupdetailService;
import com.service.OldCollectionService;
import com.service.OrdersService;
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
	@Qualifier("groupdetailService")   
	private GroupdetailService groupdetailService;
	
	@Autowired
	@Qualifier("productsService")
	private ProductsService productsService;
	
	@Autowired
	@Qualifier("ordersService")
	private OrdersService ordersService;
	
	/*商品评价*/
	@Autowired
	@Qualifier("OldCollectionService")
	private OldCollectionService OldCollectionService;
	
 
	
	
	
	/*获得团购商城商品*/
	@RequestMapping("/Lookto.action")
	public String selectGroupbuying(HttpServletRequest request){
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
		/*参与团购人数*/
		int tatols=groupdetailService.selectBygid(pid);
		/*累计购买人数*/
		int shoppingcurt=ordersService.selectBypidandOrderstatus(pid);
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
		/*看一看商品推荐*/
		List<Products> commoditys=new ArrayList<Products>();
		commoditys=productsService.selectRecommend(product.getTid());
		request.setAttribute("discount",discount);
		request.setAttribute("discountone",discountone);
		request.setAttribute("photoUrl",photoUrl);
		request.setAttribute("product",product);
		request.setAttribute("groupbuying",groupbuying);
		request.setAttribute("total",tatols);
		request.setAttribute("shoppingcart",shoppingcurt);
		request.setAttribute("commoditys",commoditys);
		request.setAttribute("collections", OldCollectionBoolean.collection2(pid, request, OldCollectionService));
		return "front/Groupseeproducts";
	}
	
	/*添加团购详情*/
	@RequestMapping("/insertGroupbuyings.action") 
	@ResponseBody
	public String InsertGroupdetail(HttpServletRequest request,int gid){
		OldUsers user=(OldUsers) request.getSession().getAttribute("oldUsers");
		if(user!=null){
			Groupdetail groupbuy=new Groupdetail();
			groupbuy.setUid(user.getUid());
			groupbuy.setGid(gid);
			int count=groupdetailService.selectcountByolduser(groupbuy);
			if(count==0){
				groupdetailService.insertSelective(groupbuy);
				return "ture";
			}else if(count>=1){
				return "again";
			}	
		}
		return "false";	
	}
	
	@RequestMapping("/insertGroupproducts.action")
	@ResponseBody
	public String InsertGroupproducts(HttpServletRequest request,Groupbuying groupbuying){
		Groupbuying groupbuy=new Groupbuying();
		if(groupbuying!=null){
			groupbuy=groupbuyingService.selectByPid(groupbuying.getPid());
			if(groupbuy!=null){
				return "again";
			}
			groupbuyingService.insertSelective(groupbuying);
			return "ture";
		}else{
			return "false";
		}	
	}
		
}
