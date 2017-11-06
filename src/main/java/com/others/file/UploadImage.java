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
				String[] ns=fileName.split(".");
				fileName=new String("."+ns[ns.length-1]);
				String newFileName=UUID.randomUUID()+fileName;
				String uploadPath = request.getSession().getServletContext().getRealPath("/files");
				String endPath=uploadPath+imagePath;
				File loadFile=new File(endPath);
				//没有这个目录就创建
				if (!loadFile.exists()) {
					loadFile.mkdirs();
				}
				String path=endPath+"/"+newFileName;
				File image=new File(path);
				file.transferTo(image);
				return new String(imagePath+"/"+newFileName);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;
	}
	
	//多图片上传
	public static List<String> addImages(MultipartFile[] files,String imagePath,HttpServletRequest request){
		List<String> list=new ArrayList<String>();
			String uploadPath = request.getSession().getServletContext().getRealPath("/files");
			for (MultipartFile file : files) {
				String fileName="";
				try {
					fileName = new String(file.getOriginalFilename().getBytes("iso-8859-1"), "utf-8");
					String newFileName=UUID.randomUUID()+fileName;
					String endPath=uploadPath+imagePath;
					File loadFile=new File(endPath);
					//没有这个目录就创建
					if (!loadFile.exists()) {
						loadFile.mkdirs();
					}
					String path=endPath+"/"+newFileName;
					File image=new File(path);
					file.transferTo(image);
					list.add(new String(imagePath+"/"+newFileName));
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
		
		return list;
	}

}
