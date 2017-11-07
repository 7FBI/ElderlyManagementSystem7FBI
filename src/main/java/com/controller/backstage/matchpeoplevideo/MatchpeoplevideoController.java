package com.controller.backstage.matchpeoplevideo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Matchpeoplevideo;
import com.bean.OldDiseaselibrary;
import com.service.MatchpeoplevideoService;
import com.service.OldDiseaselibraryService;
import com.service.VideoService;

@Controller
@RequestMapping("/backstage/matchpeoplbyevideo")
public class MatchpeoplevideoController {
@Autowired
@Qualifier("matchpeoplevideoService")
private MatchpeoplevideoService matchpeoplevideoService;
@Autowired
@Qualifier("oldDiseaselibraryService")
private OldDiseaselibraryService oldDiseaselibraryService;
//视频适用人群
@RequestMapping("/finduserbyvideo")
public ModelAndView findUsersByVideoId(Integer id){
	List<Matchpeoplevideo> matchpeoplebyvideolist=matchpeoplevideoService.selectUsersByVideoId(id);
	ModelAndView model=new ModelAndView();
	model.addObject("matchpeoplebyvideolist", matchpeoplebyvideolist);
	model.setViewName("backstage/queryuserbyvideo");
	return model;
	
}
//查询所有
@RequestMapping("/queryallmatch")
public ModelAndView selectAllMatch(){
	List<Matchpeoplevideo> allmatch=matchpeoplevideoService.queryAllVideoMatchdisease();
	ModelAndView modelAndView=new ModelAndView();
	modelAndView.addObject("allmatch", allmatch);
	modelAndView.setViewName("/backstage/allmatchpeoplevideo");
	return modelAndView;
}
//视频适用疾病
@RequestMapping("/videoanddisease")
public ModelAndView selectVideoMatchDisease(Integer vid){
	List<Matchpeoplevideo> allmatch=matchpeoplevideoService.queryVideoMatchdisease(vid);
	ModelAndView modelAndView=new ModelAndView();
	modelAndView.addObject("vid", vid);
	modelAndView.addObject("allmatch", allmatch);
	modelAndView.setViewName("/backstage/allmatchpeoplevideo");
	return modelAndView;
}


@RequestMapping("/queryvideotitle")
public ModelAndView selectVideotile(Integer id){
	Matchpeoplevideo matchpeoplevideo=matchpeoplevideoService.queryVideotitle(id);
	System.out.println(matchpeoplevideo);
	 List<OldDiseaselibrary> alloldDiseaselibrary=oldDiseaselibraryService.selectAllDiseaselibrary();
	System.out.println(alloldDiseaselibrary.size());
	 ModelAndView modelAndView=new ModelAndView();
	modelAndView.addObject("alloldDiseaselibrary", alloldDiseaselibrary);
	modelAndView.addObject("matchpeoplevideo", matchpeoplevideo);
	modelAndView.setViewName("/backstage/addmatchpeoplevideo");
	return modelAndView;
}
//添加联系
@RequestMapping("/addvideoanddisease")
public String insertVideoMatchDisease(Matchpeoplevideo matchpeoplevideo){
	matchpeoplevideoService.addMatchvideo(matchpeoplevideo);
	
	return "redirect:/backstage/matchpeoplbyevideo/queryallmatch.action";
}

//删除联系
@RequestMapping("/deletevideomatch")
public String deleteVideoMatchDisease(Integer id){
	matchpeoplevideoService.deleteMatchvideo(id);
	
	return "redirect:/backstage/matchpeoplbyevideo/queryallmatch.action";
}
@RequestMapping("/findmatchbyconditions")
public ModelAndView selectmatchbyconditions(String queryVideomatchdisease){
	List<Matchpeoplevideo> allmatch=matchpeoplevideoService.queryMatchByConditions(queryVideomatchdisease);
	ModelAndView modelAndView=new ModelAndView();
	modelAndView.addObject("allmatch", allmatch);
	modelAndView.setViewName("/backstage/addmatchpeoplevideo");
	return modelAndView;
}
}
