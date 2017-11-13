package com.controller.backstage.groupbuying;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Groupbuying;
import com.bean.Manager;
import com.service.GroupbuyingService;

@Controller
@RequestMapping("/backstage/groupbuying")
public class GroupbuyingController {

	@Resource
	GroupbuyingService groupbuyingService;
	
	@RequestMapping("/insert")
	public String groupbuyingInsert(Groupbuying groupbuying,HttpServletRequest request){
		if(groupbuyingService.selectByPid(groupbuying.getPid())!=null){
			return "redirect:/backstage/groupbuying/selectall";
		}
		groupbuyingService.insertSelective(groupbuying);
		return "redirect:/backstage/groupbuying/selectall";	
	}
	
	@RequestMapping("/delete")
	public String groupbuyingDelect(int id,HttpServletRequest request){
		groupbuyingService.deleteByPrimaryKey(id);
		return "redirect:/backstage/groupbuying/selectall";
	}
	@RequestMapping("/selectall")
	public ModelAndView groupbuyingSelectAll(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		if(request.getSession().getAttribute("ManagerIndo")==null){
			mv.setViewName("backstage/jsp/ManagerIngo/ManagerIngo_login");
			return mv;
		}
		List<Groupbuying> list = groupbuyingService.selectAll();
		mv.addObject("list", list);
		mv.setViewName("backstage/groupbuying_index");
		return mv;
	}
	@RequestMapping("/update")
	public String groupbuyingUpdate(Groupbuying groupbuying,HttpServletRequest request){
		groupbuyingService.updateByPrimaryKeySelective(groupbuying);
		return "redirect:/backstage/groupbuying/selectall";
	}
	@RequestMapping("/select_for_update")
	public String select_for_update(int id,HttpServletRequest request) {
		Groupbuying groupbuying = groupbuyingService.selectByPrimaryKey(id);
		request.getSession().setAttribute("groupbuying", groupbuying);
		return "backstage/groupbuying_update";
	}
}
