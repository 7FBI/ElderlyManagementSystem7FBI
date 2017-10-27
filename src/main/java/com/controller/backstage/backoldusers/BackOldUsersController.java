package com.controller.backstage.backoldusers;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Localarea;
import com.bean.OldUsers;
import com.converter.DateConverter;
import com.others.md5.Encryption;
import com.service.OldUsersService;

@Controller
@RequestMapping("/oldusers")
public class BackOldUsersController {
	@Autowired
	@Qualifier("oldUsersService")
	private OldUsersService oldUsersService;
	private DateConverter dateConverter;

	@RequestMapping("/insterOldUsers")
	@ResponseBody
	public ModelAndView insterOldUsers(@RequestParam("file") CommonsMultipartFile file,  OldUsers oldUsers,
			HttpServletRequest request) throws IOException {
		// 日期格式转换
		// 进行数据验证
		ModelAndView modelAndView = new ModelAndView();
		OldUsers users = oldUsersService.queryByUid(oldUsers.getUid());
		  System.out.println(users);
		if (users == null ) {
			String fileName = new String(file.getOriginalFilename().getBytes("iso-8859-1"), "utf-8");
			System.out.println("原始文件名:" + fileName);
			String newFileName = UUID.randomUUID() + fileName;
			/*String uploadPath = request.getSession().getServletContext().getRealPath("/resources/upload/backstage");

			String path = uploadPath + File.separator + fileName;
			File newFile = new File(path);
			oldUsers.setUserurl(newFile.getPath());*/
			String uploadPath = request.getSession().getServletContext().getRealPath("/resources");
			String endPath="/upload/backstage/";
			String path = uploadPath+endPath + File.separator + newFileName;
			//存入数据库在路径
			String sqlPath=endPath+File.separator+ newFileName;
			File newFile = new File(path);
			oldUsers.setUserurl(sqlPath);
			
			System.out.println("------文件路径:" + newFile.getPath());
			file.transferTo(newFile);
			// 调用加密方法将密码加密
			String pwd = Encryption.encrypation(oldUsers.getPassword());
			oldUsers.setPassword(pwd);
			/*
			 * String username = new String(oldUsers.getUsername()); String
			 * address = new String(oldUsers.getAddress());
			 */
			String username = new String(oldUsers.getUsername().getBytes("iso-8859-1"),"utf-8");
			oldUsers.setUsername(username);
			String address = new String(oldUsers.getAddress().getBytes("iso-8859-1"),"utf-8");
			oldUsers.setAddress(address);
			
			oldUsersService.insertOldUsers(oldUsers);
			//modelAndView.addObject("err", "");
			List<OldUsers> olduser = oldUsersService.queryUsers();
			modelAndView.addObject("olduser",olduser);
			
			modelAndView.setViewName("backstage/allolduser");
			
		}
//		else{
//			
//			 if (file == null) {
//				// 获取原始文件名，并设置编码为utf-8
//				
//				modelAndView.addObject("err", "请上传头像");
//				modelAndView.setViewName("backstage/register");
//				// 将文件名保存到数据
//				// return "true";
//			 }
		else{
		
			String err = "该用户名已被使用";
			modelAndView.addObject("err", err);
			modelAndView.setViewName("backstage/register");
		}
			 
		return modelAndView;
	}
//查询所有
	@RequestMapping("/queryAllUsers")
	@ResponseBody
	public ModelAndView queryAllUsers() {
		List<OldUsers> olduser = oldUsersService.queryUsers();
		ModelAndView modelAndView=new ModelAndView();
		
//		for(OldUsers user:oldUsers){
//			System.out.println(user);
//		}
		
		modelAndView.addObject("olduser", olduser);
		modelAndView.setViewName("backstage/allolduser");
		return modelAndView;
	}
//根据id查找用户信息
	@RequestMapping(value="/queryUserById")
	@ResponseBody
	public ModelAndView queryUserById(Integer id){
		ModelAndView modelAndView=new ModelAndView();
		OldUsers userbyid=oldUsersService.queryById(id);
		modelAndView.addObject("userbyid", userbyid);
		modelAndView.setViewName("backstage/updateuser");
		return modelAndView;
	}
//根据id修改用户信息
	@RequestMapping(value="/modifyUserById")
	@ResponseBody
	public ModelAndView modifyUserById(@RequestParam("file") CommonsMultipartFile file,OldUsers users,Model model,HttpServletRequest request)throws IOException{
		String fileName = new String(file.getOriginalFilename().getBytes("iso-8859-1"), "utf-8");
		System.out.println("原始文件名:" + fileName);
		String newFileName = UUID.randomUUID() + fileName;
		String uploadPath = request.getSession().getServletContext().getRealPath("/resources");
		String endPath="/upload/backstage/";
		String path = uploadPath+endPath + File.separator + newFileName;
		//存入数据库在路径
		String sqlPath=endPath+File.separator+ newFileName;
		File newFile = new File(path);
		//File newFile = new File(sqlPath);
		users.setUserurl(sqlPath);
		System.out.println("------文件路径:" + newFile.getPath());
		file.transferTo(newFile);
		//转码
		String username = new String(users.getUsername().getBytes("iso-8859-1"),"utf-8");
		users.setUsername(username);
		String address = new String(users.getAddress().getBytes("iso-8859-1"),"utf-8");
		users.setAddress(address);
		
		 oldUsersService.modifyById(users);
		 List<OldUsers> olduser = oldUsersService.queryUsers();
		 ModelAndView modelAndView=new ModelAndView();
		 modelAndView.addObject("olduser", olduser);
		 modelAndView.setViewName("backstage/allolduser");
		 //model.addAttribute("olduser", olduser);
		return modelAndView;
	}
	//根据id删除用户基本信息以及相关的消费信息
	@RequestMapping(value="/deleteUserById")
	@ResponseBody
	public ModelAndView deleteUserById(OldUsers oldUsersid){
		
		 oldUsersService.deleteUserById(oldUsersid);
		 ModelAndView modelAndView=new ModelAndView();
		 List<OldUsers> olduser = oldUsersService.queryUsers();
		 modelAndView.addObject("olduser", olduser);
		 modelAndView.setViewName("backstage/allolduser");
		return modelAndView;
	}
	

