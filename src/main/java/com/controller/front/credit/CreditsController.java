package com.controller.front.credit;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Credit;
import com.bean.OldUsers;
import com.service.CreditService;

@Controller
@RequestMapping("/front/credit")
public class CreditsController {
	
	@Autowired
	@Qualifier("creditService")
	private CreditService creditService;
	
	@RequestMapping("/selectCreditByUid")
	public ModelAndView selectCreditByUid(HttpServletRequest request){
		ModelAndView modelAndView = new ModelAndView();
		if (request.getSession().getAttribute("oldUsers")==null) {
			modelAndView.setViewName("front/login");
			return modelAndView;
		}
		OldUsers oldUser = (OldUsers) request.getSession().getAttribute("oldUsers");
		Credit credit = creditService.selectCreditByUid(oldUser.getUid());
		modelAndView.addObject("credit", credit);
		//modelAndView.setViewName("front/integral");
		modelAndView.setViewName("front/SelfCenter_CreditDetail");
		return modelAndView;
	}
	
	@RequestMapping("/updateCreditByBuy")
	public String updateCreditByBuy(Integer credit,String uid){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("credit", credit);
		map.put("uid", "1827526748");
		creditService.updateCreditByBuy(map);
		return "redirect:/front/credit/selectCredit";
	}
	
	@RequestMapping("/updateCreditByExchange")
	public String updateCreditByExchange(Integer credit,HttpServletRequest request){
		OldUsers oldUser = (OldUsers) request.getSession().getAttribute("oldUsers");
		Credit credit1 = creditService.selectCreditByUid(oldUser.getUid());
		if(credit<=credit1.getRest_Credit()){
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("credit", credit);
			map.put("uid", oldUser.getUid());
			creditService.updateCreditByExchange(map);
			return "redirect:/front/credit/selectCredit";
		}else{
			request.setAttribute("msd", "你的积分不够");
			return "redirect:/front/creditshop/SelectAllCreditShop";
			
		}	
		
		
	}

}
