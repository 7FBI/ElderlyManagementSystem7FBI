package com.controller.front.shoppingcart;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Discount;
import com.bean.Discouothers;
import com.bean.OldUsers;
import com.bean.ShoppingCart;
import com.bean.Stormproducts;
import com.service.DiscountService;
import com.service.ShoppingCartService;
import com.service.StormproductsService;

@Controller
@RequestMapping("/front/shoppingCart")
public class ShoppingCartController {

	@Autowired
	private ShoppingCartService shoppingCartService;

	@Autowired
	private StormproductsService stormproductsService;

	@Autowired
	private DiscountService discountService;

	// 将商品添加至购物车
	@RequestMapping(value = "/insertBycart.action")
	@ResponseBody
	public String InsertByshoppingCart(HttpServletRequest request, int num, int pid, String uid) {
		int count; // 购物车记录数量
		ShoppingCart shoppingrt = new ShoppingCart();
		shoppingrt.setPid(pid);
		shoppingrt.setUid(uid);
		// 获取与商品 用户匹配的的购物车对象数量
		count = shoppingCartService.insertByaproduvts(shoppingrt);
		// 获得了购物车中是否存在该商品
		if (count <= 1) {
			if (count == 1) {
				shoppingrt.setCartcount(num);
				shoppingCartService.updateAddproducts(shoppingrt);
				return "ture";
			} else if (count == 0) {
				shoppingrt.setCartcount(num);
				shoppingCartService.insertSelective(shoppingrt);
				return "ture";
			}
		} else {
			return "false";
		}
		return "false";
	}

	// 商城首页将商品添加至购物车
	@RequestMapping(value = "/insertUi.action")
	@ResponseBody
	public String InsertByShopping(HttpServletRequest request, HttpServletResponse response, int pid) {
		if (request.getSession().getAttribute("oldUsers") != null) {
			int count; // 购物车记录数量
			OldUsers user = (OldUsers) request.getSession().getAttribute("oldUsers");
			ShoppingCart shoppingrt = new ShoppingCart();
			shoppingrt.setPid(pid);
			shoppingrt.setUid(user.getUid());
			count = shoppingCartService.insertByaproduvts(shoppingrt);
			// 获得了购物车中是否存在该商品
			if (count <= 1) {
				if (count == 1) {
					shoppingrt.setCartcount(1);
					shoppingCartService.updateAddproducts(shoppingrt);
				}
				if (count == 0) {
					shoppingrt.setCartcount(1);

					shoppingCartService.insertSelective(shoppingrt);
				}
			}
			return "ture";
		} else {
			return "flase";
		}
	}

	/* 进入购物车页面方法 */
	@RequestMapping(value = "/selectproducts.action")
	public String SelectByproducts(HttpServletRequest request) {
		OldUsers user = (OldUsers) request.getSession().getAttribute("oldUsers");
		Integer id = user.getId();
		/* 普通商品 */
		List<Stormproducts> list = new ArrayList<Stormproducts>();
		/* 打折商品 */
		List<Stormproducts> tist = new ArrayList<Stormproducts>();
		Discount sfrt = new Discount();
		list = stormproductsService.selectStormproducts(id);
		if (list.size() > 0) {
			for (int i = 0; i < list.size(); i++) {
				sfrt = discountService.selectByPid(list.get(i).getId());
				if (sfrt != null) {
					Discouothers others = new Discouothers();
					others.setDiscountprice(sfrt.getDiscountprice());
					others.setDiscountstoptime(sfrt.getDiscountstoptime());
					list.get(i).setDiscouothers(others);
					tist.add(list.get(i));
					list.remove(i);
				}
			}
			request.setAttribute("products", list);
			request.setAttribute("produties", tist);
			return "front/Shopping_cart";
		} else {
			return "front/Shoppingcart_empty";
		}
	}

	/* 商城首页点击购物车方法 */
	@RequestMapping(value = "/intoshoppingCart.action")
	@ResponseBody
	public String intoShoppingcart(HttpServletRequest request) {
		if (request.getSession().getAttribute("oldUsers") != null) {
			return "ture";
		}
		return "false";

	}

	/* 删除购物车商品 */
	@RequestMapping(value = "/delectUi.action")
	@ResponseBody
	public String DelectproductsBycarts(HttpServletRequest request, int pid) {
		OldUsers user = (OldUsers) request.getSession().getAttribute("oldUsers");
		ShoppingCart cart = new ShoppingCart();
		if (user != null && pid != 0) {
			//cart.setPid(pid);
			//cart.setUid(user.getUid());
			Map<String, Object> map=new HashMap<String, Object>();
			map.put("uid", user.getUid());
			map.put("pid", pid);
			/*cart = shoppingCartService.selectByaproduvts(cart);
			shoppingCartService.deleteByPrimaryKey(cart.getId());*/
			shoppingCartService.delectProductsByuidAndPid(map);
			return "true";
		}
		return "false";
	}
}
