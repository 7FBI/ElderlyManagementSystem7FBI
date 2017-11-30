package com.controller.backstage.matchpeoplevideo;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bean.Matchpeoplevideo;
import com.bean.OldDiseaselibrary;
import com.bean.Video;
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
@Autowired
@Qualifier("videoService")
private VideoService videoService;
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
public ModelAndView selectAllMatch(HttpServletRequest request){
	ModelAndView modelAndView=new ModelAndView();
//	if(request.getSession().getAttribute("managerInfo")==null){
//		modelAndView.setViewName("backstage/jsp/ManagerInfo/ManagerInfo_login");
//		return modelAndView;
//	}
//	else{
	modelAndView.setViewName("/backstage/allmatchpeoplevideo");
	Map<String,Object> map=new HashMap<String,Object>();
	Integer page=0;
	Integer max=8;
	Integer counts=0;
	if(request.getParameter("page")!=null){
		page=Integer.valueOf(request.getParameter("page"));
	}
	if(page<0){
		page=0;
	}
	List<Matchpeoplevideo> matchpeoplevideoview=matchpeoplevideoService.queryAllVideoMatchdisease();
	counts=matchpeoplevideoService.matchVideoCount()/max;
	System.out.println(counts);
	if(counts<=0){
		counts=0;
	}
	if(page>=counts){
		page=counts;
	}
	map.put("page", page*max);
	map.put("max", max);
	List<Matchpeoplevideo> allmatch=matchpeoplevideoService.matchVideoCutPage(map);
	modelAndView.addObject("allmatch", allmatch);
	modelAndView.addObject("page", page);
	modelAndView.addObject("counts", counts);
	//}
	return modelAndView;
}
//视频适用疾病 无分页
@RequestMapping("/matchdiseaseByVideo")
public ModelAndView selectMatchDiseaseByVideo(@ModelAttribute("oldvid") String oldvid){
	Integer vid=Integer.parseInt(oldvid);
	System.out.println(vid);
	ModelAndView modelAndView=new ModelAndView();
	List<Matchpeoplevideo> videoMatchalldisease=matchpeoplevideoService.queryMatchdiseaseByVideo(vid);
	System.out.println(videoMatchalldisease.size());
	modelAndView.addObject("vid", vid);
	modelAndView.addObject("videoMatchalldisease", videoMatchalldisease);
	modelAndView.setViewName("backstage/videomatchdisease");
	return modelAndView;
}
//视频适用疾病并进行分页(问题：分页时不能从页面获得videoid)
@RequestMapping("/videoanddisease")
public ModelAndView selectVideoMatchDisease(HttpServletRequest request,@ModelAttribute("oldvid") String oldvid){
	Integer vid=Integer.parseInt(oldvid);
	ModelAndView modelAndView=new ModelAndView();
//	if(request.getSession().getAttribute("managerInfo")==null){
//		modelAndView.setViewName("backstage/jsp/ManagerInfo/ManagerInfo_login");
//		return modelAndView;
//	}
//	else{
	modelAndView.setViewName("backstage/videomatchdisease");
	Map<String,Object> map=new HashMap<String,Object>();
	Integer page=0;
	Integer max=5;
	Integer counts=0;
	if(request.getParameter("page")!=null){
		page=Integer.valueOf(request.getParameter("page"));
	}
	if(page<0){
		page=0;
	}
	counts=matchpeoplevideoService.oneVideoMatchDiseaseCount(vid)/max;
	System.out.println(counts);
	if(counts<=0){
		counts=0;
	}
	if(page>=counts){
		page=counts;
	}
	map.put("page", page*max);
	map.put("max", max);
	map.put("vid", vid);
	List<Matchpeoplevideo> videoMatchalldisease=matchpeoplevideoService.queryVideoMatchdisease(map);
	modelAndView.addObject("vid", vid);
	modelAndView.addObject("videoMatchalldisease", videoMatchalldisease);
	modelAndView.addObject("page", page);
	modelAndView.addObject("counts", counts);
//}
	return modelAndView;
}


@RequestMapping("/queryvideotitle")
public ModelAndView selectVideotile(Integer id){
	Video video=videoService.queryOneVideo(id);
	System.out.println(video);
	 List<OldDiseaselibrary> alloldDiseaselibrary=oldDiseaselibraryService.findAllDiseaselibrary();
	System.out.println(alloldDiseaselibrary.size());
	 ModelAndView modelAndView=new ModelAndView();
	modelAndView.addObject("alloldDiseaselibrary", alloldDiseaselibrary);
	modelAndView.addObject("video", video);
	modelAndView.setViewName("/backstage/addmatchpeoplevideo");
	return modelAndView;
}
//添加联系
@RequestMapping("/addvideoanddisease")
public String insertVideoMatchDisease(RedirectAttributes model, Matchpeoplevideo matchpeoplevideo){
	matchpeoplevideoService.addMatchvideo(matchpeoplevideo);
	model.addFlashAttribute("oldvid", matchpeoplevideo.getVid());
	return "redirect:/backstage/matchpeoplbyevideo/matchdiseaseByVideo.action";
}

//在全部的列表处：删除联系
@RequestMapping("/deletevideomatch")
public String deleteVideoMatchDisease(Integer id){
	matchpeoplevideoService.deleteMatchvideo(id);
	
	return "redirect:/backstage/matchpeoplbyevideo/queryallmatch.action";
}
//某一视频：删除联系
@RequestMapping("/deletevideomatchdisease")
public String deleteVideoMatchDiseaseByVideoId(RedirectAttributes model,Integer id){
	Matchpeoplevideo matchpeoplevideo=matchpeoplevideoService.selectByPrimaryKey(id);
	matchpeoplevideoService.deleteMatchvideo(id);
	model.addFlashAttribute("oldvid", matchpeoplevideo.getVid());
	return "redirect:/backstage/matchpeoplbyevideo/matchdiseaseByVideo.action";
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
