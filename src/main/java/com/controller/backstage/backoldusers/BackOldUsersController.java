package com.controller.backstage.backoldusers;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Localarea;
import com.bean.Manager;
import com.bean.OldUsers;
import com.bean.Page;

import com.converter.DateConverter;
import com.others.file.UploadImage;
import com.others.md5.Encryption;
import com.service.ManagerService;
import com.service.OldUsersService;

@Controller
@RequestMapping("/backstage/oldusers")
public class BackOldUsersController {
	@Autowired
	@Qualifier("oldUsersService")
	private OldUsersService oldUsersService;
	@Autowired
	@Qualifier("ManagerService")
	private ManagerService managerService;
	private DateConverter dateConverter;
	@RequestMapping("/gotoregister")
	public ModelAndView gotoRetisterPage(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		if (request.getSession().getAttribute("manager") != null) {
			Manager manage= (Manager) request.getSession().getAttribute("manager");
			Manager mangerArea = managerService.findPrivenceName(manage.getLocaid());
			modelAndView.addObject("mangerArea", mangerArea);
			modelAndView.setViewName("backstage/register");
		}
		return modelAndView;
	}
	//添加用户
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
			String newuserUrl = UploadImage.addImage(file, "/backstage/oldusers", request);
			System.out.println(newuserUrl);
			oldUsers.setUserurl(newuserUrl);

			// 调用加密方法将密码加密
			String pwd = Encryption.encrypation(oldUsers.getPassword());
			oldUsers.setPassword(pwd);
		
			oldUsersService.insertOldUsers(oldUsers);
			//modelAndView.addObject("err", "");
			if(request.getSession().getAttribute("manager")!=null){
				/*Manager manager=(Manager) request.getSession().getAttribute("manager");
				List<OldUsers> olduser=oldUsersService.findAllUserByManager(manager.getLocaid());
				modelAndView.addObject("olduser", olduser);
				modelAndView.setViewName("backstage/allolduser");*/
				Manager manager = (Manager) request.getSession().getAttribute("manager");
				modelAndView.setViewName("backstage/allolduser");
				Map<String,Object>map=new HashMap<String, Object>();
				Integer max=2;
				Integer page=0;
				Integer counts=0;
				if(request.getParameter("page")!=null){
					page=Integer.valueOf(request.getParameter("page"));
				}
				if(page<=0){
					page=0;
				}
				//counts = oldUsersService.getOldUsersCount(manager.getLocaid()) / max;
				counts = oldUsersService.getOldUsersCount() / max;
				System.out.println(counts);
				if(counts<=0){
					counts=0;
				}
				if(page>=counts){
					page=counts;
				}
				map.put("page", page * max);
				map.put("max", max);
				List<OldUsers> allLocalolduser = oldUsersService.findAllUserByManager(manager.getLocaid());
				List<OldUsers> olduser = oldUsersService.findUserMap(map);
				modelAndView.addObject("olduser", olduser);
				modelAndView.addObject("page", page);
				modelAndView.addObject("counts", counts);
			}
			
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
			
		modelAndView.addObject("olduser", olduser);
		modelAndView.setViewName("backstage/allolduser");
		return modelAndView;
	}
