package com.controller.backstage.info;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Frontinformation;
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
		System.out.println(">>>>>>>>>>>>>>>id:"+frontinformation.getId());
		return "redirect:/backstage/info/allInfo";
	}
	
	@RequestMapping("/allInfo")
	public ModelAndView allInfo(HttpServletRequest request){
		ModelAndView view=new ModelAndView();
		view.setViewName("backstage/frontinformation");
		return view;
	}

}
