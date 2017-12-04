package com.controller.front.products;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.Classification;
import com.bean.OldUsers;
import com.bean.ProductDiscounts;
import com.bean.productCustom;
import com.service.ClassificationService;
import com.service.DiscountService;
import com.service.ProductsService;

@Controller
@RequestMapping("/front/discount")
public class ProductsDiscountController {
	@Autowired
	@Qualifier("productsService")
	private ProductsService productsService;
	
	@Autowired
	@Qualifier("discountService")
	private DiscountService discountService;
	
	@Autowired
	@Qualifier("classificationService")
	private ClassificationService classificationService;
	
	@RequestMapping("/selectAll")
	public String discount(HttpServletRequest request){
	   List<ProductDiscounts> list=new ArrayList<ProductDiscounts>();
	   List<ProductDiscounts> recomm=new ArrayList<ProductDiscounts>();
	   List<Integer> tid=new ArrayList<Integer>();
	   List<Classification> cation=new ArrayList<Classification>();
	    /* 获得打折商品*/
	    list=discountService.selectproductsanddiscount();
	    /* 获得推荐商品*/
	    recomm=discountService.selectthreeproducts();
	    /*获得类别*/
	    tid=discountService.selecttid();
	    for(Integer types:tid){
	    	Classification calss=null;
	    	calss=classificationService.selectByPrimaryKey(types);
	    	cation.add(calss);
	    }
		request.setAttribute("list", list);
		request.setAttribute("recomm", recomm);
		request.setAttribute("cation", cation);
		return "front/discount_index";	
	}

}