	//用户详情信息
		@RequestMapping(value="/queryUserdetail")
		@ResponseBody
		public ModelAndView queryUserDetail(Integer id){
			OldUsers userdetail=oldUsersService.queryById(id);
			/*String imgpath=userdetail.getUserurl();
			userdetail.setUserurl("/resources/upload/backstage/image"+imgpath.substring(91, imgpath.length()));
			System.out.println("/resources/upload/backstage/image"+imgpath.substring(91, imgpath.length()));*/
			ModelAndView modelAndView=new ModelAndView();
			modelAndView.addObject("userdetail", userdetail);
			modelAndView.setViewName("backstage/olduserdetail");
			return modelAndView;
		}
		//按条件查询
		@RequestMapping(value="/selectuserbyconditions")
	/*	@ResponseBody*/
		public ModelAndView selectByConditions(HttpServletRequest request){
			String findbycondition=request.getParameter("findbycondition");
			List<OldUsers> olduser=oldUsersService.queryByConditions(findbycondition);
			/*String imgpath=userdetail.getUserurl();
			userdetail.setUserurl("/resources/upload/backstage/image"+imgpath.substring(91, imgpath.length()));
			System.out.println("/resources/upload/backstage/image"+imgpath.substring(91, imgpath.length()));*/
			ModelAndView modelAndView=new ModelAndView();
			modelAndView.addObject("olduser", olduser);
			modelAndView.setViewName("backstage/allolduser");
			return modelAndView;
		}
}
