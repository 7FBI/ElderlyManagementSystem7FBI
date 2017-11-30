package com.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Activepicutre;
import com.bean.Activitydetailinfo;
import com.bean.Edunews;
import com.bean.Frontinformation;
import com.service.ActivepicutreService;
import com.service.ActivitydetailinfoService;
import com.service.EdunewsService;
import com.service.FrontinformationService;

/**
 * Created by Administrator on 2017/9/28.
 */
@Controller
public class MainController {
	@Autowired
	@Qualifier("edunewsService")
	private EdunewsService edunewsService;
	
	@Autowired
	@Resource
	private FrontinformationService frontinformationService;
	
	@Autowired
	@Qualifier("activitydetailinfoService")
	private ActivitydetailinfoService activitydetailinfoService;
	@Autowired
	@Qualifier("activepicutreService")
	private ActivepicutreService activepicutreService;

    @RequestMapping("/")
    public ModelAndView homes(){
    	ModelAndView model=new ModelAndView();
//    	新闻
    	List<Edunews> hotfivenews=edunewsService.findHotNews();
    	List<Edunews> hotnews=new ArrayList<Edunews>();
    	List<Frontinformation> list=frontinformationService.selectFour();
//    	新闻内容截取
    	for(Edunews edunews:hotfivenews){
    		String newcontent=edunews.getEducontent();
    		edunews.setEducontent(newcontent.substring(0, 50));
    		hotnews.add(edunews);
    	}
//    	获得第一条
    	Edunews leftpicture=null;
    	if (hotnews.size()>0) {
    		leftpicture=hotnews.get(0);
		}
    	//hotNews.remove(0);
    	model.addObject("hotnews", hotnews);
    	model.addObject("leftpicture", leftpicture);
    	model.addObject("list", list);
//    	活动
    	List<Activitydetailinfo> allNewActivities=activitydetailinfoService.findNewActiveInfo();
    	List<Activitydetailinfo> allActivitiyAndPicture=new ArrayList<Activitydetailinfo>();
    	for(Activitydetailinfo activitydetailinfo:allNewActivities){
    		Integer activityId=activitydetailinfo.getId();
    		List<Activepicutre> activepicutre=activepicutreService.selectPictureByActivityId(activityId);
    		if(activepicutre.size()>0){
    			model.addObject("onePicture", activepicutre.get(0));
    			 activitydetailinfo.setActiveimageurl(activepicutre.get(0).getActiveimageurl());

    			 allActivitiyAndPicture.add(activitydetailinfo);
             }
    	 }
    	model.addObject("allActivitiyAndPicture", allActivitiyAndPicture);
    	model.setViewName("front/index");
        return model;
    }
    @RequestMapping("/backhome")
    public String backend(){
    	return "backstage/index";
    }
    @RequestMapping("/register")
    public String register(){
        return "backstage/register";
    }
    @RequestMapping("/edu")
    public String edu(){
        return "front/educational/edunews";
    }
    @RequestMapping("/login")
    public String login(){
    	return "backstage/jsp/ManagerInfo/ManagerInfo_login";
    }
    
    /*平层路径访问*/
    @RequestMapping("/gotoFront/{page}")
    public String gotoFront(@PathVariable String page){
        return "front/"+page;
    }
    /*平层路径访问*/
    @RequestMapping("/gotoBackstage/{page}")
    public String gotoBackstage(@PathVariable String page){
        return "backstage/"+page;
    }
    
    /*两层路径访问*/
    @RequestMapping("/gotoFront/{url}/{page}")
    public String gotoFront(@PathVariable String url,@PathVariable String page){
        return "front/"+url+"/"+page;
    }
    /*两层路径访问*/
    @RequestMapping("/gotoBackstage/{url}/{page}")
    public String gotoBackstage(@PathVariable String url,@PathVariable String page){
        return "backstage/"+url+"/"+page;
    }
    
    @RequestMapping("/gotoBackstage/{url1}/{url2}/{url3}")
    public String gotoBackstage(@PathVariable String url1,@PathVariable String url2,@PathVariable String url3){
        return "backstage/"+url1+"/"+url2+"/"+url3;
    }
    
    @RequestMapping("/gotoFront/{url1}/{url2}/{url3}")
    public String gotoFront(@PathVariable String url1,@PathVariable String url2,@PathVariable String url3){
        return "front/"+url1+"/"+url2+"/"+url3;
    }
    
}
