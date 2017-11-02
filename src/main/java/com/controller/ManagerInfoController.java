package com.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.ManagerInfo;
import com.others.md5.Encryption;
import com.service.ManagerInfoService;

@Controller
@RequestMapping("/backstage/user")
public class ManagerInfoController {

	@Autowired
	private ManagerInfoService managerInfoService;

	@RequestMapping(value = "/login.action")
	public String ManagerInfo(ManagerInfo managerInfo, HttpServletRequest request) throws UnsupportedEncodingException {
		String pwd = Encryption.encrypation(managerInfo.getPassword());
		ManagerInfo mangerIndo = null;
		mangerIndo = managerInfoService.findManagerBynametype(managerInfo);
		if (mangerIndo == null) {
			return "redirect:/gotoBackstage/index";
		} else{
			if (pwd.equals(mangerIndo.getPassword())){
				request.getSession().setAttribute("ManagerIndo", mangerIndo);
			}
		}
		return "redirect:/gotoBackstage/index";
	}
}
