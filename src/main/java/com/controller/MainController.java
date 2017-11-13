package com.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Edunews;
import com.service.EdunewsService;

/**
 * Created by Administrator on 2017/9/28.
 */
@Controller
public class MainController {
	@Autowired
	@Qualifier("edunewsService")
	private EdunewsService edunewsService;
    @RequestMapping("/")
    public String homes(Model model){
    	List<Edunews> hotfivenews=edunewsService.findHotNews();
    	List<Edunews> hotnews=new ArrayList<Edunews>();
    	for(Edunews edunews:hotfivenews){
    		String newcontent=edunews.getEducontent();
    		edunews.setEducontent(newcontent.substring(0, 5));
    		hotnews.add(edunews);
    	}
    	Edunews leftpicture=hotnews.get(0);
    	//hotNews.remove(0);
    	model.addAttribute("hotnews", hotnews);
    	model.addAttribute("leftpicture", leftpicture);
        return "front/index";
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
