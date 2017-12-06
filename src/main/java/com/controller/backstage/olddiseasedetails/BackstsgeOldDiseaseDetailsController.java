package com.controller.backstage.olddiseasedetails;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bean.OldDiseasedetails;
import com.bean.OldDiseaselibrary;
import com.bean.OldSickness;
import com.service.OldDiseasedetailsService;
import com.service.OldDiseaselibraryService;
import com.service.OldSicknessService;

@Controller
@RequestMapping("/backstageOldDiseasedetails")
public class BackstsgeOldDiseaseDetailsController {
	@Autowired
	@Qualifier("oldDiseasedetailsService")
	private OldDiseasedetailsService oldDiseasedetailsService;
	@Autowired
	@Qualifier("oldDiseaselibraryService")
	private OldDiseaselibraryService oldDiseaselibraryService;
	@Autowired
	@Qualifier("oldSicknessService")
	private OldSicknessService oldSicknessService;

	@RequestMapping("/query")
	public ModelAndView getOldDiseasedetail(int id) {
		OldDiseasedetails oldDiseasedetails = oldDiseasedetailsService.selectByPrimaryKey(id);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("oldDiseasedetails", oldDiseasedetails);
		modelAndView.setViewName("front/getOldSickness");
		return modelAndView;
	}

	@RequestMapping("/querys")
	// 查询UID账号的所有病例记录
	public ModelAndView oldDiseasedetails(@ModelAttribute("uid") String uid) {
		// String uid=(String) request.getSession().getAttribute("uid");
		List<OldDiseasedetails> oldDiseasedetails = oldDiseasedetailsService.selectOldDiseasedetailsByUid(uid);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("oldDiseasedetails", oldDiseasedetails);
		modelAndView.addObject("uid", uid);
		/* modelAndView.setViewName("front/getoldDiseasedetails"); */
		modelAndView.setViewName("backstage/olduserdisease");
		return modelAndView;
	}

	@RequestMapping("/addjsp")
	// 添加病例
	public ModelAndView addOldDiseasedetailsjsp(String uid) {
		List<OldDiseaselibrary> listOldDiseaselibraries = oldDiseaselibraryService.findAllDiseaselibrary();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("listOldlib", listOldDiseaselibraries);
		modelAndView.addObject("uid", uid);
		modelAndView.setViewName("backstage/addolddiseasedetail");
		return modelAndView;

	}

	@RequestMapping("/add")
	// 添加病例
	public String addOldDiseasedetails(RedirectAttributes model, OldDiseasedetails oldDiseasedetail,String diseaselist) {
		OldDiseasedetails oldDiseasedetails = oldDiseasedetail;
		oldDiseasedetailsService.addOldDiseasedetail(oldDiseasedetails);
		if(oldDiseasedetails.getId()!=null&&diseaselist!=null&&diseaselist!=""){
			String str[]=diseaselist.split(",");
			for(String name:str){
				OldDiseaselibrary oldDiseaselibrary=oldDiseaselibraryService.getDiseaseIdByName(name);
				if(oldDiseaselibrary!=null){
					OldSickness oldSickness = new OldSickness();
					oldSickness.setDetailid(oldDiseasedetails.getId());
					oldSickness.setDid(oldDiseaselibrary.getId());
					oldSicknessService.insertSelective(oldSickness);
				}			
			}
		}
		
		model.addFlashAttribute("uid", oldDiseasedetail.getUid());
		   return "redirect:/backstageOldDiseasedetails/querys";

	}

	@RequestMapping("/remove")
	// 删除病例记录
	public String deleteOldDiseasedetails(RedirectAttributes model, Integer id, String uid) {
		oldDiseasedetailsService.deleteByPrimaryKey(id);
		model.addFlashAttribute("uid", uid);
		return "redirect:/backstageOldDiseasedetails/querys";
	}

	@RequestMapping("/updatejsp")
	// 更新病例记录
	public ModelAndView updateOldDiseasedetailsjsp(Integer id, String uid) {
		ModelAndView modelAndView = new ModelAndView();
		OldDiseasedetails listOldDiseasedetail = oldDiseasedetailsService.selectByPrimaryKey(id);
		List<OldSickness> listOldSicknesses=oldSicknessService.selectOldSicknesses(id);
		if(listOldSicknesses!=null){
			 String diseasename=null;
		for(OldSickness OldSickness:listOldSicknesses){
				  
			for(OldDiseaselibrary oldDiseaselibrary: OldSickness.getListOldDiseaselibraries())
				if(diseasename==null){
					diseasename=oldDiseaselibrary.getDiseasename();
				}else{
					diseasename=diseasename+","+oldDiseaselibrary.getDiseasename();	
				}
				
			}
		modelAndView.addObject("diseasename", diseasename);	  
		}		
		modelAndView.addObject("listOldDiseasedetail", listOldDiseasedetail);	
		modelAndView.addObject("uid", uid);
		modelAndView.setViewName("backstage/updateolddiseasedetail");
		return modelAndView;
	}

	@RequestMapping("/olddiseaselibraryNamecheck")
	@ResponseBody
	// 查询病库
public Boolean olddiseaselibraryNameCheck(HttpServletRequest request) {	
	String name = request.getParameter("search-name");
  OldDiseaselibrary oldDiseaselibrary=oldDiseaselibraryService.getDiseaseIdByName(name);
		if (oldDiseaselibrary != null) {
		   return true;
		}else{
			 return false;	
		}
	}
	@RequestMapping("/olddiseaselibraeycheck")
	@ResponseBody
	// 查询病库
public List<String> olddiseaselibraeycheck(HttpServletRequest request) {		
		if (request.getParameter("search-text") != null) {
			String key = request.getParameter("search-text");
			List<OldDiseaselibrary> listOldDiseaselibraries = oldDiseaselibraryService.selectDiseaselibrary(key);
			if(!listOldDiseaselibraries.isEmpty()){
				List<String> list=new ArrayList<String>();
				for(OldDiseaselibrary oldDiseaselibrary:listOldDiseaselibraries){
					list.add(oldDiseaselibrary.getDiseasename());
				}
				
				  return list;
			}else{
				 return null;
			}
				  
			}else {
				 return null;
			}	
		 
	}

	@RequestMapping("/update")
	// 更新病例记录
	public String updateOldDiseasedetails(RedirectAttributes model, OldDiseasedetails oldDiseasedetail,String diseaselist) {
		oldDiseasedetailsService.updateByPrimaryKeySelective(oldDiseasedetail);
		if(oldDiseasedetail.getId()!=null&&diseaselist!=null&&diseaselist!=""){
		oldSicknessService.deleteOldSicknessByoldDiseasedetailId(oldDiseasedetail.getId());
			String str[]=diseaselist.split(",");
			for(String name:str){
				OldDiseaselibrary oldDiseaselibrary=oldDiseaselibraryService.getDiseaseIdByName(name);
				if(oldDiseaselibrary!=null){
					OldSickness oldSickness = new OldSickness();
					oldSickness.setDetailid(oldDiseasedetail.getId());
					oldSickness.setDid(oldDiseaselibrary.getId());
					oldSicknessService.insertSelective(oldSickness);
				}			
			}
		}
		
		model.addFlashAttribute("uid", oldDiseasedetail.getUid());
		return "redirect:/backstageOldDiseasedetails/querys";
	}
}
