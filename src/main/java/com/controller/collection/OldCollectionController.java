package com.controller.collection;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.bean.OldUsers;
import com.bean.Oldcollection;
import com.service.OldCollectionService;

@Controller
@RequestMapping("/backstage/collection")
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
	public boolean collection(int pid,HttpServletRequest request) {
		if(request.getSession().getAttribute("oldUsers")==null){
			return false;
		}
		OldUsers oldUsers =(OldUsers) request.getSession().getAttribute("oldUsers");
		Oldcollection collection =new Oldcollection();
		collection.setUid(oldUsers.getUid());
		collection.setPid(pid);
		if(oldcollectionService.select(collection)==null){
			oldcollectionService.insertSelective(collection);
			return true;
		}else {
			oldcollectionService.delete(collection);
			return false;
		}
		
	}
}
