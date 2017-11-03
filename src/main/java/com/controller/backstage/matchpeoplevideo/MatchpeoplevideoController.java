package com.controller.backstage.matchpeoplevideo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Matchpeoplevideo;
import com.service.MatchpeoplevideoService;

@Controller
@RequestMapping("/backstage/matchpeoplbyevideo")
public class MatchpeoplevideoController {
@Autowired
@Qualifier("matchpeoplevideoService")
private MatchpeoplevideoService matchpeoplevideoService;

@RequestMapping("finduserbyvideo")
public ModelAndView findUsersByVideoId(Integer id){
	List<Matchpeoplevideo> matchpeoplebyvideolist=matchpeoplevideoService.selectUsersByVideoId(id);
	ModelAndView model=new ModelAndView();
	model.addObject("matchpeoplebyvideolist", matchpeoplebyvideolist);
	model.setViewName("backstage/queryuserbyvideo");
	return model;
	
}
}
