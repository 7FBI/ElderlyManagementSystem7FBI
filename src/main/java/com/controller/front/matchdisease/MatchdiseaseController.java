package com.controller.front.matchdisease;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Matchdisease;
import com.bean.OldDiseasedetails;
import com.bean.OldUsers;
import com.service.MatchdiseaseService;

@Controller
@RequestMapping("/front/matchdisease")
public class MatchdiseaseController {
	@Autowired
	@Qualifier("matchdiseaseService")
	private MatchdiseaseService matchdiseaseService;
	public ModelAndView selectMatchProductByUid(String uid){
		ModelAndView modelAndView=new ModelAndView();
		List<Matchdisease> matchProducts=matchdiseaseService.queryProductByUid(uid);
		modelAndView.addObject("matchProducts", matchProducts);
		modelAndView.setViewName("front/ElectronicCommerce");
		return modelAndView;
	}
//	前台病历显示
	@RequestMapping("/diseasedetails")
	@ResponseBody
	public ModelAndView selectOldUserDiseasDetails(HttpServletRequest request){
		ModelAndView modelAndView=new ModelAndView();
		if(request.getSession().getAttribute("oldUsers")==null){
			modelAndView.setViewName("front/login");
		}else{
		OldUsers oldUser=(OldUsers) request.getSession().getAttribute("oldUsers");
		List<Matchdisease> diseaseDetails=matchdiseaseService.queryOldUserDiseaseDetails(oldUser.getUid());
		System.out.println(diseaseDetails.size());
		modelAndView.addObject("diseaseDetails", diseaseDetails);
		modelAndView.setViewName("front/SelfCenter_diseasedetails");
		}
		return modelAndView;
	}
}