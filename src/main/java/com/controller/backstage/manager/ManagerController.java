package com.controller.backstage.manager;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.Manager;
import com.service.ManagerService;

@Controller
@RequestMapping("/manager")
public class ManagerController {

	@Resource
	private ManagerService managerService;
	
	@RequestMapping("/login.action")
	public String login(Manager manager,HttpServletRequest request){
		Manager manager2 = new Manager();
		manager2 = managerService.checkLogin(manager.getMnumber());
		
		if(manager.getMpassword().equals(manager2.getMpassword())){
			request.getSession().setAttribute("manager2", manager2);
			return "front/index";
			
		}
		return "";
	}
	
}
