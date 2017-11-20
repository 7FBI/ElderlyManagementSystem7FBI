package com.controller.collection;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bean.OldUsers;
import com.bean.Oldcollection;
import com.bean.Products;
import com.service.OldCollectionService;

@Controller
@RequestMapping("/front/collection")
public class OldCollectionController {
	@Autowired
	private OldCollectionService oldcollectionService;
	
	@RequestMapping("/select")
	public boolean collection2(int pid,HttpServletRequest request) {
		if(request.getSession().getAttribute("oldUsers")==null){
			return false;
		}
		OldUsers oldUsers =(OldUsers) request.getSession().getAttribute("oldUsers");
		Oldcollection collection =new Oldcollection();
		collection.setUid(oldUsers.getUid());
		collection.setPid(pid);
		if(oldcollectionService.select(collection)==null){
			return false;
		}else {
			return true;
		}
		
	}
	
	@RequestMapping("/insert_or_delete")
	@ResponseBody
	public String collection(Integer pid,HttpServletRequest request) {
		if(request.getSession().getAttribute("oldUsers")==null){
			return "login";
		}
		OldUsers oldUsers =(OldUsers) request.getSession().getAttribute("oldUsers");
		Oldcollection collection =new Oldcollection();
		collection.setUid(oldUsers.getUid());
		collection.setPid(pid);
		if(oldcollectionService.select(collection)==null){
			oldcollectionService.insertSelective(collection);
			return "true";
		}else {
			oldcollectionService.delete(collection);
			return "false";
		}
		
	}
	@RequestMapping("/delete")
	public String collection_delete(Integer pid,HttpServletRequest request) {
		if(request.getSession().getAttribute("oldUsers")==null){
			return "front/login";
		}
		OldUsers oldUsers =(OldUsers) request.getSession().getAttribute("oldUsers");
		Oldcollection collection =new Oldcollection();
		collection.setUid(oldUsers.getUid());
		collection.setPid(pid);
		if(oldcollectionService.select(collection)==null){
			oldcollectionService.insertSelective(collection);
			return "";
		}else {
			oldcollectionService.delete(collection);
			return "redirect:/front/collection/select_list";
		}
		
	}
	
	@RequestMapping("/select_list")
	public String selectList(HttpServletRequest request){
		if(request.getSession().getAttribute("oldUsers")==null){
			return "front/login";
		}
		else {
			List<Products> list = oldcollectionService.selectList(((OldUsers)request.getSession().getAttribute("oldUsers")).getUid());
			for(int i=0;i<list.size();i++){
				System.out.println("______________________"+list.get(i).getPname()+","+list.get(i).getId());
			}
			request.setAttribute("list", list);
			return "front/oldcollection";
		}
	
	}
	
	
	
}
