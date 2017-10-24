package com.controller.front.oldusers;

import java.io.File;
import java.net.URLEncoder;
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
import org.springframework.web.multipart.MultipartFile;

import com.bean.OldUsers;
import com.bean.Speak;
import com.service.SpeakService;
import com.sun.org.apache.bcel.internal.generic.NEW;

@Controller
@RequestMapping("/front/oldman/speak")
public class OldManSpeakController {

	@Autowired
	@Qualifier("speakService")
	private SpeakService speakService;


	@RequestMapping("/addText")
	@ResponseBody
	public String addText(HttpServletRequest request){
		String value=null;
		String uidfoot=null;
		OldUsers users=new OldUsers();
		users.setUid("clong123");
		/*OldUsers users=(OldUsers) request.getSession().getAttribute("oldMan");*/
		if (request.getParameter("uidfoot")!=null&request.getParameter("uidfoot")!="") {
			uidfoot=request.getParameter("uidfoot");
		}
		if (request.getParameter("value")!=null&request.getParameter("value")!="") {
			value=request.getParameter("value");
		}
		Speak speak=new Speak();
		speak.setUidhead(users.getUid());
		speak.setContent(value);
		speak.setSpeaktime(new Date());
		speak.setUidfoot(uidfoot);
		speak.setType(0);
		speak.setStatus(0);
		
		speakService.insertSelective(speak);
		
		return "true";
	}
	
	
	@RequestMapping("/addImage")
	@ResponseBody
	public String  addImage(@RequestParam("file") MultipartFile file,HttpServletRequest request) throws Exception{
		if (file!=null) {
			int xx=0;
				xx++;
				String fileName=new String(file.getOriginalFilename().getBytes("iso-8859-1"),"utf-8");
				String newFileName = UUID.randomUUID() + fileName;
				/*设置传递到何处*/
				String pathhead=request.getSession().getServletContext().getRealPath("/files/");
	            String uploadPath = request.getSession().getServletContext().getRealPath("/front/oldman/speak");
	            String path = pathhead+ uploadPath + File.separator + newFileName;
	            File fileLoad=new File(uploadPath);
	            if (!fileLoad.isDirectory()) {
					fileLoad.mkdirs();
				}
	            File newImage=new File(path);
	            System.out.println("------图片路径:"+newImage.getPath());
	            file.transferTo(newImage);
	            
	    		String uidfoot=null;
	    		OldUsers users=new OldUsers();
	    		users.setUid("clong123");
	    		/*OldUsers users=(OldUsers) request.getSession().getAttribute("oldMan");*/
	    		if (request.getParameter("uidfoot")!=null&request.getParameter("uidfoot")!="") {
	    			uidfoot=request.getParameter("uidfoot");
	    		}
	    		Speak speak=new Speak();
	    		speak.setUidhead(users.getUid());
	    		speak.setContent(uploadPath);
	    		speak.setSpeaktime(new Date());
	    		speak.setUidfoot(uidfoot);
	    		speak.setType(1);
	    		speak.setStatus(0);
	            
	    		speakService.insertSelective(speak);
			
			return "true";
		}else {
			return "图片发送失败";
		}
	}
	
	
	/*@RequestMapping("/chatRecord")
	@ResponseBody
	public List<Speak> chatRecord(HttpServletRequest request){
		List<Speak> list=null;
		OldUsers users=null;
		 * String uidfoot=null;
		if (request.getSession().getAttribute("oldMan")!=null) {
			users=(OldUsers) request.getSession().getAttribute("oldMan");
		}
		if (users==null) {
			return null;
		}
		String uidhead=null;
		String uidfoot=null;
		
		if (request.getParameter("uidhead")==null |request.getParameter("uidhead")=="") {
			return null;
		}
		if (request.getParameter("uidfoot")==null |request.getParameter("uidfoot")=="") {
			return null;
		}
		uidhead=request.getParameter("uidhead");
		uidfoot=request.getParameter("uidfoot");
		Map<String, String> map=new HashMap<String, String>();
		map.put("uidhead", uidhead);
		map.put("uidfoot", uidfoot);
		list=speakService.selectByUidHeadAndFoot(map);
		return list;
	}*/
	
	/*public String getNewDate(){
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String str=null;
		Date date=new Date();
		str=sdf.format(date);
		return str;
	}*/
	
}
