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
@RequestMapping("/user")
public class ManagerInfoController {
	
	@Autowired
	private ManagerInfoService managerInfoService;
	 

@RequestMapping(value="/login.action")
	 public String ManagerInfo(ManagerInfo managerInfo,HttpServletRequest request) throws UnsupportedEncodingException{
	 String pwd=Encryption.encrypation(managerInfo.getPassword());  
	 
	 ManagerInfo mangerIndo=null;
	 mangerIndo=managerInfoService.findManagerBynametype(managerInfo.getName());
	
	 if(mangerIndo==null){
		 return "backstage/jsp/ceo/login_name_error";
	 } 
	 else if(pwd.equals(mangerIndo.getPassword())){
		 if(mangerIndo.getType()==managerInfo.getType()){
		 request.getSession().setAttribute("ManagerIndo",mangerIndo);
		 return "backstage/jsp/Admin_login";
		 }
	 } 
	 
	  return "backstage/jsp/ceo/login_password_error";
		  
	 }
}
