package com.controller.backstage.manager;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.io.File;
import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Activepicutre;
import com.bean.Activitydetailinfo;
import com.bean.Ceoinfo;
import com.bean.Manager;
import com.others.file.UploadImage;
import com.others.md5.Encryption;
import com.service.ActivepicutreService;
import com.service.ActivitydetailinfoService;
import com.service.ManagerService;


@Controller
@RequestMapping("/backstage/manager")
public class ManagerController {

	@Resource
	private ManagerService managerService;
	@Resource
	private ActivitydetailinfoService activitydetailinfoService;
	@Resource
	private ActivepicutreService activepicutreService;
	
	@RequestMapping("/login")
	public String login(Manager manager,HttpServletRequest request){
		//分店店长登陆功能的验证
		Manager manager2 = new Manager();
		manager2 = managerService.checkLogin(manager.getMnumber());
		if (manager2==null) {
			return "redirect:/gotoBackstage/index";
		}else {
			//加密传入的密码，与存在数据库中的密码进行比较判断
			if(Encryption.encrypation(manager.getMpassword()).equals(manager2.getMpassword())){
				request.getSession().setAttribute("manager", manager2);
			}
			return "redirect:/gotoBackstage/index";
		}
	}
	@RequestMapping("login_out.action")
	public String login_out(){
		//退出 功能
		return "backstage/login_manager";
		}
	
	@RequestMapping("/showactivitydetailinfo.action")
	@ResponseBody
	public ModelAndView showActivitydetailinfo(HttpServletRequest request) {
		//在店长已经登陆后根据店长的id在活动表中查询出所有属于本店的活动并显示
		ModelAndView mv =new ModelAndView();
		if(request.getSession().getAttribute("manager")==null){
			mv.setViewName("backstage/login_manager");
			return mv;
		}
		Manager manager=(Manager) request.getSession().getAttribute("manager");
		List<Activitydetailinfo> list=activitydetailinfoService.selectByMid(manager.getLocaid());
		mv.addObject("activitydetailinfoList", list);
		mv.setViewName("backstage/manager_activity_index");
		return mv;
	}
	
	@RequestMapping("/delete")
	public String delete(Integer id,HttpServletRequest request){
		activepicutreService.deleteByActivityid(id);
		activitydetailinfoService.deleteByPrimaryKey(id);

		return "redirect:showactivitydetailinfo.action";
		}
	
	@RequestMapping("/insert")
	public String addActivityinfo(Activitydetailinfo activitydetailinfo,@RequestParam("files") MultipartFile[] files,HttpServletRequest request) {
		/*System.out.println(activitydetailinfo.getActivitystarttime());
		int a = activitydetailinfo.getActivitystarttime().compareTo(activitydetailinfo.getActivitystoptime());
		System.out.println(a);*/
		Date a = activitydetailinfo.getActivitystarttime();
		Date b = activitydetailinfo.getActivitystoptime();
		long time1 = a.getTime();
		long time2 = b.getTime();
		long s = time2-time1;
		if(s>0){
		Manager manager=(Manager) request.getSession().getAttribute("manager");
		activitydetailinfo.setMid(manager.getLocaid());
		activitydetailinfoService.insertSelective(activitydetailinfo);
		List<String> list =  new ArrayList<String>();
		
		if(!(files[0].isEmpty())){
			list =UploadImage.addImages(files,"/backstage/manager/activitydetailinfo/picture",request);
				for(int i=0;i<list.size();i++){
				Activepicutre activepicutre =new Activepicutre();
				activepicutre.setActiveimageurl(list.get(i));
				activepicutre.setActivityid(activitydetailinfo.getId());
				activepicutreService.insertSelective(activepicutre);
				}
			}
		return "redirect:showactivitydetailinfo.action";
		}
		return "redirect:showactivitydetailinfo.action";
	}
	
	@RequestMapping("/update")
	public String update(Activitydetailinfo record,@RequestParam("files") MultipartFile[] files,HttpServletRequest request) {
		//根据传入的Activitydetailinfo对象对Activitydetailinfo表中的数据进行更新操作
		activitydetailinfoService.updateByPrimaryKeySelective(record);
		//根据Activitydetailinfo对象中的id删除图片表中的图片
		activepicutreService.deleteByActivityid(record.getId());
		
		List<String> list =  new ArrayList<String>();
		if(files != null){
			list =UploadImage.addImages(files,"/backstage/manager/activitydetailinfo/picture",request);
				for(int i=0;i<list.size();i++){
				Activepicutre activepicutre =new Activepicutre();
				activepicutre.setActiveimageurl(list.get(i));
				activepicutre.setActivityid(record.getId());
				activepicutreService.insertSelective(activepicutre);
				}
		}
		
		return "redirect:showactivitydetailinfo.action";
	}
	
	@RequestMapping("/selectById")
	public String selectById(Integer id, HttpServletRequest request){
		Activitydetailinfo activitydetailinfo = activitydetailinfoService.selectByPrimaryKey(id);
		List<Activepicutre> list =activepicutreService.selectByActivityid(id);
		request.setAttribute("activitydetailinfo", activitydetailinfo);
		request.setAttribute("list", list);
		return "backstage/manager_activityinfo_update";
	}
	
	
	@RequestMapping("/selectById2")
	public String selectById2(Integer id, HttpServletRequest request){
		Activitydetailinfo activitydetailinfo = activitydetailinfoService.selectByPrimaryKey(id);
		List<Activepicutre> list= activepicutreService.selectByActivityid((activitydetailinfoService.selectByPrimaryKey(id)).getId());
		request.setAttribute("activitydetailinfo", activitydetailinfo);
		request.setAttribute("list", list);
		
		return "backstage/manager_activityinfo_qerry";
	}
	
	@RequestMapping("/selectAllManager.action")
	public String selectAllManager(HttpServletRequest request){
		Ceoinfo ceoinfo =(Ceoinfo) request.getSession().getAttribute("ceoinfo");
		List<Manager> list =managerService.selectAllManager(ceoinfo.getId());
		request.setAttribute("list", list);
		return "backstage/manager_index";
	}
	
	@RequestMapping("addManager")
	public String insertSelective(Manager manager,HttpServletRequest request){
		if(managerService.selectManagerByMnumber(manager.getMnumber())!=null){
			String str =Encryption.encrypation(manager.getMpassword());
			manager.setMpassword(str);
			return "backstage/manager_add";
		}
		else if(managerService.selectManagerByMnumber(manager.getMnumber())==null&&manager.getMnumber()!=null&&manager.getMpassword()!=null){
			managerService.insertSelective(manager);
			return "redirect:selectAllManager.action";
		}
		return "backstage/manager_add";
	}
	
	@RequestMapping("deleteById")
	public String deleteById(int id,HttpServletRequest request){
		managerService.deleteByPrimaryKey(id);
		return "redirect:selectAllManager.action";
		}
	
	@RequestMapping("updateByPrimaryKeySelective")
	public String updateByPrimaryKeySelective(Manager manager,HttpServletRequest request){
		String str =Encryption.encrypation(manager.getMpassword());
		manager.setMpassword(str);
		managerService.updateByPrimaryKeySelective(manager);
		return "redirect:selectAllManager.action";
	}
	
	@RequestMapping("selectByPrimaryKey")
	public String selectByPrimaryKey(int id,HttpServletRequest request) {
		Manager manager=managerService.selectByPrimaryKey(id);
		request.setAttribute("manager", manager);
		return "backstage/manager_update";
	}
	
	
	
}