//	根据管理员的所属地找出该地的所有用户
	@RequestMapping("findUserByManager")
	public ModelAndView selectAllUserByManager(HttpServletRequest request){
		ModelAndView modelAndView=new ModelAndView();
		if(request.getSession().getAttribute("manager")!=null){
			Manager manager=(Manager) request.getSession().getAttribute("manager");
			List<OldUsers> olduser=oldUsersService.findAllUserByManager(manager.getLocaid());
			modelAndView.addObject("olduser", olduser);
			modelAndView.setViewName("backstage/allolduser");
		}
		
		return modelAndView;
		
	}
	// 根据管理员的所属地找出该地的所有用户并进行分页
		@RequestMapping("/findUserByManagerPage")
		public ModelAndView selectUserByManagerPage(HttpServletRequest request) {
			ModelAndView modelAndView = new ModelAndView();
			if (request.getSession().getAttribute("manager") == null) {
				modelAndView.setViewName("backstage/loginWTF");
				return modelAndView;
			}
			if (request.getSession().getAttribute("manager") != null) {
				Manager manager = (Manager) request.getSession().getAttribute("manager");
				modelAndView.setViewName("backstage/allolduser");
				Map<String,Object>map=new HashMap<String, Object>();
				Integer max=2;
				Integer page=0;
				Integer counts=0;
				if(request.getParameter("page")!=null){
					page=Integer.valueOf(request.getParameter("page"));
				}
				if(page<=0){
					page=0;
				}
				//counts = oldUsersService.getOldUsersCount(manager.getLocaid()) / max;
				counts = oldUsersService.getOldUsersCount() / max;
				System.out.println(counts);
				if(counts<=0){
					counts=0;
				}
				if(page>=counts){
					page=counts;
				}
				map.put("page", page * max);
				map.put("max", max);
				List<OldUsers> allLocalolduser = oldUsersService.findAllUserByManager(manager.getLocaid());
				List<OldUsers> olduser = oldUsersService.findUserMap(map);
				modelAndView.addObject("olduser", olduser);
				modelAndView.addObject("page", page);
				modelAndView.addObject("counts", counts);
			}
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
		String newuserUrl = UploadImage.addImage(file, "/backstage/oldusers", request);
		System.out.println(newuserUrl);
		users.setUserurl(newuserUrl);
		
		 oldUsersService.modifyById(users);
		 ModelAndView modelAndView=new ModelAndView();
		 if(request.getSession().getAttribute("manager")!=null){
//				Manager manager=(Manager) request.getSession().getAttribute("manager");
//				List<OldUsers> olduser=oldUsersService.findAllUserByManager(manager.getLocaid());
//				modelAndView.addObject("olduser", olduser);
//				modelAndView.setViewName("backstage/allolduser");
				Manager manager = (Manager) request.getSession().getAttribute("manager");
				modelAndView.setViewName("backstage/allolduser");
				Map<String,Object>map=new HashMap<String, Object>();
				Integer max=2;
				Integer page=0;
				Integer counts=0;
				if(request.getParameter("page")!=null){
					page=Integer.valueOf(request.getParameter("page"));
				}
				if(page<=0){
					page=0;
				}
				//counts = oldUsersService.getOldUsersCount(manager.getLocaid()) / max;
				counts = oldUsersService.getOldUsersCount() / max;
				System.out.println(counts);
				if(counts<=0){
					counts=0;
				}
				if(page>=counts){
					page=counts;
				}
				map.put("page", page * max);
				map.put("max", max);
				List<OldUsers> allLocalolduser = oldUsersService.findAllUserByManager(manager.getLocaid());
				List<OldUsers> olduser = oldUsersService.findUserMap(map);
				modelAndView.addObject("olduser", olduser);
				modelAndView.addObject("page", page);
				modelAndView.addObject("counts", counts);
			}
		return modelAndView;
	}
	//根据id删除用户基本信息以及相关的消费信息
	@RequestMapping(value="/deleteUserById")
	
	public String deleteUserById(OldUsers oldUsersid){
		
		 oldUsersService.deleteUserById(oldUsersid);
		 
		return "redirect:/backstage/oldusers/findUserByManager.action";
	}
	

	//用户详情信息
		@RequestMapping(value="/queryUserdetail")
		@ResponseBody
		public ModelAndView queryUserDetail(Integer id){
			OldUsers userdetail=oldUsersService.queryById(id);
			ModelAndView modelAndView=new ModelAndView();
			modelAndView.addObject("userdetail", userdetail);
			modelAndView.setViewName("backstage/olduserdetail");
			return modelAndView;
		}
		//按条件查询
		@RequestMapping(value="/selectuserbyconditions")
		@ResponseBody
//		public ModelAndView selectByConditions( HttpServletRequest request){
	//		String findbycondition=request.getParameter("findbycondition");
		public ModelAndView selectByConditions(String findbycondition){	
		    List<OldUsers> olduser=oldUsersService.queryByConditions(findbycondition);
			
			ModelAndView modelAndView=new ModelAndView();
			modelAndView.addObject("olduser", olduser);
			modelAndView.setViewName("backstage/allolduser");
			return modelAndView;
		}
		
 
	
}
