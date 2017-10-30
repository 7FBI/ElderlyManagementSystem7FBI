package com.controller.backstage.oldsickness;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Matchdisease;
import com.bean.OldDiseasedetails;
import com.bean.OldDiseaselibrary;
import com.bean.OldSickness;
import com.service.MatchdiseaseService;
import com.service.OldDiseasedetailsService;
import com.service.OldSicknessService;


@Controller
@RequestMapping("/backoldSickness")
public class BackOldSicknessController {
	@Autowired
	@Qualifier("oldSicknessService")
	private OldSicknessService oldSicknessService;
	@Autowired
	@Qualifier("matchdiseaseService")
	private MatchdiseaseService matchdiseaseService;
	
	  @RequestMapping("/querys")
	  //查询每次的病例的详情
	public ModelAndView getOldDiseasedetails(HttpServletRequest request,Integer oldDiseasedetail_id){
	  //  String uid=(String) request.getSession().getAttribute("uid");	
		List<OldSickness> oldSicknesss=oldSicknessService.selectOldSicknesses(oldDiseasedetail_id);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("oldSickness",oldSicknesss);
		   //根据疾病id查询对应的药品
         Map<String, List<Matchdisease>> listMatchdiseaseMap=new HashMap<String, List<Matchdisease>>();
		
		for (OldSickness oldSickness : oldSicknesss) {
			//did==did--->pid
			List<Matchdisease> listMatchdiseases=new ArrayList<Matchdisease>();
			listMatchdiseases=matchdiseaseService.selectProductByDiseasesId(oldSickness.getDid());
	  for (OldDiseaselibrary oldDiseaselibrary :oldSickness.getListOldDiseaselibraries() ) {
		      
		  listMatchdiseaseMap.put(oldDiseaselibrary.getDiseasename(),listMatchdiseases);
	}
		}
	   modelAndView.addObject("listMatchdiseaseMap",listMatchdiseaseMap);
	modelAndView.setViewName("backstage/oldusersickness");
		return modelAndView;
	}
	
}
