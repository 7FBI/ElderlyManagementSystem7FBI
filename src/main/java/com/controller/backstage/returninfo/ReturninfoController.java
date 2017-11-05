package com.controller.backstage.returninfo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bean.Returninfo;
import com.service.ReturninfoService;
@Controller
@RequestMapping("/returninfo")
public class ReturninfoController {
 @Autowired
 @Qualifier("returninfoService")
 private ReturninfoService returninfoService;
 @RequestMapping("/querys")
 public ModelAndView getReturninfoByUid(@ModelAttribute("uid") String uid){
	 ModelAndView modelAndView=new ModelAndView();
	 List<Returninfo> listReturninfos= returninfoService.selectByUid(uid);
	 modelAndView.addObject("listReturninfos",listReturninfos);
	 modelAndView.addObject("uid",uid);
	 modelAndView.setViewName("backstage/returnviewinfo");
	 return modelAndView;
 }
 
 
 @RequestMapping("/addgojsp")
 public ModelAndView addReturninfo(String uid){
	 ModelAndView modelAndView=new ModelAndView();
	 modelAndView.addObject("uid",uid);
	 modelAndView.setViewName("backstage/addreturninfo");
	 return modelAndView;
 }
 
 
 @RequestMapping("/add")
 public String addReturninfoByUid(Returninfo returninfo,RedirectAttributes mAttributes){
	 returninfoService.insertSelective(returninfo);
	 mAttributes.addFlashAttribute("uid",returninfo.getUid());
	 return "redirect:/returninfo/querys";
 }
 
 @RequestMapping("/remove")
 public String deleteReturninfoById(Integer id,String uid,RedirectAttributes mAttributes){
    returninfoService.deleteByPrimaryKey(id);
    mAttributes.addFlashAttribute("uid",uid);
	 return "redirect:/returninfo/querys";
 }
 @RequestMapping("/updatejsp")
 public ModelAndView updateReturninfoByIdjsp(Integer id){
	 ModelAndView modelAndView=new ModelAndView();
	 Returninfo returninfo=returninfoService.selectByPrimaryKey(id);
	 modelAndView.addObject("returninfo",returninfo);
	 modelAndView.setViewName("backstage/updatereturninfo");
	 return modelAndView;
 }
 @RequestMapping("/update")
 public String updateReturninfoById(Returninfo returninfo,RedirectAttributes mAttributes){
	 returninfoService.updateByPrimaryKeySelective(returninfo);
	 mAttributes.addFlashAttribute("uid",returninfo.getUid());
	 return "redirect:/returninfo/querys";
 }
}
