package com.controller.util.shop;

import java.util.List;

import com.bean.Discount;
import com.bean.Groupbuying;
import com.bean.Orderdetails;
import com.service.DiscountService;
import com.service.GroupbuyingService;
import com.service.OrderdetailsService;
import com.service.OrdersService;
import com.service.ProductsService;

public class ShopPrices {
	
	public Double getAllShowPrices(String oid, ProductsService productsService,
			GroupbuyingService groupbuyingService,DiscountService discountService,OrdersService ordersService,OrderdetailsService orderdetailsService){
		List<Orderdetails> list=orderdetailsService.selectByOrdersId(oid);
		double d=0.0;
		Groupbuying g=new Groupbuying();
		for (Orderdetails orderdetails : list) {
			System.out.println("------------------------------------------------");
			g.setPid(orderdetails.getPid());
			Groupbuying groupbuying=groupbuyingService.selectByGroupBuyPid(g);
			Discount discount=discountService.selectByProductPid(orderdetails.getPid());
			double d2=orderdetails.getOrdercount()*orderdetails.getProducts().getPrice();
			if (groupbuying!=null) {
				System.out.println("--------->>>团购打"+groupbuying.getGroupprice()*10+" 折");
				d2=d2*groupbuying.getGroupprice();
			}
			if (discount!=null) {
				System.out.println("--------->>>折扣打"+discount.getDiscountprice()*10+" 折");
				d2=d2*discount.getDiscountprice();
			}
			d+=d2;
		}
		System.out.println("------------------------------------------------");
		return d;
	}
	
	

}
