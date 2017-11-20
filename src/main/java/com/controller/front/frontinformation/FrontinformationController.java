package com.controller.front.frontinformation;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.Frontinformation;
import com.service.FrontinformationService;

@Controller
@RequestMapping("/front/frontinformation")
public class FrontinformationController {
	@Autowired
	@Resource
	private FrontinformationService frontinformationService;
	
	@RequestMapping("/selectall")
	public String selectAll(HttpServletRequest request) {
		List<Frontinformation> list=frontinformationService.selectAll();
		for(int i = 0; i<list.size();i ++){
			System.out.println("----------------------"+list.get(i).getNewstitle());
		}
		request.setAttribute("list", list);
		return "";
	}
	
	//这是用来 在首页下方轮播新闻信息使用的方法
	@RequestMapping("/selectFour")
	public void selectFour(){
		List<Frontinformation> list=frontinformationService.selectFour();
		for(int i = 0; i<list.size();i ++){
			System.out.println("----------------------"+list.get(i).getNewstitle());
		}
	}
}
