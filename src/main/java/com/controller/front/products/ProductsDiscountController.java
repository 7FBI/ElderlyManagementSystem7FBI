package com.controller.front.products;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.OldUsers;
import com.bean.productCustom;
import com.service.ProductsService;

@Controller
@RequestMapping("/front/discount")
public class ProductsDiscountController {
	@Autowired
	@Qualifier("productsService")
	private ProductsService productsService;
	
	@RequestMapping("/selectAll")
	public String discount(HttpServletRequest request){
		OldUsers oldUsers=(OldUsers) request.getSession().getAttribute("oldUsers");
		if (oldUsers==null) {
			return "front/login";
		}
		List<productCustom> list=productsService.productDiscount();
	/*	for(int i = 0; i<list.size();i++){
			Date date=list.get(i).getDiscountstoptime();
			SimpleDateFormat sd = new SimpleDateFormat();
			
		}*/
		request.setAttribute("list", list);
		return "front/discount_index";
		
	}

}
