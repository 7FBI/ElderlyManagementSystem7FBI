package com.controller;

import org.springframework.stereotype.Controller;
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
}
