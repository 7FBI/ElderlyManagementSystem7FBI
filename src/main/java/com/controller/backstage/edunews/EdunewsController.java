package com.controller.backstage.edunews;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
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
import com.service.EdunewsService;

@Controller
@RequestMapping("/backstage/edu")
public class EdunewsController {

	@Autowired
	@Qualifier("edunewsService")
	private EdunewsService edunewsService;
	//查询所有
	@RequestMapping("/alledu")
	public ModelAndView selectAllEdunews(){
		List <Edunews> alledunews=edunewsService.selectAllEdu();
		ModelAndView modelAndView =new ModelAndView();
		modelAndView.addObject("alledunews", alledunews);
		modelAndView.setViewName("/backstage/alleduinfo");
		return modelAndView;
	}
	//添加
	@RequestMapping("/insertedu")
	
	public String insertEdunews(@RequestParam("file") CommonsMultipartFile file,Edunews edunews,
			HttpServletRequest request) throws IOException{
		if (file != null ) {
			String fileName = new String(file.getOriginalFilename().getBytes("iso-8859-1"), "utf-8");
			System.out.println("原始文件名:" + fileName);
			String newFileName = UUID.randomUUID() + fileName;
			
			String uploadPath = request.getSession().getServletContext().getRealPath("/resources");
			String endPath="/upload/backstage/";
			String path = uploadPath+endPath + File.separator + newFileName;
			//存入数据库在路径
			String sqlPath=endPath+File.separator+ newFileName;
			File newFile = new File(path);
			edunews.setEduurl(sqlPath);
			
			System.out.println("------文件路径:" + newFile.getPath());
			file.transferTo(newFile);
		}
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
	public String updateEdunews(Edunews edunews){
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
