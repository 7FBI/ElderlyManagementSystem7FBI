package com.controller.backstage.olddiseaselibrary;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bean.OldDiseaselibrary;
import com.service.OldDiseaselibraryService;

@Controller
@RequestMapping("/oldDiseaselibrary")
public class OldDiseaselibraryBackStageController {
   @Autowired
   @Qualifier("oldDiseaselibraryService")
   private OldDiseaselibraryService oldDiseaselibraryService;
   @RequestMapping("/querys")
   public ModelAndView getOldDiseaselibrary(){
	   ModelAndView modelAndView=new ModelAndView();
	   List<OldDiseaselibrary> listOldDiseaselibraries=oldDiseaselibraryService.selectAllDiseaselibrary();
	   modelAndView.addObject("listOldDiseaselibraries",listOldDiseaselibraries);
	   modelAndView.setViewName("/backstage/olduserdiseaselibary");
	   return modelAndView;
   }
   
   @RequestMapping("/addjsp")
   public ModelAndView addOldDiseaselibraryJsp(Integer id){
	   ModelAndView modelAndView=new ModelAndView();
	   modelAndView.setViewName("/backstage/adddiseaselibary");
	   return modelAndView;
   }
   @RequestMapping("/add")
   public String addOldDiseaselibrary(OldDiseaselibrary oldDiseaselibrary){
	   ModelAndView modelAndView=new ModelAndView();
	   oldDiseaselibraryService.addDiseaselibrary(oldDiseaselibrary);
	   modelAndView.addObject("mess","添加成功！");
	   return "redirect:/oldDiseaselibrary/querys";
   }
   @RequestMapping("/remove")
   public String deleteOldDiseaselibrary(Integer id){
	   oldDiseaselibraryService.deleteDiseaselibraryById(id);
	   return "redirect:/oldDiseaselibrary/querys";
   }
   
   @RequestMapping("/updatejsp")
   public ModelAndView updateOldDiseaselibraryJsp(Integer id){
	   ModelAndView modelAndView=new ModelAndView();
	   OldDiseaselibrary oldDiseaselibrary=oldDiseaselibraryService.selectByPrimaryKey(id);
	   modelAndView.addObject("oldDiseaselibrary",oldDiseaselibrary);
	   modelAndView.setViewName("/backstage/updatediseaselibary");
	   return modelAndView;
   }
   @RequestMapping("/update")
   public String updateOldDiseaselibrary(OldDiseaselibrary oldDiseaselibrary){
	   oldDiseaselibraryService.updateDiseaselibraryById(oldDiseaselibrary);
	   return "redirect:/oldDiseaselibrary/querys";
   }
}
