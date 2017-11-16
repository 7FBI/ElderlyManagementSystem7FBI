package com.controller.front.shoppingcart;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bean.shoppingCart;
import com.bean.Stormproducts;
import com.service.shoppingCartService;
import com.service.StormproductsService;

@Controller
@RequestMapping("/front/shoppingCart")
public class shoppingCartController {
	
	@Autowired
	private shoppingCartService shoppingCartService;
	
	@Autowired
	private StormproductsService stormproductsService;
	
	
	//将商品添加至购物车
	@RequestMapping(value="/insertBycart.action")
	@ResponseBody
	public String InsertByshoppingCart(HttpServletRequest request,int num,int pid,String uid){
		int count; //购物车记录数量
		shoppingCart shoppingrt=new shoppingCart();
		shoppingrt.setPid(pid);
		shoppingrt.setUid(uid);
		//获取与商品 用户匹配的的购物车对象数量
		count=shoppingCartService.insertByaproduvts(shoppingrt);
		//获得了购物车中是否存在该商品
		if(count<=1){
			if(count==1){
				shoppingrt.setCartcount(num);
				shoppingCartService.updateAddproducts(shoppingrt);
				return "ture";
			}else if(count==0){
				shoppingrt.setCartcount(num);
				shoppingCartService.insertSelective(shoppingrt);
				return "ture";
			}
		}else{
			return "false";
		}
		return "false";
	} 
	/*进入购物车页面方法*/
	@RequestMapping(value="/selectproducts.action")
	@ResponseBody
	public String SelectByproducts(HttpServletRequest request,int uid){
		List<Stormproducts> list=new ArrayList<Stormproducts>();
		list=stormproductsService.selectStormproducts(uid);
		request.setAttribute("products", list);
		return "front/Shopping_cart";	
	}
	
	
	/*商品生成订单 结算功能*/
	public String OrdersBy(HttpServletRequest request){
		
		
		return null;
		
	}
}
