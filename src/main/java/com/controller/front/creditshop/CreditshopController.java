package com.controller.front.creditshop;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Credit;
import com.bean.Products;
import com.service.CreditService;
import com.service.CreditshopService;

@Controller
@RequestMapping("/front/creditshop")
public class CreditshopController {
	
	@Autowired
	@Qualifier("creditShopService")
	private CreditshopService creditShopService;

	@Autowired
	@Qualifier("creditService")
	private CreditService creditService;
	
	
	@RequestMapping("/SelectAllCreditShop")
	public ModelAndView SelectAllCreditShop(){
		List<Products> products = creditShopService.SelectAllCreditShop();
		/*Credit credit = creditService.selectCreditByUid("1827526748");*/
		ModelAndView modelAndView = new ModelAndView();
		/*modelAndView.addObject("credit", credit);*/
		
		modelAndView.addObject("products", products);
		modelAndView.setViewName("front/integral");
		return modelAndView;
		
	}
	
	

}
