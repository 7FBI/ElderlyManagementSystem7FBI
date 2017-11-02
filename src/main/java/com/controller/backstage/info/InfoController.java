package com.controller.backstage.info;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Frontinformation;
import com.bean.Infopicture;
import com.bean.Manager;
import com.bean.ManagerInfo;
import com.others.file.UploadImage;
import com.service.FrontinformationService;
import com.service.InfopictureService;

@Controller
@RequestMapping("/backstage/info")
public class InfoController {
	
	@Autowired
	@Qualifier("frontinformationService")
	private FrontinformationService frontinformationService;
	
	@Autowired
	@Qualifier("infopictureService")
	private InfopictureService infopictureService;
	
	@RequestMapping("/addInfo")
	public String addInfo(@RequestParam("file") MultipartFile file,@RequestParam("files") MultipartFile[] files,Frontinformation frontinformation,HttpServletRequest request){
		if (file!=null) {
			frontinformation.setFrontpicture(UploadImage.addImage(file, "/info/main", request));
		}
		frontinformation.setMid("dpeng123");
		frontinformationService.insertSelective(frontinformation);
		String[] imageContent=request.getParameterValues("imageContent");
		List<String> filesList=UploadImage.addImages(files, "/info/others", request);
		int x=0;
		for (String content : imageContent) {
			Infopicture infopicture=new Infopicture();
			infopicture.setInfoid(frontinformation.getId());
			infopicture.setImagecontent(content);
			infopicture.setImagepath(filesList.get(x));
			x++;
			infopictureService.insertSelective(infopicture);
		}
		return "redirect:/backstage/info/allInfo";
	}
	
	@RequestMapping("/allInfo")
	public ModelAndView allInfo(HttpServletRequest request){
		ModelAndView view=new ModelAndView();
		view.setViewName("backstage/frontinformation");
		Map<String,Object> map=new HashMap<String, Object>();
		ManagerInfo managerInfo=(ManagerInfo) request.getSession().getAttribute("ManagerIndo");
		map.put("mid", managerInfo.getName());
		Integer max=2;
		Integer page=0;
		Integer counts=0;
		//当前页
		if (request.getParameter("page")!=null) {
			page=Integer.valueOf(request.getParameter("page"));
		}
		if (page<0) {
			page=0;
		}
		counts=frontinformationService.selectByMidCount(map)/max;
		if (counts<=0) {
			counts=0;
		}
		if (page>=counts) {
			page=counts;
		}
		List<Frontinformation> list=null;
		map.put("page", page*max);
		map.put("max", max);
		list=frontinformationService.selectByMid(map);
		List<String> kinds=frontinformationService.selectAllKinds(map);
		view.addObject("frontinformation", list);
		view.addObject("counts", counts);
		view.addObject("page", page);
		view.addObject("kinds", kinds);
		return view;
	}
	
	@RequestMapping("/deleteInfo")
	public String deleteInfo(HttpServletRequest request){
		Integer id=Integer.valueOf(request.getParameter("id"));
		deleteImageFile(request,id);
		frontinformationService.deleteByPrimaryKey(id);
		return "redirect:/backstage/info/allInfo";
	}
	
	@RequestMapping("/updateInfo")
	public ModelAndView updateInfo(HttpServletRequest request){
		ModelAndView view=new ModelAndView();
		view.setViewName("backstage/frontinformationInfo");
		/*if (request.getParameter("id")==null|request.getParameter("id")=="") {
			return allInfo(request);
		}*/
		Integer id=Integer.valueOf(request.getParameter("id"));
		List<Frontinformation> frontinformations=frontinformationService.selectByKey(id);
		view.addObject("frontinformation", frontinformations);
		if (frontinformations.size()>0) {
			view.addObject("id", frontinformations.get(0).getId());
		}
		return view;
	}
	
	@RequestMapping("/updateInfoValues")
	public String updateInfoValues(HttpServletRequest request,Frontinformation frontinformation){
		frontinformationService.updateByPrimaryKeySelective(frontinformation);
		return "redirect:/backstage/info/updateInfo?id="+frontinformation.getId();
	}
	
	@RequestMapping("/updateInfoImage")
	public String updateInfoImage(Frontinformation frontinformation,@RequestParam("file") MultipartFile file,HttpServletRequest request){
		String url="";
		if (file!=null) {
			url=UploadImage.addImage(file, "/info/main", request);
			if (frontinformation.getFrontpicture()!=null) {
				File oldfile=new File(request.getSession().getServletContext().getRealPath("/files")+frontinformation.getFrontpicture());
				if (oldfile.exists() && oldfile.isFile()) {
		            oldfile.delete();
		        }
			}
		}
		if (!"".equals(url)) {
			frontinformation.setFrontpicture(url);
		}
		frontinformationService.updateByPrimaryKeySelective(frontinformation);
		return "redirect:/backstage/info/updateInfo?id="+frontinformation.getId();
	}
	
	public String deleteImageFile(HttpServletRequest request,Integer id){
		List<Frontinformation> list=frontinformationService.selectByKey(id);
		for (Frontinformation frontinformation : list) {
			if (frontinformation.getInfopuctures().get(0).getImagepath()!=null) {
				File oldfile=new File(request.getSession().getServletContext().getRealPath("/files")+frontinformation.getInfopuctures().get(0).getImagepath());
				if (oldfile.exists() && oldfile.isFile()) {
		            oldfile.delete();
		        }
			}
		}
		return "redirect:/backstage/info/updateInfo?id="+id;
	}
}
