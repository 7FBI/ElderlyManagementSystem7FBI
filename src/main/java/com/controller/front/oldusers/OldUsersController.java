package com.controller.front.oldusers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bean.Matchdisease;
import com.bean.OldDiseasedetails;
import com.bean.OldDiseaselibrary;
import com.bean.OldSickness;
import com.bean.OldUsers;
import com.bean.Oldlogin;
import com.bean.Profile;
import com.others.dx.DingdongCloudApis;
import com.others.md5.Encryption;
import com.service.OldDiseasedetailsService;
import com.service.OldSicknessService;
import com.service.OldUsersService;
import com.service.OldloginService;
import com.service.ProfileService;

@Controller
@RequestMapping("/front/oldUsers")
public class OldUsersController {
	@Autowired
	@Qualifier("oldUsersService")
	private OldUsersService oldUsersService;

	@Autowired
	@Qualifier("oldloginService")
	private OldloginService oldloginService;

	@Autowired
	@Qualifier("profileService")
	private ProfileService profileService;

	@Autowired
	@Qualifier("oldSicknessService")
	private OldSicknessService oldSicknessService;

	@Autowired
	@Qualifier("oldDiseasedetailsService")
	private OldDiseasedetailsService oldDiseasedetailsService;

	@RequestMapping("/selectByUid")
	public ModelAndView selectByUid(HttpServletRequest request) {
		OldUsers oldUser = (OldUsers) request.getSession().getAttribute("oldUsers");
		OldUsers oldUsers = oldUsersService.selectByUid(oldUser.getUid());
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("oldUsers", oldUsers);
		modelAndView.addObject("uid", oldUser.getUid());
		modelAndView.setViewName("front/Self");
		return modelAndView;
	}

	@RequestMapping("/updateByUidSelective")
	public String updateByUidSelective(OldUsers oldUsers) {
		oldUsersService.updateByUidSelective(oldUsers);
		return "redirect:/front/oldUsers/selectByUid.action";

	}

	@RequestMapping("/updatePasswordJsp")
	public ModelAndView updatePasswordJsp(String uid) {
		OldUsers oldUsers = oldUsersService.selectByUid(uid);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("oldUsers", oldUsers);
		modelAndView.setViewName("front/SelfCenter_updatepassword");
		return modelAndView;
	}

	@RequestMapping("/updatePasswordByUid")
	public String updatePasswordByUid(OldUsers oldUsers, String sid, RedirectAttributes mAttributes) {
		oldUsers.setUid(sid);
		oldUsersService.updatePasswordByUid(oldUsers);
		mAttributes.addFlashAttribute("uid", oldUsers.getUid());
		return "redirect:/front/oldUsers/selectProfileByUid";
	}

	@RequestMapping("/selectProfileByUid")
	public ModelAndView selectProfileByUid(HttpServletRequest request) {
		OldUsers oldUser = (OldUsers) request.getSession().getAttribute("oldUsers");
		List<Profile> profiles = profileService.selectProfileByUid(oldUser.getUid());
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("profiles", profiles);
		modelAndView.addObject("uid", oldUser.getUid());
		modelAndView.setViewName("front/SelfCenter_updateaddress");
		return modelAndView;

	}

	@RequestMapping("/insertProfileByUid")

	public String insertProfileByUid(Profile profile,HttpServletRequest request) {
		if (request.getSession().getAttribute("oldUsers") == null) {
			return "/front/login";
		}
		profileService.insertProfileByUid(profile);
		return "redirect:/front/oldUsers/selectProfileByUid.action";

	}
	
	//添加新地址
	@RequestMapping("/insertProfileOrders")
	@ResponseBody
	public Profile insertProfileOrders(Profile profile,HttpServletRequest request) {
		if (request.getSession().getAttribute("oldUsers") == null) {
			return null;
		}
		OldUsers oldUsers=(OldUsers) request.getSession().getAttribute("oldUsers");
		String province=request.getParameter("province");
		String city=request.getParameter("city");
		String town=request.getParameter("town");
		StringBuffer sBuffer=new StringBuffer();
		sBuffer.append(province);
		if (!"县".equals(city) && !"市辖区".equals(city)) {
			sBuffer.append(city);
		}
		sBuffer.append(town);
		if (profile.getSignaddress()!=null && !"".equals(profile.getSignaddress())) {
			sBuffer.append(profile.getSignaddress());
		}
		profile.setSignaddress(sBuffer.toString());
		profile.setUid(oldUsers.getUid());
		profileService.insertSelective(profile);
		return profile;
	}

	@RequestMapping("/selectByPrimaryKey")
	public ModelAndView selectByPrimaryKey(@ModelAttribute Integer id) {
		Profile profile = profileService.selectByPrimaryKey(id);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("profile", profile);
		modelAndView.setViewName("front/SelfCenter_updateaddress");
		return modelAndView;
	}

	@RequestMapping("/updateAddressjsp")
	public ModelAndView updateAddressJsp(Integer id, String uid) {
		Profile profile = profileService.selectByPrimaryKey(id);
		List<Profile> profiles = profileService.selectProfileByUid(uid);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("profile", profile);
		modelAndView.addObject("profiles", profiles);
		modelAndView.setViewName("front/SelfCenter_updateaddress");
		return modelAndView;
	}

	@RequestMapping("/updateAddressByPrimarykey")
	public String updateAddressByPrimarykey(Profile profile) {

		profileService.updateAddressByPrimarykey(profile);
		return "redirect:/front/oldUsers/selectProfileByUid.action";
	}

