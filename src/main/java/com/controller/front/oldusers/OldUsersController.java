package com.controller.front.oldusers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import com.bean.OldUsers;
import com.service.OldUsersService;

@Controller
@RequestMapping("/front/oldUsers")
public class OldUsersController {
	@Autowired
	@Qualifier("oldUsersService")
	private OldUsersService oldUsersService;
	

	@RequestMapping("/selectByUid")
	public ModelAndView selectByUid(String uid) {
		OldUsers oldUsers = oldUsersService.selectByUid(uid);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("oldUsers", oldUsers);
		modelAndView.setViewName("front/showOldUsersPersonalInfomation");
		return modelAndView;
	}

	@RequestMapping("/oldUserModify")
	public ModelAndView oldUserModify() {
		OldUsers oldUsers = oldUsersService.selectByUid("1827526748");
		System.out.println(oldUsers);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("oldUsers", oldUsers);
		modelAndView.setViewName("front/oldUserModify");
		return modelAndView;
	}
	
	@RequestMapping("/updateByUidSelective")
	public String updateByUidSelective(OldUsers oldUsers) {
		System.out.println(oldUsers.getUsername());
		oldUsersService.updateByUidSelective(oldUsers);
		return "redirect:selectByUid.action";

	}

}
