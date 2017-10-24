package com.controller.front.olduser;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.OldUsers;
import com.bean.Oldlogin;
import com.others.md5.Encryption;
import com.service.OldUsersService;
import com.service.OldloginService;

@Controller
@RequestMapping("/front/oldMan")
public class OldUsersLoginController {
	@Autowired
	@Qualifier("oldUsersService")
	private OldUsersService oldUsersService;
	@Autowired
	@Qualifier("oldloginService")
	private OldloginService oldloginService;

	@RequestMapping("/login")
	public String login(HttpServletRequest request) {
		String uid = null;
		String password = null;
		uid = request.getParameter("username");
		password = request.getParameter("password");
		password=Encryption.encrypation(password);
		//request.getSession().setAttribute("oldMan",);
	
		OldUsers user = oldUsersService.selectByUid(uid);
		if (password.equals(user.getPassword())) {
			request.getSession().setAttribute("oldMan", user);
			Oldlogin old =new Oldlogin();
			old.setLoadtime(new Date());
			old.setUid(uid);
			oldloginService.insertSelective(old);
			
		} else {

			return "front/login";
		}

		return "front/index";
	}
}
