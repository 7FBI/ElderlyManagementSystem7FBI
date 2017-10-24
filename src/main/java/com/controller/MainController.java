package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2017/9/28.
 */
@Controller
public class MainController {
    @RequestMapping("/")
    public String homes(){
        return "front/index";
    }
    
    @RequestMapping("/gotoFront/{page}")
    public String gotoFront(@PathVariable String page){
        return "front/"+page;
    }
    
    @RequestMapping("/gotoBackstage/{page}")
    public String gotoBackstage(@PathVariable String page){
        return "backstage/"+page;
    }
}
