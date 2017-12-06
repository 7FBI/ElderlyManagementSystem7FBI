package com.controller.front.frontinformation;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Frontinformation;
import com.service.FrontinformationService;

@Controller
@RequestMapping("/front/frontinformation")
public class FrontinformationController {
	@Autowired
	@Resource
	private FrontinformationService frontinformationService;
	
	@RequestMapping("/selectall")
	public ModelAndView selectAll(HttpServletRequest request) {
		List<Frontinformation> lists=frontinformationService.selectAll();
		List<Frontinformation> frontinformations = frontinformationService.selectAllFrontinformation();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("lists", lists);
		modelAndView.addObject("frontinformations", frontinformations);
		for(int i = 0; i<lists.size();i ++){
			System.out.println("----------------------"+lists.get(i).getNewstitle());
		}
		request.setAttribute("lists", lists);
		
	
		
		modelAndView.setViewName("front/Front_Infomation");
		return modelAndView;
	}
	
	//这是用来 在首页下方轮播新闻信息使用的方法
	@RequestMapping("/selectFour")
	public ModelAndView selectFour(){
	List<Frontinformation> list=frontinformationService.selectFour();
	ModelAndView modelAndView = new ModelAndView();
	modelAndView.addObject("list", list);
		/*for(int i = 0; i<list.size();i ++){
			System.out.println("----------------------"+list.get(i).getNewstitle());
		}*/
	modelAndView.setViewName("/");
	return modelAndView;
	}
	
	
	/*@RequestMapping("/selectEight")
	public ModelAndView selectEight(String newstitle){
	List<Frontinformation> list=frontinformationService.selectEight(newstitle);
	ModelAndView modelAndView = new ModelAndView();
	modelAndView.addObject("list", list);
		for(int i = 0; i<list.size();i ++){
			System.out.println("----------------------"+list.get(i).getNewstitle());
		}
	modelAndView.setViewName("/");
	return modelAndView;
	}*/
	
	
	//这是用来查询通告详情的
	@RequestMapping("/selectByKey")
	public ModelAndView selectByKey(Integer id){
		Frontinformation frontinformation = frontinformationService.selectByKey(id);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("frontinformation", frontinformation);
		modelAndView.setViewName("front/Front_Infomation_Detail");
		return modelAndView;
		
	}
}
