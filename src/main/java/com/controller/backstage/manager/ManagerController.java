package com.controller.backstage.manager;

import java.util.ArrayList;
import java.util.List;

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
		Manager manager2 = new Manager();
		manager2 = managerService.checkLogin(manager.getMnumber());
		if (manager2==null) {
			return "redirect:/gotoBackstage/index";
		}else {
			if(Encryption.encrypation(manager.getMpassword()).equals(manager2.getMpassword())){
				request.getSession().setAttribute("manager", manager2);
			}
			return "redirect:/gotoBackstage/index";
		}
	}
	@RequestMapping("login_out.action")
	public String login_out(){
		return "backstage/login_manager";
		}
	
	@RequestMapping("/showactivitydetailinfo.action")
	@ResponseBody
	public ModelAndView showActivitydetailinfo(HttpServletRequest request) {
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
	public String addActivityinfo(Activitydetailinfo record,@RequestParam("files") MultipartFile[] files,HttpServletRequest request) {
		Manager manager=(Manager) request.getSession().getAttribute("manager");
		record.setMid(manager.getLocaid());
		activitydetailinfoService.insertSelective(record);
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
		for(int i=0;i<list.size();i++){
			System.out.println(list.get(i));
		}
		request.setAttribute("activitydetailinfo", activitydetailinfo);
		request.setAttribute("list", list);
		
		return "backstage/manager_activityinfo_qerry";
	}
	
}
