package com.controller.backstage.statistics.products;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bean.Products;
import com.service.ProductsService;

@Controller
@RequestMapping("/backstage/statistics/products")
public class ProductsStatisticeController {
	@Autowired
	@Qualifier("productsService")
	private ProductsService productsService;
	
	@RequestMapping("/maxOne")
	@ResponseBody
	public Map<String, Object> typesProducts(HttpServletRequest request){
		Map<String, Object> map=new HashMap<String, Object>();
		Map<String, Object> returnMap=new HashMap<String, Object>();
		Integer value=10;
		if (request.getParameter("max")!=null|"".equals(request.getParameter("max"))) {
			value=Integer.valueOf(request.getParameter("max"));
		}
		map.put("max", value);
		List<Products> collections=productsService.productCollectionOne(map);
		List<Products> sales=productsService.productSalesOne(map);
		returnMap.put("collections", collections);
		returnMap.put("sales", sales);
		return returnMap;
	}
	
	@RequestMapping("/seasonInfo")
	@ResponseBody
	public Map<String, Object> seasonInfo(HttpServletRequest request){
		Map<String, Object> map=new HashMap<String, Object>();
		Map<String, Object> returnMap=new HashMap<String, Object>();
		Integer value=10;
		if (request.getParameter("max")!=null|"".equals(request.getParameter("max"))) {
			value=Integer.valueOf(request.getParameter("max"));
		}
		map.put("max", value);
		//团购
		List<Products> seasonInfo1=productsService.productSeasonGroupbuy(map);
		//无折扣
		List<Products> seasonInfo2=productsService.productSeasonNot(map);
		//打折
		List<Products> seasonInfo3=productsService.productSeasonDiscount(map);
		returnMap.put("season1", seasonInfo1);
		returnMap.put("season2", seasonInfo2);
		returnMap.put("season3", seasonInfo3);
		return returnMap;
	}
	
	@RequestMapping("/pViewInfo")
	@ResponseBody
	public Map<String, Object> pViewInfo(HttpServletRequest request){
		Map<String, Object> returnMap=new HashMap<String, Object>();
		Integer id=0;
		if (request.getParameter("id")==null|"".equals(request.getParameter("id"))) {
			return null;
		}
		id=Integer.valueOf(request.getParameter("id"));
		List<Products> list=productsService.productByidDateFormat(id);
		returnMap.put("pViewInfo", list);
		return returnMap;
	}
	
	@RequestMapping("/typeDateView")
	@ResponseBody
	public Map<String, Object> typeDateView(HttpServletRequest request){
		Map<String, Object> returnMap=new HashMap<String, Object>();
		List<Products> weekList=productsService.productTypeGroupByWeek();
		List<Products> quarterLiist=productsService.productTypeGroupByQuarter();
		returnMap.put("week", weekList);
		returnMap.put("quarter", quarterLiist);
		return returnMap;
	}
	

}
