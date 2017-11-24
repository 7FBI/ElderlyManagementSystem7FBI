package com.controller.util;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bean.Localarea;
import com.service.LocalAreaService;

@Controller
@RequestMapping("/localareaviews")
public class LocalareaViewController {
	@Autowired
	@Qualifier("localAreaService")
	private LocalAreaService localAreaService;
	
	@RequestMapping("/mapViews")
	@ResponseBody
	public Map<String, Object> mapViews(HttpServletRequest request){
		Map<String, Object> map=new HashMap<String, Object>();
		List<Localarea> list=localAreaService.getOurMeritMapViews();
		map.put("ourMerit", list);
		return map;
	}
	
	@RequestMapping("/yearMoneys")
	@ResponseBody
	public Map<String, Object> yearMoneys(HttpServletRequest request){
		Map<String, Object> map=new HashMap<String, Object>();
		if (request.getParameter("area")==null|"".equals(request.getParameter("area"))) {
			return null;
		}
		Integer area=Integer.valueOf(request.getParameter("area"));
		List<Localarea> list=localAreaService.getOurMeritUsersMoneyViews(area);
		map.put("ourMeritMoneys", list);
		return map;
	}
	

}
