package com.controller.backstage.manager;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.Manager;
import com.others.md5.Encryption;
import com.service.ManagerService;


@Controller
@RequestMapping("/backstage/manager")
public class ManagerController {

	@Resource
	private ManagerService managerService;
	
	@RequestMapping("/login")
	public String login(Manager manager,HttpServletRequest request){
		Manager manager2 = new Manager();
		manager2 = managerService.checkLogin(manager.getMnumber());
		if (manager2==null) {
			return "redirect:/gotoBackstage/index";
		}else {
			if(Encryption.encrypation(manager.getMpassword()).equals(manager2.getMpassword())){
				request.getSession().setAttribute("manager", manager2);
			}
			return "redirect:/gotoBackstage/index";
		}
	}
	
}