	@RequestMapping("/deleteAddressByPrimarykey")
	public String deleteAddressByPrimarykey(Profile profile, Integer id) {
		profileService.deleteAddressByPrimarykey(id);
		return "redirect:/front/oldUsers/selectProfileByUid.action";
	}

	@RequestMapping("/selectDiseaseAndDiseaseDetailsByUid")
	public ModelAndView selectDiseaseAndDiseaseDetailsByUid(HttpServletRequest request, Integer id) {
		OldUsers oldUsers = (OldUsers) request.getSession().getAttribute("oldUsers");
		List<OldDiseasedetails> oldDiseasedetails = oldDiseasedetailsService
				.selectOldDiseasedetailsByUid(oldUsers.getUid());
		List<OldSickness> oldOldSickness = oldSicknessService.selectDiseaseAndDiseaseDetailsByDetailid(1);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("oldDiseasedetails", oldDiseasedetails);
		modelAndView.addObject("oldOldSickness", oldOldSickness);

		modelAndView.setViewName("front/SelfCenter_Heath");
		return modelAndView;
	}

	@RequestMapping("/login")
	@ResponseBody
	public String login(HttpServletRequest request) {
		String uid = null;
		String password = null;
		System.out.println("------------>code:" + request.getSession().getAttribute("code").toString());
		System.out.println("------------>code:" + request.getParameter("code").toString());
		if (!request.getSession().getAttribute("code").toString()
				.equalsIgnoreCase(request.getParameter("code").toString())) {
			return "验证码输入错误!";
		}
		uid = request.getParameter("username");
		password = request.getParameter("password");
		password = Encryption.encrypation(password);
		OldUsers user = oldUsersService.selectByUid(uid);
		if (user == null) {
			return "帐号不存在";
		}
		if (password.equals(user.getPassword())) {
			request.getSession().setAttribute("oldUsers", user);
			Oldlogin old = new Oldlogin();
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
	public String register(HttpServletRequest request, OldUsers oldUsers) {
		Map<String, Object> map = new HashMap<String, Object>();
		System.out.println(">>>>>>>>>>>>姓名:" + oldUsers.getUsername());
		map.put("tell", oldUsers.getTell());
		if (oldUsersService.selectByTellOrUidOrIdcard(map).size() >= 1) {
			return "该电话已经被绑定了!!";
		}
		map.put("uid", oldUsers.getUid());
		if (oldUsersService.selectByTellOrUidOrIdcard(map).size() >= 1) {
			return "该帐号已经被使用!!";
		}
		map.put("idcard", oldUsers.getIdcard());
		if (oldUsersService.selectByTellOrUidOrIdcard(map).size() >= 1) {
			return "该身份证已经被绑定了!!";
		}
		oldUsers.setType(1);
		oldUsers.setPassword(Encryption.encrypation(oldUsers.getPassword()));
		oldUsersService.insertSelective(oldUsers);
		request.getSession().setAttribute("oldUsers", oldUsers);
		return "true";
	}

	@RequestMapping("/getNowOldUsers")
	@ResponseBody
	public OldUsers getNowOldUsers(HttpServletRequest request) {
		if (request.getSession().getAttribute("oldUsers") == null) {
			return null;
		}
		OldUsers oldUsers = (OldUsers) request.getSession().getAttribute("oldUsers");
		return oldUsers;
	}

	@RequestMapping("/getPaswdCode")
	@ResponseBody
	public String getPaswdCode(HttpServletRequest request) {
		if (request.getParameter("codeTell") == null || "".equals(request.getParameter("codeTell"))) {
			return "电话号码不能为空";
		}
		String tells = request.getParameter("codeTell");
		System.out.println("---------------------->tells:" + tells);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("tell", tells);
		List<OldUsers> oldUsers = oldUsersService.selectByTellOrUidOrIdcard(map);
		if (oldUsers.size() < 0) {
			return "这个电话未绑定帐号";
		}
		HttpSession session1 = request.getSession();
		session1.setAttribute("paswdUsers", oldUsers.get(0));
		session1.setMaxInactiveInterval(300);
		
		String codes=request.getSession().getAttribute("emailcode").toString();
		System.out.println("------------------->>>>"+DingdongCloudApis.sendMessage(tells, codes));
		System.out.println("---------------------->sessionCode:" + codes);
		return "true";
	}

	@RequestMapping("/findPassword")
	@ResponseBody
	public String findPassword(HttpServletRequest request) {

		if (request.getParameter("codePhone") == null || "".equals(request.getParameter("codePhone"))) {
			return "验证码不能为空";
		}
		String codes = request.getParameter("codePhone");
		String emcode = request.getSession().getAttribute("emailcode").toString();
		System.out.println("---------------------->inputCode:" + codes);
		System.out.println("---------------------->emailCode:" + emcode);
		if (codes.equalsIgnoreCase(emcode)) {
			return "true";
		}
		return "验证码不正确";
	}

	@RequestMapping("/setNewPassword")
	public String setNewPassword(HttpServletRequest request) {
		if (request.getParameter("newPassword") == null || "".equals(request.getParameter("newPassword"))) {
			return "密码不能为空";
		}
		OldUsers oldUsers = (OldUsers) request.getSession().getAttribute("paswdUsers");
		String paswd = Encryption.encrypation(request.getParameter("newPassword"));
		oldUsers.setPassword(paswd);
		oldUsersService.updateByPrimaryKey(oldUsers);
		return "redirect:/gotoFront/login";
	}

}
