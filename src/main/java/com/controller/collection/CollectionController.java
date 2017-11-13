package com.controller.collection;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.Collection;
import com.bean.OldUsers;
import com.service.CollectionService;

@Controller
@RequestMapping("/backstage/collection")
public class CollectionController {
	@Autowired
	private CollectionService collectionService;
	
	@RequestMapping("/select")
	public boolean collection2(int pid,HttpServletRequest request) {
		if(request.getSession().getAttribute("oldUsers")==null){
			return false;
		}
		OldUsers oldUsers =(OldUsers) request.getSession().getAttribute("oldUsers");
		Collection collection =new Collection();
		collection.setUid(oldUsers.getUid());
		collection.setPid(pid);
		if(collectionService.select(collection)==null){
			return false;
		}else {
			return true;
		}
		
	}
	
	@RequestMapping("/insert_or_delete")
	public boolean collection(int pid,HttpServletRequest request) {
		if(request.getSession().getAttribute("oldUsers")==null){
			return false;
		}
		OldUsers oldUsers =(OldUsers) request.getSession().getAttribute("oldUsers");
		Collection collection =new Collection();
		collection.setUid(oldUsers.getUid());
		collection.setPid(pid);
		if(collectionService.select(collection)==null){
			collectionService.insertSelective(collection);
			return true;
		}else {
			collectionService.delete(collection);
			return false;
		}
		
	}
}
