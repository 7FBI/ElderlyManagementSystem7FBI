package com.controller.backstage.ceoinfo;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.Ceoinfo;
import com.others.md5.Encryption;
import com.service.CeoinfoService;

@Controller
@RequestMapping("/backstage/ceoinfo")
public class CeoinfoController {
	
	@Resource
	private CeoinfoService ceoinfoService;
	@RequestMapping("/login")
	public String login(Ceoinfo ceoinfo,HttpServletRequest request){
		Ceoinfo ceoinfo2 = new Ceoinfo();
		ceoinfo2=ceoinfoService.checkLogin(ceoinfo.getName());
		if (ceoinfo2==null) {
			return "redirect:/gotoBackstage/index";
		}else {
			if(Encryption.encrypation(ceoinfo.getPassword()).equals(ceoinfo2.getPassword())){
				request.getSession().setAttribute("ceoinfo", ceoinfo2);
			}
			return "redirect:/gotoBackstage/index";
		}
	}
	
}
