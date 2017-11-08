package com.controller.backstage.edunews;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Edunews;
import com.others.file.UploadImage;
import com.service.EdunewsService;

@Controller
@RequestMapping("/backstage/edu")
public class EdunewsController {

	@Autowired
	@Qualifier("edunewsService")
	private EdunewsService edunewsService;
	//查询所有
	@RequestMapping("/alledu")
	public ModelAndView selectAllEdunews(HttpServletRequest request){
		ModelAndView modelAndView =new ModelAndView();
//		if(request.getSession().getAttribute("managerinfo")==null){
//			modelAndView.setViewName("backstage/loginWTF");
//			return modelAndView;
//		}
		modelAndView.setViewName("/backstage/alleduinfo");
		Map<String,Object>map=new HashMap<String, Object>();
		Integer max=5;
		Integer page=0;
		Integer counts=0;
		//当前页
		if(request.getParameter("page")!=null){
			page=Integer.valueOf(request.getParameter("page"));
		}
		if(page<=0){
			page=0;
		}
		counts=edunewsService.eduCount()/max;
		if(counts<=0){
			counts=0;
		}
		if(page>=counts){
			page=counts;
		}
		map.put("page", page*max);
		map.put("max", max);
//		List <Edunews> alledunews=edunewsService.selectAllEdu();
		List <Edunews> alledunews=edunewsService.findAllEduNews(map);
		modelAndView.addObject("alledunews", alledunews);
		modelAndView.addObject("page", page);
		modelAndView.addObject("counts", counts);
		return modelAndView;
	}
	//添加
	@RequestMapping("/insertedu")
	
	public String insertEdunews(@RequestParam("file") CommonsMultipartFile file,Edunews edunews,
			HttpServletRequest request) throws IOException{
		String newuserUrl = UploadImage.addImage(file, "/backstage/edunews", request);
		System.out.println(newuserUrl);
		edunews.setEduurl(newuserUrl);
		edunews.setEdutime(new Date());
		edunewsService.addEdu(edunews);
//		ModelAndView modelAndView =new ModelAndView();
//		List <Edunews> alleducational=edunewsService.selectAllEdu();
//		modelAndView.addObject("alleducational", alleducational);
//		modelAndView.setViewName("/backstage/alleduinfo");
		return "redirect:/backstage/edu/alledu.action";
		
	}
	//删除
	@RequestMapping("/deleteedu")
	public String deleteEdunews(Integer id){
		edunewsService.deleteEduById(id);
		
		return "redirect:/backstage/edu/alledu.action";
		
	}
	//修改
	@RequestMapping("/updateedu")
	public String updateEdunews(@RequestParam("file") CommonsMultipartFile file,Edunews edunews,HttpServletRequest request) throws IOException{
		String newuserUrl = UploadImage.addImage(file, "/backstage/edunews", request);
		System.out.println(newuserUrl);
		edunews.setEduurl(newuserUrl);
		edunews.setEdutime(new Date());
		edunewsService.updateEduById(edunews);;
		/*ModelAndView modelAndView =new ModelAndView();
		List <Edunews> alleducational=edunewsService.selectAllEdu();
		modelAndView.addObject("alleducational", alleducational);
		modelAndView.setViewName("/backstage/alleduinfo");*/
		return "redirect:/backstage/edu/alledu.action";
		
	}
	//更据ID查询
	@RequestMapping("/selectedubyid")
	public ModelAndView selecteEdunewsById(Integer id){
		Edunews oneEducational=edunewsService.selectEduById(id);
		ModelAndView modelAndView =new ModelAndView();
		modelAndView.addObject("oneEducational", oneEducational);
		modelAndView.setViewName("/backstage/updateedu");
		return modelAndView;
		
	}
	
	@RequestMapping("/selectedudetailbyid")
	public ModelAndView selecteEdudetailById(Integer id){
		Edunews oneEduDetail=edunewsService.selectEduById(id);
		ModelAndView modelAndView =new ModelAndView();
		modelAndView.addObject("oneEduDetail", oneEduDetail);
		modelAndView.setViewName("/backstage/edudetails");
		return modelAndView;
		
	}
//	按条件查询
@RequestMapping("/selectEduByConditions")
 public ModelAndView selectEduByConditions(String findEduByConditions){
	List <Edunews> alledunews=edunewsService.queryEduByConditions(findEduByConditions);
	ModelAndView modelAndView =new ModelAndView();
	modelAndView.addObject("alledunews", alledunews);
	modelAndView.setViewName("/backstage/alleduinfo");
	return modelAndView;
	
}
}
