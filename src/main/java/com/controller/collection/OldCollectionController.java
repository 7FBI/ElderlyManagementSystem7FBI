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
	private OldCollectionService oldCollectionService;
	
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
		if(oldCollectionService.select(collection)==null){
			oldCollectionService.insertSelective(collection);
			return "true";
		}else {
			oldCollectionService.delete(collection);
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
		if(oldCollectionService.select(collection)==null){
			oldCollectionService.insertSelective(collection);
			return "";
		}else {
			oldCollectionService.delete(collection);
			return "redirect:/front/collection/select_list";
		}
		
	}
	
	@RequestMapping("/select_list")
	public String selectList(HttpServletRequest request){
		if(request.getSession().getAttribute("oldUsers")==null){
			return "front/login";
		}
		else {
			List<Products> list = oldCollectionService.selectList(((OldUsers)request.getSession().getAttribute("oldUsers")).getUid());
			for(int i=0;i<list.size();i++){
				System.out.println("______________________"+list.get(i).getPname()+","+list.get(i).getId());
			}
			request.setAttribute("list", list);
			return "front/oldcollection";
		}
	
	}
	
	
	
}
