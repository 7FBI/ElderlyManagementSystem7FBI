package com.controller.backstage.ceoinfo;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.Ceoinfo;
import com.service.CeoinfoService;

@Controller
@RequestMapping("/ceoinfo")
public class CeoinfoController {
	
	@Resource
	private CeoinfoService ceoinfoService;
	@RequestMapping("/login")
	public String login(Ceoinfo ceoinfo,HttpServletRequest request){
		Ceoinfo ceoinfo2 = new Ceoinfo();
		ceoinfo2=ceoinfoService.checkLogin(ceoinfo.getName());
		
		if(ceoinfo2!=null&&ceoinfo2.getPassword().equals(ceoinfo.getPassword())){
			request.getSession().setAttribute("ceoinfo2", ceoinfo2);
			return "front/index";
		}
		return "";
		
	}
	
}
