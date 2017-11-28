package com.controller.backstage.statistics.oldusers;

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

import com.bean.OldUsers;
import com.service.OldUsersService;

@Controller
@RequestMapping("/statistics/backStageOluser")
public class OldUserStatisticsController {
	@Autowired
	@Qualifier("oldUsersService")
	private OldUsersService oldUsersService;
	
	@RequestMapping("/loginCount")
	@ResponseBody
	public Map<String, Object> loginCount(HttpServletRequest request){
		Map<String, Object> maps=new HashMap<String, Object>();
		Map<String, Object> map=new HashMap<String, Object>();
		String uid=request.getParameter("uid");
		map.put("uid", uid);
		List<OldUsers> list=oldUsersService.seleteOldUsersLoginNumber(map);
		maps.put("usersLogins", list);
		return maps;
	}
	
	@RequestMapping("/usersGoodsMoneysNow")
	@ResponseBody
	public Map<String, Object> usersGoodsMoneysNow(HttpServletRequest request){
		Map<String, Object> maps=new HashMap<String, Object>();
		Map<String, Object> map=new HashMap<String, Object>();
		String uid=request.getParameter("uid");
		map.put("uid", uid);
		List<OldUsers> list=oldUsersService.seleteOldUsersOrdersMoneysAndDate(map);
		maps.put("usersLogins", list);
		return maps;
	}
	
	@RequestMapping("/usersGoodsMoneysYear")
	@ResponseBody
	public Map<String, Object> usersGoodsMoneysYear(HttpServletRequest request){
		Map<String, Object> maps=new HashMap<String, Object>();
		Map<String, Object> map=new HashMap<String, Object>();
		String uid=request.getParameter("uid");
		map.put("uid", uid);
		List<OldUsers> list=oldUsersService.seleteOldUsersOrdersMoneysAndDateYearAll(map);
		maps.put("usersLogins", list);
		return maps;
	}
	
	
	@RequestMapping("/ourOldUsersNumBers")
	public ModelAndView ourOldUsersNumBers(HttpServletRequest request){
		ModelAndView view=new ModelAndView();
		Map<String, Object> map=new HashMap<String, Object>();
		String uid=request.getParameter("uid");
		map.put("uid", uid);
		List<OldUsers> list=oldUsersService.seleteOldUsersTypesAll(map);
		List<OldUsers> managersList=oldUsersService.selectCountAreaNumbers();
		List<OldUsers> productsList=oldUsersService.selectCountProductCounts();
		view.addObject("usersNums", list);
		view.addObject("managers", managersList);
		view.addObject("products", productsList);
		view.setViewName("backstage/statistics/ourInfos");
		return view;
	}
	
	

}
