package com.controller.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/exit")
public class ExitLoginController {

	@RequestMapping("/backstage/clearUser")
	public String clearUser(HttpServletRequest request){
		HttpSession session=request.getSession();
		if (session.getAttribute("manager")!=null) {
			session.removeAttribute("manager");
		}
		if (session.getAttribute("oldUsers")!=null) {
			session.removeAttribute("oldUsers");
		}
		if (session.getAttribute("ceoinfo")!=null) {
			session.removeAttribute("ceoinfo");
		}
		if (session.getAttribute("ManagerIndo")!=null) {
			session.removeAttribute("ManagerIndo");
		}
		return "redirect:/gotoBackstage/index";
	}
}
