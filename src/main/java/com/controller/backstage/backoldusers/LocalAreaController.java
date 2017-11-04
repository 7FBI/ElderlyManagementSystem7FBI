package com.controller.backstage.backoldusers;

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

import com.bean.Localarea;
import com.bean.Managerinfo;
import com.service.LocalAreaService;

@Controller
@RequestMapping("/backstage/localarea")
public class LocalAreaController {
	@Autowired
	@Qualifier("localAreaService")
	private LocalAreaService localAreaService;
	
	@RequestMapping("/findAllArea")
	public ModelAndView findAllArea(HttpServletRequest request){
		ModelAndView view=new ModelAndView();
		if (request.getSession().getAttribute("ceoinfo")==null) {
			view.setViewName("backstage/loginWTF");
			return view;
		}
		view.setViewName("backstage/area");
		Map<String,Object> map=new HashMap<String, Object>();
		Integer max=2;
		Integer page=0;
		Integer counts=0;
		//当前页
		if (request.getParameter("page")!=null) {
			page=Integer.valueOf(request.getParameter("page"));
		}
		if (page<0) {
			page=0;
		}
		counts=localAreaService.findAllCounts()/max;
		if (counts<=0) {
			counts=0;
		}
		if (page>=counts) {
			page=counts;
		}
		map.put("page", page*max);
		map.put("max", max);
		List<Localarea> list=localAreaService.findAllLocalAreaMap(map);
		view.addObject("localArea", list);
		view.addObject("counts", counts);
		view.addObject("page", page);
		return view;
	}
	//详情
	@RequestMapping("/selectInfo")
	public ModelAndView selectInfo(HttpServletRequest request){
		ModelAndView view=new ModelAndView();
		Integer id=Integer.valueOf(request.getParameter("id"));
		List<Localarea> list=localAreaService.findAllLocalArea();
		Localarea localarea=localAreaService.selectByPrimaryKey(id);
		view.addObject("list", list);
		view.addObject("localarea", localarea);
		view.setViewName("backstage/areaInfo");
		return view;
	}
	
	//更新
	@RequestMapping("/updateInfo")
	public ModelAndView updateInfo(HttpServletRequest request,Localarea localarea){
		if (localarea.getSelftcityid()<=0|localarea.getSelftcityid()==null) {
			localarea.setSelftcityid(null);
		}
		localAreaService.updateLocalAreaById(localarea);
		return selectInfo(request);
	}
	
	//删除
	@RequestMapping("/deleteInfo")
	@ResponseBody
	public String deleteInfo(HttpServletRequest request,Localarea localarea){
		if (request.getParameter("id")!=null) {
			localAreaService.deleteByPrimaryKey(Integer.valueOf(request.getParameter("id")));
			return "true";
		}
		return "未知错误!";
	}
	
	@RequestMapping("/selectAllInfo")
	@ResponseBody
	public List<Localarea> selectAllInfo(HttpServletRequest request){
		List<Localarea> list=localAreaService.findAllLocalArea();
		return list;
	}
	
	@RequestMapping("/addAreaInfo")
	public ModelAndView addAreaInfo(HttpServletRequest request,Localarea localarea){
		if (localarea.getSelftcityid()==-1) {
			localarea.setSelftcityid(null);
		}
		localAreaService.addLocalArea(localarea);
		return findAllArea(request);
	}
}
