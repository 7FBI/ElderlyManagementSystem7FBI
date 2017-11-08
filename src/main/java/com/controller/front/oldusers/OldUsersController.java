package com.controller.front.oldusers;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bean.OldUsers;
import com.bean.Oldlogin;
import com.others.md5.Encryption;
import com.service.OldUsersService;
import com.service.OldloginService;

@Controller
@RequestMapping("/front/oldUsers")
public class OldUsersController {
	@Autowired
	@Qualifier("oldUsersService")
	private OldUsersService oldUsersService;
	
	@Autowired
	@Qualifier("oldloginService")
	private OldloginService oldloginService;
	

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
		return "redirect:/front/oldUsers/selectByUid.action";

	}
	
	@RequestMapping("/login")
	@ResponseBody
	public String login(HttpServletRequest request) {
		String uid = null;
		String password = null;
		uid = request.getParameter("username");
		password = request.getParameter("password");
		password=Encryption.encrypation(password);
		OldUsers user = oldUsersService.selectByUid(uid);
		if (user==null) {
			return "帐号不存在";
		}
		if (password.equals(user.getPassword())) {
			request.getSession().setAttribute("oldUsers", user);
			Oldlogin old =new Oldlogin();
			old.setLoadtime(new Date());
			old.setUid(uid);
			oldloginService.insertSelective(old);
			return "true";
		} else {
			return "密码有误";
		}
	}
	
	@RequestMapping("/register")
	@ResponseBody
	public String register(HttpServletRequest request,OldUsers oldUsers){
		Map<String, Object> map=new HashMap<String, Object>();
		System.out.println(">>>>>>>>>>>>姓名:"+oldUsers.getUsername());
		map.put("tell", oldUsers.getTell());
		if (oldUsersService.selectByTellOrUidOrIdcard(map).size()>=1) {
			return "该电话已经被绑定了!!";
		}
		map.put("uid", oldUsers.getUid());
		if (oldUsersService.selectByTellOrUidOrIdcard(map).size()>=1) {
			return "该帐号已经被使用!!";
		}
		map.put("idcard", oldUsers.getIdcard());
		if (oldUsersService.selectByTellOrUidOrIdcard(map).size()>=1) {
			return "该身份证已经被绑定了!!";
		}
		oldUsers.setType(1);
		oldUsersService.insertSelective(oldUsers);
		request.getSession().setAttribute("oldUsers", oldUsers);
		return "true";
	}

}
