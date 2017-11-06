package com.controller;

import java.io.UnsupportedEncodingException;
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

import com.bean.Ceoinfo;
import com.bean.Frontinformation;
import com.bean.Managerinfo;
import com.others.md5.Encryption;
import com.service.ManagerInfoService;

@Controller
@RequestMapping("/backstage/user")
public class ManagerInfoController {

	@Autowired
	private ManagerInfoService managerInfoService;

	@RequestMapping(value = "/login.action")
	public String ManagerInfo(Managerinfo managerInfo, HttpServletRequest request) throws UnsupportedEncodingException {
		String pwd = Encryption.encrypation(managerInfo.getPassword());
		Managerinfo mangerIndo = null;
		mangerIndo = managerInfoService.findManagerBynametype(managerInfo);
		if (mangerIndo == null) {
			return "redirect:/gotoBackstage/index";
		} else{
			if (pwd.equals(mangerIndo.getPassword())){
				request.getSession().setAttribute("ManagerIndo", mangerIndo);
			}
		}
		return "redirect:/gotoBackstage/index";
	}
	
	@RequestMapping("/selectAlls")
	public ModelAndView selectAlls(HttpServletRequest request){
		ModelAndView view=new ModelAndView();
		if (request.getSession().getAttribute("ceoinfo")==null) {
			view.setViewName("other/500");
			return null;
		}
		view.setViewName("backstage/managerInfo_index");
		Managerinfo managerinfo=new Managerinfo();
		Map<String, Object> map=new HashMap<String, Object>();
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
		counts=managerInfoService.selectAllManagersCounts(managerinfo)/max;
		if (counts<=0) {
			counts=0;
		}
		if (page>=counts) {
			page=counts;
		}
		List<Managerinfo> list=null;
		map.put("page", page*max);
		map.put("max", max);
		map.put("managerInfo", managerinfo);
		list=managerInfoService.selectAllManagers(map);
		view.addObject("managerInfo", list);
		view.addObject("counts", counts);
		view.addObject("page", page);
		return view;
	}
	
	@RequestMapping("/updateView")
	public ModelAndView updateView(HttpServletRequest request){
		ModelAndView view=new ModelAndView();
		if (request.getParameter("id")==null|Integer.valueOf(request.getParameter("id"))<=0) {
			return selectAlls(request);
		}
		Integer id=Integer.valueOf(request.getParameter("id"));
		Managerinfo managerinfo=managerInfoService.selectByPrimaryKey(id);
		if (managerinfo==null) {
			return selectAlls(request);
		}
		view.addObject("managerInfo", managerinfo);
		view.setViewName("backstage/managerInfo_update");
		return view;
	}
	
	@RequestMapping("/updateInfoValue")
	public ModelAndView updateInfoValue(Managerinfo managerinfo,HttpServletRequest request){
		if (managerinfo.getId()==null|managerinfo.getId()<=0) {
			return selectAlls(request);
		}
		Managerinfo m=managerInfoService.selectByPrimaryKey(managerinfo.getId());
		if (m.getPassword().equals(managerinfo.getPassword())) {
			managerinfo.setPassword(null);
		}
		managerInfoService.updateByPrimaryKeySelective(managerinfo);
		return updateView(request);
	}
	
	@RequestMapping("/deleteManager")
	public ModelAndView deleteManager(HttpServletRequest request){
		if (request.getParameter("id")==null|Integer.valueOf(request.getParameter("id"))<=0) {
			return selectAlls(request);
		}
		Integer id=Integer.valueOf(request.getParameter("id"));
		managerInfoService.deleteByPrimaryKey(id);
		return selectAlls(request);
	}
	
	@RequestMapping("/addManagerInfo")
	public ModelAndView addManagerInfo(Managerinfo managerinfo,HttpServletRequest request){
		if (managerinfo==null) {
			return selectAlls(request);
		}
		managerinfo.setPassword(Encryption.encrypation(managerinfo.getPassword()));
		if (request.getSession().getAttribute("ceoinfo")==null) {
			return selectAlls(request);
		}
		managerInfoService.insertSelective(managerinfo);
		return selectAlls(request);
	}
}
