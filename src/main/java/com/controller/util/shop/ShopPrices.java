package com.controller.util.shop;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.bean.Credit;
import com.bean.Discount;
import com.bean.Groupbuying;
import com.bean.OldUsers;
import com.bean.Orderdetails;
import com.bean.Products;
import com.service.CreditService;
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
	
	
	
	public static List<Orderdetails> getAllOrderdetailsPrices(String oid, ProductsService productsService, GroupbuyingService groupbuyingService,
			DiscountService discountService, OrdersService ordersService, OrderdetailsService orderdetailsService) {
		List<Orderdetails> list = orderdetailsService.selectByOrdersId(oid);
		double d = 0.0;
		Groupbuying g = new Groupbuying();
		int i=0;
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
			if (d!=orderdetails.getProducts().getPrice()) {
				list.get(i).getProducts().setPrice(d);
			}
		}
		return list;
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
	
	public static Double getNewMoney(Integer pid,ProductsService productsService,GroupbuyingService groupbuyingService, DiscountService discountService){
		Double moneys=0.0;
		Groupbuying groupbuying=new Groupbuying();
		groupbuying.setGroupstoptime(new Date());
		groupbuying.setPid(pid);
		Groupbuying g=groupbuyingService.selectByGroupBuyPid(groupbuying);
		Discount d=discountService.selectByPid(pid);
		Products products=productsService.selectByPrimaryKey(pid);
		if (g!=null) {
			moneys+=products.getPrice()*g.getGroupprice();
		}
		if (d!=null) {
			moneys+=products.getPrice()*d.getDiscountprice();
		}
		return moneys;
	}
	
	public static Integer addCredit(OldUsers oldUsers,Double money,CreditService creditService){
		Credit credit=creditService.selectByPrimaryKey(oldUsers.getUid());
		int intMoney=new Double(money).intValue();
		if (credit!=null) {
			credit.setMajor_Credit(credit.getMajor_Credit()+intMoney/10);
			credit.setRest_Credit(credit.getRest_Credit()+intMoney/10);
			creditService.updateByPrimaryKeySelective(credit);
		}else {
			Credit credit2=new Credit();
			credit2.setUid(oldUsers.getUid());
			credit2.setMajor_Credit(intMoney/10);
			credit2.setRest_Credit(intMoney/10);
			creditService.insertSelective(credit2);
		}
		return intMoney/10;
	}

}
