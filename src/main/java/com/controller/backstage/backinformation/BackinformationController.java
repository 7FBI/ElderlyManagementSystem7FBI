package com.controller.backstage.backinformation;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bean.Backinformation;
import com.bean.Ceoinfo;
import com.service.BackinformationService;

@Controller
@RequestMapping("/backstage/backinformation")
public class BackinformationController {
	@Resource
	private BackinformationService backinformationService;
	@RequestMapping("/selectByAuthor")
	@ResponseBody
	public List<Backinformation> selectByAuthor(HttpServletRequest request){
		 List<Backinformation> list = backinformationService.selectByAuthor();
		 return list;
		}
	
	@RequestMapping("/selectByAuthor2")
	public String selectByAuthor2(HttpServletRequest request){
		Ceoinfo ceoinfo=(Ceoinfo) request.getSession().getAttribute("ceoinfo");
		 List<Backinformation> list = backinformationService.selectAllByAuthor(ceoinfo.getId());
		 request.setAttribute("list", list);
		 return "backstage/backinformation_index";
		}
	
	@RequestMapping("/selectByPrimaryKey")
	public String selectByPrimaryKey(int id,HttpServletRequest request){
		Backinformation backinformation = backinformationService.selectByPrimaryKey(id);
		request.setAttribute("backinformation", backinformation);
		return "backstage/backinformation_qerry";
	}
	
	@RequestMapping("/selectByPrimaryKey2")
	public String selectByPrimaryKey2(int id,HttpServletRequest request){
		Backinformation backinformation = backinformationService.selectByPrimaryKey(id);
		request.setAttribute("backinformation", backinformation);
		return "backstage/backinformation_update";
	}
	
	@RequestMapping("/updateByPrimaryKey")
	public String updateByPrimaryKey(Backinformation backinformation,HttpServletRequest request){
		backinformationService.updateByPrimaryKeySelective(backinformation);
		return "redirect:/backstage/backinformation/selectByAuthor2";
		}
	
	@RequestMapping("/insert")
	public String insert(Backinformation backinformation,HttpServletRequest request){
		backinformation.setTime(new Date());
		Ceoinfo ceoinfo=(Ceoinfo) request.getSession().getAttribute("ceoinfo");
		backinformation.setAuthor(ceoinfo.getId());
		backinformationService.insertSelective(backinformation);
		return "redirect:/backstage/backinformation/selectByAuthor2";
		}
	
	@RequestMapping("/deleteByPrimaryKey")
	public String deleteByPrimaryKey(int id,HttpServletRequest request){
		backinformationService.deleteByPrimaryKey(id);
		return "redirect:/backstage/backinformation/selectByAuthor2";
		
		
	}
}
