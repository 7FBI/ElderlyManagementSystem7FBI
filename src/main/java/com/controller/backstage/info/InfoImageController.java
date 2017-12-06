package com.controller.backstage.info;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.bean.Infopicture;
import com.others.file.UploadImage;
import com.service.InfopictureService;
import com.sun.org.apache.bcel.internal.generic.NEW;

@Controller
@RequestMapping("/backstage/infoImage")
public class InfoImageController {
	@Autowired
	@Qualifier("infopictureService")
	private InfopictureService infopictureService;
	
	@RequestMapping("/updateInfoImageValue")
	public String updateInfoImageValue(Infopicture infopicture,HttpServletRequest request){
		Integer infoid=infopicture.getInfoid();
		infopicture.setInfoid(null);
		infopictureService.updateByPrimaryKeySelective(infopicture);
		return "redirect:/backstage/info/updateInfo?id="+infoid;
	}
	
	
	@RequestMapping("/updateInfoImages")
	public String updateInfoImages(Infopicture infopicture,HttpServletRequest request,@RequestParam("file") MultipartFile file){
		String url="";
		if (file!=null&file.getName().length()>0) {
			url=UploadImage.addImage(file, "/info/others", request);
			if (infopicture.getImagepath()!=null) {
				UploadImage.deleteFile(UploadImage.getOSSClient(), infopicture.getImagepath());
			}
		}
		if (!"".equals(url)) {
			infopicture.setImagepath(url);
		}
		infopictureService.updateByPrimaryKeySelective(infopicture);
		return "redirect:/backstage/info/updateInfo?id="+infopicture.getInfoid();
	}
	
	@RequestMapping("/addInfoImages")
	public String addInfoImages(@RequestParam("files") MultipartFile[] files,HttpServletRequest request){
		List<String> list=null;
		Integer infoid=Integer.valueOf(request.getParameter("infoid"));
		String[] counts=request.getParameterValues("counts");
		if (files!=null&files[0].getName().length()>0) {
			list=UploadImage.addImages(files, "/info/others", request);
		}
		int i=0;
		for (String string : list) {
			Infopicture infopicture=new Infopicture();
			if (counts[i]!=null) {
				infopicture.setImagecontent(counts[i]);
			}
			infopicture.setInfoid(infoid);
			infopicture.setImagepath(string);
			i++;
			infopictureService.insertSelective(infopicture);
		}
		return "redirect:/backstage/info/updateInfo?id="+infoid;
	}
	
	
} 
