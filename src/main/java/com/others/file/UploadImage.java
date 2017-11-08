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

	// 单个图片上传
	public static String addImage(MultipartFile file, String imagePath, HttpServletRequest request) {
		if (file != null) {
			try {
				String fileName = new String(file.getOriginalFilename().getBytes("iso-8859-1"), "utf-8");
				int i=fileName.lastIndexOf(".");
				fileName = fileName.substring(i, fileName.length());
				String newFileName = UUID.randomUUID() + fileName;
				String uploadPath = request.getSession().getServletContext().getRealPath("/files");
				String endPath = uploadPath + imagePath;
				File loadFile = new File(endPath);
				// 没有这个目录就创建
				if (!loadFile.exists()) {
					loadFile.mkdirs();
				}
				String path = endPath + "/" + newFileName;
				File image = new File(path);
				file.transferTo(image);
				return new String(imagePath + "/" + newFileName);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;
	}

	// 多图片上传
	public static List<String> addImages(MultipartFile[] files, String imagePath, HttpServletRequest request) {
		List<String> list = new ArrayList<String>();
		String uploadPath = request.getSession().getServletContext().getRealPath("/files");
		for (MultipartFile file : files) {
			String fileName = "";
			try {
				fileName = new String(file.getOriginalFilename().getBytes("iso-8859-1"), "utf-8");
				int i=fileName.lastIndexOf(".");
				fileName = fileName.substring(i, fileName.length());
				String newFileName = UUID.randomUUID() + fileName;
				String endPath = uploadPath + imagePath;
				File loadFile = new File(endPath);
				// 没有这个目录就创建
				if (!loadFile.exists()) {
					loadFile.mkdirs();
				}
				String path = endPath + "/" + newFileName;
				File image = new File(path);
				file.transferTo(image);
				list.add(new String(imagePath + "/" + newFileName));
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return list;
	}

	// 单文件删除
	public static boolean deleteWebFile(HttpServletRequest request, String path) {
		if (path != null | "".equals(path)) {
			File oldfile = new File(request.getSession().getServletContext().getRealPath("/files") + path);
			if (oldfile.exists() && oldfile.isFile()) {
				oldfile.delete();
				return true;
			}
		}
		return false;
	}

	// 多文件删除
	public static List<Boolean> deleteWebFile(HttpServletRequest request, List<String> path) {
		List<Boolean> list = new ArrayList<Boolean>();
		if (path.size() > 0 | path != null) {
			for (String string : path) {
				File oldfile = new File(request.getSession().getServletContext().getRealPath("/files") + string);
				if (oldfile.exists() && oldfile.isFile()) {
					oldfile.delete();
					list.add(true);
				} else {
					list.add(false);
				}
			}
		}
		return list;
	}

}
