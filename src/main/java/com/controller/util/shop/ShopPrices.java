package com.controller.util.shop;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.bean.Products;
import com.service.ProductsService;
public class ShopPrices {
	public Double getAllShowPrices(List<Integer> pids,Integer[] num,ProductsService productsService){
		Map<String, List<Integer>> map=new HashMap<String, List<Integer>>();
		map.put("list", pids);
		List<Products> list=productsService.selectProductList(map);
		Double d=0.0;
		int i=0;
		for (Products products : list) {
			System.out.println("-------------------------------------------------");
			System.out.println("商品id:"+products.getId()+"--商品名称:"+products.getPname());
			System.out.println("--单价:"+products.getPrice()+"--数量:"+num[i]);
			d+=products.getPrice()*num[i];
			i++;
		}
		System.out.println("-------------------------------------------------");
		return d;
	}
	
}
