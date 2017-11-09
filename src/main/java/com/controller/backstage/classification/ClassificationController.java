package com.controller.backstage.classification;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.Classification;
import com.service.ClassificationService;

@Controller
@RequestMapping("/backstage/Class")
public class ClassificationController {
	
	@Autowired
	private ClassificationService classificationService;
	
	@RequestMapping(value="/select_to.action")
	public String selectClassifiaction(HttpServletRequest request){
		List<Classification> classification;
		classification=classificationService.selectClassifiaction();
		request.getSession().setAttribute("classifications",classification); 
		return "backstage/jsp/Classification/ShowClassification";
	}
	
	@RequestMapping(value="/update_classification.action")
	public String updateClassification(HttpServletRequest request,int id){
		Classification classification=null;
		classification=classificationService.selectByPrimaryKey(id);
		request.getSession().setAttribute("classification", classification);
		return "backstage/jsp/Classification/updateClassification";
		
	}
	
	@RequestMapping(value="/update_sucssful.action")
	public String updateSumbit(HttpServletRequest request,Classification classification){
		classificationService.updateByPrimaryKeySelective(classification);
		return "redirect:select_to.action";
	}
	
	@RequestMapping(value="/insertClassification.action")
	public String insertClassification(HttpServletRequest request,Classification classification){
		classificationService.insertSelective(classification);
		return "redirect:select_to.action";
		
	}
	
	 
	
}
