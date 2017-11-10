package com.controller.util.shop;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.bean.Discount;
import com.bean.Groupbuying;
import com.bean.Orderdetails;
import com.bean.Products;
import com.service.DiscountService;
import com.service.GroupbuyingService;
import com.service.OrderdetailsService;
import com.service.OrdersService;
import com.service.ProductsService;

public class ShopPrices {
	
	//这个订单的商品存在团购价与打折价
	public static Double getAllShowPrices(String oid, ProductsService productsService, GroupbuyingService groupbuyingService,
			DiscountService discountService, OrdersService ordersService, OrderdetailsService orderdetailsService) {
		List<Orderdetails> list = orderdetailsService.selectByOrdersId(oid);
		double d = 0.0;
		Groupbuying g = new Groupbuying();
		for (Orderdetails orderdetails : list) {
			g.setPid(orderdetails.getPid());
			Groupbuying groupbuying = groupbuyingService.selectByGroupBuyPid(g);
			Discount discount = discountService.selectByProductPid(orderdetails.getPid());
			double d2 = orderdetails.getOrdercount() * orderdetails.getProducts().getPrice();
			if (groupbuying != null) {
				d2 = d2 * groupbuying.getGroupprice();
			}
			if (discount != null) {
				d2 = d2 * discount.getDiscountprice();
			}
			d += d2;
		}
		return d;
	}
	//这些商品存在团购价与打折价
	public static List<Products> getNewPorducts(String[] pid, ProductsService productsService,
			GroupbuyingService groupbuyingService, DiscountService discountService, OrdersService ordersService,
			OrderdetailsService orderdetailsService) {
		List<Integer> list=new ArrayList<Integer>();
		Map<String, List<Integer>> map=new HashMap<String, List<Integer>>();
		for (String p : pid) {
			list.add(Integer.valueOf(p));
		}
		map.put("list", list);
		List<Products> products=productsService.selectProductList(map);
		Groupbuying g = new Groupbuying();
		double d=0.0;
		for (int i=0;i<products.size();i++) {
			g.setPid(products.get(i).getId());
			Groupbuying groupbuying = groupbuyingService.selectByGroupBuyPid(g);
			Discount discount = discountService.selectByProductPid(products.get(i).getId());
			double d2 = products.get(i).getPrice();
			if (groupbuying != null) {
				d2 = d2 * groupbuying.getGroupprice();
			}
			if (discount != null) {
				d2 = d2 * discount.getDiscountprice();
			}
			d += d2;
			products.get(i).setPrice(d);
		}
		return products;
	}

}
