package com.controller.backstage.olddiseaselibrary;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bean.Matchdisease;
import com.bean.OldDiseaselibrary;
import com.bean.Products;
import com.service.MatchdiseaseService;
import com.service.OldDiseaselibraryService;
import com.service.ProductsService;

@Controller
@RequestMapping("/oldDiseaselibrary")
public class OldDiseaselibraryBackStageController {
   @Autowired
   @Qualifier("oldDiseaselibraryService")
   private OldDiseaselibraryService oldDiseaselibraryService;
   @Autowired
   @Qualifier("productsService")
   private ProductsService  productsService;
   @Autowired
   @Qualifier("matchdiseaseService")
   private MatchdiseaseService  matchdiseaseService;
   @RequestMapping("/matchproduct")
 public ModelAndView getOldDiseaselibrary(@ModelAttribute("id") Integer id){
   ModelAndView modelAndView=new ModelAndView();
   List<Matchdisease> listMatchdiseases =matchdiseaseService.selectByDiseasesId(id);
   List<Products> listProducts=productsService.selectProductsByTid();
   modelAndView.addObject("listMatchdiseases",listMatchdiseases);
   System.out.println(listMatchdiseases.size()+"kacbjewsvbesb");
   modelAndView.addObject("listProducts",listProducts);
   modelAndView.addObject("id",id);
   modelAndView.setViewName("/backstage/matchproducts");
   return modelAndView;
}
   
   @RequestMapping("/querys")
//   public ModelAndView getOldDiseaselibrary(){
//	   ModelAndView modelAndView=new ModelAndView();
//	   List<OldDiseaselibrary> listOldDiseaselibraries=oldDiseaselibraryService.selectAllDiseaselibrary();
//	   modelAndView.addObject("listOldDiseaselibraries",listOldDiseaselibraries);
//	   modelAndView.setViewName("/backstage/olduserdiseaselibary");
//	   return modelAndView;
//   }
   public ModelAndView getOldDiseaselibrary(HttpServletRequest request){
	   ModelAndView modelAndView=new ModelAndView();
	   Map<String, Object> map = new HashMap<String, Object>();
		Integer max = 6;
		Integer page = 0;
		Integer counts = 0;
		if (request.getParameter("page") != null) {
			page = Integer.valueOf(request.getParameter("page"));
		}
		if (page <= 0) {
			page = 0;
		}
		counts = oldDiseaselibraryService.selectDiseaselibraryCount() / max;
		System.out.println(counts);
		if (counts <= 0) {
			counts = 0;
		}
		if (page >= counts) {
			page = counts;
		}
		map.put("page", page * max);
		map.put("max", max);
	   List<OldDiseaselibrary> listOldDiseaselibraries=oldDiseaselibraryService.selectAllDiseaselibrary(map);
	   modelAndView.addObject("listOldDiseaselibraries",listOldDiseaselibraries);
	   modelAndView.addObject("page", page);
	   modelAndView.addObject("counts", counts);	
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
   @RequestMapping("/addMacth")
   public String addMacth(Matchdisease matchdisease, RedirectAttributes model){
	   
	   matchdiseaseService.insertMatch(matchdisease);
	   model.addFlashAttribute("id", matchdisease.getDid());
	   return "redirect:/oldDiseaselibrary/matchproduct";
   }
   @RequestMapping("/removeMacth")
   public String removeMacth(Integer mid,Integer did, RedirectAttributes model){
	   
	   matchdiseaseService.removeMatch(mid);
	   model.addFlashAttribute("id",did);
	   return "redirect:/oldDiseaselibrary/matchproduct";
   }
}
