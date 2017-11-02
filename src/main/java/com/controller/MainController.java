package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Administrator on 2017/9/28.
 */
@Controller
public class MainController {
    @RequestMapping("/")
    public String homes(){
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
