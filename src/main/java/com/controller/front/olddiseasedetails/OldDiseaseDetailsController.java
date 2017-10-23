package com.controller.front.olddiseasedetails;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bean.OldDiseasedetails;
import com.service.OldDiseasedetailsService;

@Controller
@RequestMapping("/oldDiseasedetails")
public class OldDiseaseDetailsController {
	@Autowired
	@Qualifier("oldDiseasedetailsService")
	private OldDiseasedetailsService oldDiseasedetailsService;
	
	@RequestMapping("/query")
	public ModelAndView getOldDiseasedetail(int id){
		OldDiseasedetails oldDiseasedetails=oldDiseasedetailsService.selectByPrimaryKey(id);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("oldDiseasedetails",oldDiseasedetails);
		modelAndView.setViewName("front/getOldSickness");
		return modelAndView;
	}
	@RequestMapping("/querys")
	//查询UID账号的所有病例记录
	public ModelAndView getOldDiseasedetails(HttpServletRequest request){
	  //  String uid=(String) request.getSession().getAttribute("uid");	
		List<OldDiseasedetails> oldDiseasedetails=oldDiseasedetailsService.selectOldDiseasedetailsByUid("123456");
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("oldDiseasedetails",oldDiseasedetails);
		modelAndView.setViewName("front/getoldDiseasedetails");
		return modelAndView;
	}
	
}
