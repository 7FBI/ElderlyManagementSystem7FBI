package com.controller.backstage.credit;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.Credit;
import com.service.CreditService;
  
@Controller
@RequestMapping("/backstage/credit")
public class Creditcontroller {
	@Autowired
	private CreditService creditService;
	 
	@RequestMapping("/seeCreditByid.action")
	public String LookCreditByuid(HttpServletRequest request){    // 查看所有用户的积分
		List<Credit> credits=null;
		credits=creditService.selectCredit();
		request.setAttribute("credits", credits);
		return "backstage/jsp/Credits/SeeCredit";
		
	}

}
