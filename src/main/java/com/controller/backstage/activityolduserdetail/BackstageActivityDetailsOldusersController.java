package com.controller.backstage.activityolduserdetail;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Activitydetailinfo;
import com.bean.Activitydetailoldusers;
import com.bean.Manager;
import com.service.ActivitydetailOldUsersService;
import com.service.ActivitydetailinfoService;

@Controller
@RequestMapping("/backstage/userjoinactivity")
public class BackstageActivityDetailsOldusersController {
@Autowired
@Qualifier("activitydetailOldUsersService")
private ActivitydetailOldUsersService activitydetailOldUsersService;
@Autowired
@Qualifier("activitydetailinfoService")
private ActivitydetailinfoService activitydetailinfoService;

@RequestMapping("/queryjoinactiviyusers")
public ModelAndView selectJoinActiviyUsers(HttpServletRequest request){
	ModelAndView modelAndView=new ModelAndView();
	if (request.getSession().getAttribute("manager") == null) {
		modelAndView.setViewName("backstage/loginWTF");
		return modelAndView;
	}
	if (request.getSession().getAttribute("manager") != null) {
		Manager manager = (Manager) request.getSession().getAttribute("manager");
		Map<String, Object> map = new HashMap<String, Object>();
		Integer max = 6;
		Integer page = 0;
		Integer counts = 0;
		if (request.getParameter("page") != null) {
			page = Integer.valueOf(request.getParameter("page"));
		}
		if (page <= 0) {
			page = 0;
		}
		counts = activitydetailOldUsersService.getAllJoinActivityCount() / max;
		System.out.println(counts);
		if (counts <= 0) {
			counts = 0;
		}
		if (page >= counts) {
			page = counts;
		}
		map.put("page", page * max);
		map.put("max", max);
		map.put("localareaid", manager.getLocaid());
		List<Activitydetailoldusers> allJoinUsers=activitydetailOldUsersService.findJoinActiviyUsers(map);
		List<Activitydetailoldusers> allJoinUsersAndCount=new ArrayList<Activitydetailoldusers>();
		for(Activitydetailoldusers activitydetailoldusers:allJoinUsers){	
			Integer joinCount=activitydetailOldUsersService.oneActivityJoinUserCount(activitydetailoldusers.getActivityid());
			System.out.println(joinCount);
			activitydetailoldusers.setJoinCount(joinCount);
			allJoinUsersAndCount.add(activitydetailoldusers);
		}
		
		modelAndView.addObject("allJoinUsers", allJoinUsers);
		modelAndView.addObject("page", page);
		modelAndView.addObject("counts", counts);
		modelAndView.addObject("allJoinUsersAndCount", allJoinUsersAndCount);
		modelAndView.setViewName("backstage/alljoinactivityusers");
	}
	return modelAndView;
}

//删除报名记录
	@RequestMapping("/deleteMyJoinActive")
	public String deleteActivity(HttpServletRequest request, Integer id) {
		ModelAndView modelAndView = new ModelAndView();
		if (request.getSession().getAttribute("manager") == null) {
			modelAndView.setViewName("backstage/loginWTF");
			return "redirect:/backstage/manager/login";
		}if (request.getSession().getAttribute("manager")!= null) {
			Manager manager = (Manager) request.getSession().getAttribute("manager");
			System.out.println("参与记录ID" + id);	
			activitydetailOldUsersService.deleteByPrimaryKey(id);
			}
		return "redirect:/backstage/userjoinactivity/oneActivejoinUsersDetails";
	}
//某一活动的用户参与详情
	@RequestMapping("/oneActivejoinUsersDetails")
	public ModelAndView selectoneActivejoinUsersDetails(HttpServletRequest request,Integer activityid){
		ModelAndView modelAndView=new ModelAndView();
		if (request.getSession().getAttribute("manager") == null) {
			modelAndView.setViewName("backstage/loginWTF");
			return modelAndView;
		}
		if (request.getSession().getAttribute("manager") != null) {
			Manager manager = (Manager) request.getSession().getAttribute("manager");
			Map<String, Object> map = new HashMap<String, Object>();
			Integer max = 6;
			Integer page = 0;
			Integer counts = 0;
			if (request.getParameter("page") != null) {
				page = Integer.valueOf(request.getParameter("page"));
			}
			if (page <= 0) {
				page = 0;
			}
			counts = activitydetailOldUsersService.oneActivityJoinUserCount(activityid) / max;
			System.out.println(counts);
			if (counts <= 0) {
				counts = 0;
			}
			if (page >= counts) {
				page = counts;
			}
			map.put("page", page * max);
			map.put("max", max);
			map.put("localareaid", manager.getLocaid());
			map.put("activityid", activityid);
			List<Activitydetailoldusers> oneActivityJoinUsers=activitydetailOldUsersService.findOneActivityJoinUserDetails(map);
				
			modelAndView.addObject("oneActivityJoinUsers", oneActivityJoinUsers);
			modelAndView.addObject("page", page);
			modelAndView.addObject("counts", counts);			
			modelAndView.setViewName("backstage/oneactivitysigninfo");
		}
		return modelAndView;
	}
	
	//根据活动id删除用户的报名记录
		@RequestMapping("/deleteJoinActived")
		public String deleteActivitySignByActiviyId(HttpServletRequest request, Integer activityid) {
			ModelAndView modelAndView = new ModelAndView();
			if (request.getSession().getAttribute("manager") == null) {
				modelAndView.setViewName("backstage/loginWTF");
				return "redirect:/backstage/manager/login";
			}if(request.getSession().getAttribute("manager")!= null) {
				Manager manager = (Manager) request.getSession().getAttribute("manager");
				System.out.println("活动ID" + activityid);	
				activitydetailOldUsersService.deleteByActiviyId(activityid);;
				}
			return "redirect:/backstage/userjoinactivity/queryjoinactiviyusers";
		}
//查询某一活动报名情况
@RequestMapping("queryOneActivityJoinInfo")
public ModelAndView queryOneActivityJoinInfo(HttpServletRequest request,String activityTitle){
	System.out.println("标题："+activityTitle);
	ModelAndView modelAndView = new ModelAndView();
	if (request.getSession().getAttribute("manager") == null) {
		modelAndView.setViewName("backstage/loginWTF");
	}if(request.getSession().getAttribute("manager")!= null) {
		Manager manager = (Manager) request.getSession().getAttribute("manager");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("managerId", manager.getId());
		map.put("activityTitle",activityTitle);
		List<Activitydetailinfo> allJoinUsers=activitydetailinfoService.findOneActivityJoinInfo(map);
		List<Activitydetailinfo> allJoinUsersAndCount=new ArrayList<Activitydetailinfo>();
		for(Activitydetailinfo activitydetailoldusers:allJoinUsers){	
			Integer joinCount=activitydetailOldUsersService.oneActivityJoinUserCount(activitydetailoldusers.getId());
			System.out.println(joinCount);
			activitydetailoldusers.setJoinCount(joinCount);
			allJoinUsersAndCount.add(activitydetailoldusers);
		}
		modelAndView.addObject("allJoinUsersAndCount", allJoinUsersAndCount);
		modelAndView.setViewName("backstage/findactivitybytitle");
}
	return 	modelAndView;
		
}
}