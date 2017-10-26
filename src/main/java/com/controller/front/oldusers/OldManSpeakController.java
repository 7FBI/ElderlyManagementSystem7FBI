package com.controller.front.oldusers;

import java.io.File;
import java.net.URLEncoder;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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
import org.springframework.web.servlet.ModelAndView;

import com.bean.OldUsers;
import com.bean.Speak;
import com.service.OldUsersService;
import com.service.SpeakService;
import com.sun.org.apache.bcel.internal.generic.NEW;

@Controller
@RequestMapping("/front/oldUsers/speak")
public class OldManSpeakController {

	@Autowired
	@Qualifier("speakService")
	private SpeakService speakService;

	@Autowired
	@Qualifier("oldUsersService")
	private OldUsersService oldUsersService;
	
	//留言板
	@RequestMapping("/getMessage")
	public ModelAndView getMessage(HttpServletRequest request){
		ModelAndView view=new ModelAndView();
		List<Speak> list=null;
		view.setViewName("front/oldUser/speak");
		if (request.getParameter("uidfoot")==null|request.getParameter("uidfoot")=="") {
			view.addObject("message", list);
			return view;
		}
		String uh=request.getParameter("uidfoot");
		list=speakService.selectByUidFoot(uh);
		view.addObject("message", list);
		view.addObject("oldUser",oldUsersService.selectByUid(uh));
		return view;
	}
	
	//自己的留言板(需要先登录)
	@RequestMapping("/myMessage")
	public ModelAndView myMessage(HttpServletRequest request){
		OldUsers users=(OldUsers) request.getSession().getAttribute("oldUser");
		request.setAttribute("uidfoot", users.getUid());
		return getMessage(request);
	}

	//留言(文字)
	@RequestMapping("/addText")
	@ResponseBody
	public String addText(HttpServletRequest request,Speak speak){
		String value=null;
		String uidfoot=null;
		if (request.getSession().getAttribute("oldMan")==null) {
			return "请先登录";
		}
		OldUsers users=(OldUsers) request.getSession().getAttribute("oldUsers");
		if (users.getUid().equals(speak.getUidfoot())) {
			return "不能自己添加留言";
		}
		if (request.getParameter("uidfoot")!=null&request.getParameter("uidfoot")!="") {
			uidfoot=request.getParameter("uidfoot");
		}
		if (request.getParameter("content")!=null&request.getParameter("content")!="") {
			value=request.getParameter("content");
		}
		Speak speaks=new Speak();
		speaks.setUidhead(users.getUid());
		speaks.setContent(value);
		speaks.setSpeaktime(new Date());
		speaks.setUidfoot(uidfoot);
		speaks.setType(0);
		speaks.setStatus(0);
		
		speakService.insertSelective(speaks);
		
		return "true";
	}
	
	//留言图片
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
	
	/*public Date getNewDate(){
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		String str=null;
		Date date=new Date();
		str=sdf.format(date);
		Date d=null;
		try {
			d = sdf.parse(str);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return d;
	}*/
	
}
