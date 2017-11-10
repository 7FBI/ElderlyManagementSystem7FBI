package com.controller.front.products;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bean.OldUsers;
import com.bean.Profile;
import com.service.ProfileService;

@Controller
@RequestMapping("/front/profile")
public class ProfileController {
	@Autowired
	@Qualifier("profileService")
	private ProfileService profileService;

	@RequestMapping("/addAddress")
	@ResponseBody
	public String addAddress(HttpServletRequest request,Profile profile){
		if (request.getSession().getAttribute("oldUsers")==null) {
			return "请先登录!";
		}
		OldUsers oldUsers=(OldUsers) request.getSession().getAttribute("oldUsers");
		profile.setUid(oldUsers.getUid());
		profileService.insertSelective(profile);
		return "true";
	}
	
	
}
