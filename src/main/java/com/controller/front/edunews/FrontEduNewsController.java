package com.controller.front.edunews;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Edunews;
import com.others.substring.CutString;
import com.service.EdunewsService;

@Controller
@RequestMapping("/front/edu")
public class FrontEduNewsController {
	@Autowired
	@Qualifier("edunewsService")
	private EdunewsService edunewsService;
	//查询所有
	@RequestMapping("/alledunews")
	public ModelAndView selectAllEdunews(HttpServletRequest request){
		ModelAndView modelAndView =new ModelAndView();
//		if(request.getSession().getAttribute("oldUsers")==null){
//			modelAndView.setViewName("/front/login");
//			return modelAndView;
//		}
		modelAndView.setViewName("/front/educational/edunews");
		Map<String,Object>map=new HashMap<String, Object>();
		Integer max=5;
		Integer page=0;
		Integer counts=0;
		//当前页
		if(request.getParameter("page")!=null){
			page=Integer.valueOf(request.getParameter("page"));
		}
		if(page<=0){
			page=0;
		}
		counts=edunewsService.eduCount()/max;
		if(counts<=0){
			counts=0;
		}
		if(page>=counts){
			page=counts;
		}
		map.put("page", page*max);
		map.put("max", max);
//		List <Edunews> alledunews=edunewsService.selectAllEdu();
		List <Edunews> alledunews=edunewsService.findAllEduNews(map);
		List <Edunews> newedunews=new ArrayList<Edunews>();
		for(Edunews edunews:alledunews){
			String neweduContent=edunews.getEducontent();
			edunews.setEducontent(neweduContent.substring(0,5));
			newedunews.add(edunews);
		}
		modelAndView.addObject("newedunews", newedunews);
		modelAndView.addObject("page", page);
		modelAndView.addObject("counts", counts);
		return modelAndView;
	}
	
//	按条件查询
@RequestMapping("/queryEduByConditions")
 public ModelAndView selectEduByConditions(String findEduByConditions){
	List <Edunews> newedunews=edunewsService.queryEduByConditions(findEduByConditions);
	ModelAndView modelAndView =new ModelAndView();
	modelAndView.addObject("newedunews", newedunews);
	modelAndView.setViewName("/front/educational/edunews");
	return modelAndView;
	
}
//新闻详情
@RequestMapping("/querydudetailbyid")
public ModelAndView selecteEdudetailById(Integer id){
	Edunews oneEduDetail=edunewsService.selectEduById(id);
	ModelAndView modelAndView =new ModelAndView();
	modelAndView.addObject("oneEduDetail", oneEduDetail);
	modelAndView.setViewName("/front/educational/edunewsdetail");
	return modelAndView;	
}
//头条新闻
@RequestMapping("/queryhotnews")
public ModelAndView querHotNews(){
	List<Edunews> hotNews=edunewsService.findHotNews();
	ModelAndView modelAndView =new ModelAndView();
	modelAndView.addObject("hotNews", hotNews);
	modelAndView.setViewName("/");
	return modelAndView;	
}



}
