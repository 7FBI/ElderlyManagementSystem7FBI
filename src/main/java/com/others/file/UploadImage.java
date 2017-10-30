package com.others.file;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

public class UploadImage {
	
	//单个图片上传
	public static String addImage(MultipartFile file,String imagePath,HttpServletRequest request){
		if (file!=null) {
			try {
				String fileName = new String(file.getOriginalFilename().getBytes("iso-8859-1"), "utf-8");
				String newFileName=UUID.randomUUID()+fileName;
				String uploadPath = request.getSession().getServletContext().getRealPath("/files");
				String endPath=uploadPath+File.separator+imagePath;
				File loadFile=new File(endPath);
				//没有这个目录就创建
				if (loadFile.isDirectory()) {
					loadFile.mkdir();
				}
				String path=endPath+File.separator+newFileName;
				File image=new File(path);
				file.transferTo(image);
				return imagePath+newFileName;
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return "no";
	}
	
	//多图片上传
	public static List<String> addImages(MultipartFile[] files,String imagePath,HttpServletRequest request){
		List<String> list=new ArrayList<String>();
			String uploadPath = request.getSession().getServletContext().getRealPath("/files");
			for (MultipartFile file : files) {
				String fileName;
				try {
					fileName = new String(file.getOriginalFilename().getBytes("iso-8859-1"), "utf-8");
					String newFileName=UUID.randomUUID()+fileName;
					String endPath=uploadPath+File.separator+imagePath;
					File loadFile=new File(endPath);
					//没有这个目录就创建
					if (loadFile.isDirectory()) {
						loadFile.mkdir();
					}
					String path=endPath+File.separator+newFileName;
					File image=new File(path);
					file.transferTo(image);
					list.add(imagePath+newFileName);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
		
		return list;
	}

}
