package com.controller.util.shop;

import javax.servlet.http.HttpServletRequest;

import com.bean.OldUsers;
import com.bean.Oldcollection;
import com.service.OldCollectionService;

public class OldCollectionBoolean {

	public static boolean collection2(int pid,HttpServletRequest request,OldCollectionService oldcollectionService) {
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
}
