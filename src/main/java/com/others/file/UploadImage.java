package com.others.file;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.web.multipart.MultipartFile;

import com.aliyun.oss.OSSClient;
import com.aliyun.oss.model.Bucket;
import com.aliyun.oss.model.OSSObject;
import com.aliyun.oss.model.ObjectMetadata;
import com.aliyun.oss.model.PutObjectResult;
import com.controller.util.aly.AliyunOSSClientUtil;
import com.controller.util.aly.OSSClientConstants;
import com.sun.org.apache.bcel.internal.generic.NEW;

public class UploadImage {

	// 单个图片上传
	/*public static String addImage(MultipartFile file, String imagePath, HttpServletRequest request) {
		if (file != null && file.getSize()>0) {
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
	}*/
	
	//单文件上传
	public static String addImage(MultipartFile file, String imagePath, HttpServletRequest request) {
		if (file != null && file.getSize()>0) {
			OSSClient ossclient=getOSSClient();
			String fileName;
			try {
				fileName = new String(file.getOriginalFilename().getBytes("iso-8859-1"), "utf-8");
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
				String path = new String( endPath + "/" + newFileName);
				File image = new File(path);
				file.transferTo(image);
				String alyPath=FOLDER+new String(imagePath+"/");
				String md5key=uploadObject2OSS(ossclient, image, BACKET_NAME,alyPath );
				System.out.println("--------------------------->>>>new Files:"+newFileName);
				System.out.println("--------------------------->>>>md5key:"+md5key);
				if (md5key!=null || !"".equals(md5key)) {
					webDeleteWebFile(request,path);
				}
				destory(ossclient);
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
		OSSClient ossclient=getOSSClient();
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
				String path = new String(endPath + "/" + newFileName);
				File image = new File(path);
				file.transferTo(image);
				String md5key=uploadObject2OSS(ossclient, image, BACKET_NAME, FOLDER+new String(imagePath+"/"));
				list.add(new String(imagePath + "/" + newFileName));
				System.out.println("--------------------------->>>>new Files:"+newFileName);
				System.out.println("--------------------------->>>>md5key:"+md5key);
				if (md5key!=null || !"".equals(md5key)) {
					webDeleteWebFile(request,path);
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		destory(ossclient);
		return list;
	}

	// 单文件删除
	public static boolean deleteWebFile(HttpServletRequest request, String path) {
		if (path != null | "".equals(path)) {
			deleteFile(getOSSClient(), path);
		}
		return true;
	}

	// 多文件删除
	public static Boolean deleteWebFile(HttpServletRequest request, List<String> path) {
		if (path.size() > 0 | path != null) {
			deleteFile(getOSSClient(), path);
		}
		return true;
	}
	
	// 单文件删除本地
		public static boolean webDeleteWebFile(HttpServletRequest request, String path) {
			if (path != null | "".equals(path)) {
				File oldfile = new File(request.getSession().getServletContext().getRealPath("/files") + path);
				if (oldfile.exists() && oldfile.isFile()) {
					oldfile.delete();
					return true;
				}
			}
			return false;
		}

		// 多文件删除本地
		public static List<Boolean> webDeleteWebFile(HttpServletRequest request, List<String> path) {
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

	
	
	
	//log日志  
    private static Logger logger = Logger.getLogger(AliyunOSSClientUtil.class);  
    //阿里云API的内或外网域名  
    private static String ENDPOINT;  
    //阿里云API的密钥Access Key ID
    private static String ACCESS_KEY_ID;  
    //阿里云API的密钥Access Key Secret  
    private static String ACCESS_KEY_SECRET;  
    //阿里云API的bucket名称  
    private static String BACKET_NAME;
    //阿里云API的文件夹名称  
    private static String FOLDER;
    //初始化属性  
    static{
        ENDPOINT = OSSClientConstants.ENDPOINT;  
        ACCESS_KEY_ID = OSSClientConstants.ACCESS_KEY_ID;  
        ACCESS_KEY_SECRET = OSSClientConstants.ACCESS_KEY_SECRET;  
        BACKET_NAME = OSSClientConstants.BACKET_NAME;  
        FOLDER = "fbiImage";
    }
      
    /** 
     * 获取阿里云OSS客户端对象 
     * @return ossClient 
     */  
    public static  OSSClient getOSSClient(){  
        return new OSSClient(ENDPOINT,ACCESS_KEY_ID, ACCESS_KEY_SECRET);  
    }  
    
    
    /**
     * 销毁
     */
    public static void destory(OSSClient ossClient) {
      ossClient.shutdown();
    }
  
    /** 
     * 创建存储空间 
     * @param ossClient      OSS连接 
     * @param bucketName 存储空间 
     * @return 
     */  
    public  static String createBucketName(OSSClient ossClient,String bucketName){  
        //存储空间  
        final String bucketNames=bucketName;  
        if(!ossClient.doesBucketExist(bucketName)){  
            //创建存储空间  
            Bucket bucket=ossClient.createBucket(bucketName);  
            logger.info("创建存储空间成功");  
            return bucket.getName();  
        }  
        return bucketNames;  
    }
      
    /** 
     * 删除存储空间buckName 
     * @param ossClient  oss对象 
     * @param bucketName  存储空间 
     */  
    public static  void deleteBucket(OSSClient ossClient, String bucketName){    
        ossClient.deleteBucket(bucketName);     
        logger.info("删除" + bucketName + "Bucket成功");    
    }    
      
    /** 
     * 创建模拟文件夹 
     * @param ossClient oss连接 
     * @param bucketName 存储空间 
     * @param folder   模拟文件夹名如"qj_nanjing/" 
     * @return  文件夹名 
     */  
    public  static String createFolder(OSSClient ossClient,String bucketName,String folder){  
        //文件夹名   
        final String keySuffixWithSlash =folder;  
        //判断文件夹是否存在，不存在则创建  
        if(!ossClient.doesObjectExist(bucketName, keySuffixWithSlash)){  
            //创建文件夹  
            ossClient.putObject(bucketName, keySuffixWithSlash, new ByteArrayInputStream(new byte[0]));  
            logger.info("创建文件夹成功");  
            //得到文件夹名  
            OSSObject object = ossClient.getObject(bucketName, keySuffixWithSlash);  
            String fileDir=object.getKey();  
            return fileDir;  
        }  
        return keySuffixWithSlash;  
    }  
	
	
	/**   
     * 根据key删除OSS服务器上的文件   
     * @param ossClient  oss连接 
     * @param bucketName  存储空间  
     * @param folder  模拟文件夹名 如"qj_nanjing/" 
     * @param key Bucket下的文件的路径名+文件名 如："upload/cake.jpg"
     * 单文件删除 
     */      
    public static void deleteFile(OSSClient ossClient, String folder){
    	ossClient.deleteObject(BACKET_NAME, FOLDER+folder);
        logger.info("删除" + BACKET_NAME + "下的文件" + FOLDER+folder + "成功");
    }
    
    
    
    
    /**   
     * 根据key删除OSS服务器上的文件   
     * @param ossClient  oss连接 
     * @param bucketName  存储空间  
     * @param folder  模拟文件夹名 如"qj_nanjing/" 
     * @param key Bucket下的文件的路径名+文件名 如："upload/cake.jpg"
     * 多文件删除 
     */      
    public static void deleteFile(OSSClient ossClient,List<String> folder){    
         for (String string : folder) {
        	 ossClient.deleteObject(BACKET_NAME, FOLDER+string);
             logger.info("删除" + BACKET_NAME + "下的文件" + FOLDER+string + "成功");
		}
    }
    
    
	
	
	/** 
     * 上传图片至OSS 
     * @param ossClient  oss连接 
     * @param file 上传文件（文件全路径如：D:\\image\\cake.jpg） 
     * @param bucketName  存储空间 
     * @param folder 模拟文件夹名 如"qj_nanjing/"
     * @return String 返回的唯一MD5数字签名 
     * */
    public static  String uploadObject2OSS(OSSClient ossClient, File file, String bucketName, String folder) {  
        String resultStr = null;  
        try {  
            //以输入流的形式上传文件  
            InputStream is = new FileInputStream(file);
            //文件名  
            String fileName = file.getName();   
            //文件大小  
            Long fileSize = file.length();   
            //创建上传Object的Metadata    
            ObjectMetadata metadata = new ObjectMetadata();  
            //上传的文件的长度  
            metadata.setContentLength(is.available());    
            //指定该Object被下载时的网页的缓存行为  
            metadata.setCacheControl("no-cache");   
            //指定该Object下设置Header  
            metadata.setHeader("Pragma", "no-cache");    
            //指定该Object被下载时的内容编码格式  
            metadata.setContentEncoding("utf-8");    
            //文件的MIME，定义文件的类型及网页编码，决定浏览器将以什么形式、什么编码读取文件。如果用户没有指定则根据Key或文件名的扩展名生成，  
            //如果没有扩展名则填默认值application/octet-stream  
            metadata.setContentType(getContentType(fileName));    
            //指定该Object被下载时的名称（指示MINME用户代理如何显示附加的文件，打开或下载，及文件名称）  
            metadata.setContentDisposition("filename/filesize=" + fileName + "/" + fileSize + "Byte.");    
            //上传文件   (上传文件流的形式)  
            PutObjectResult putResult = ossClient.putObject(bucketName, folder + fileName, is, metadata);    
            //解析结果  
            resultStr = putResult.getETag();  
        } catch (Exception e) {  
            e.printStackTrace();  
             logger.error("上传阿里云OSS服务器异常." + e.getMessage(), e);    
        }  
        return resultStr;  
    } 
	
	
	
	/** 
     * 通过文件名判断并获取OSS服务文件上传时文件的contentType 
     * @param fileName 文件名 
     * @return 文件的contentType 
     */  
    public static  String getContentType(String fileName){  
        //文件的后缀名  
        String fileExtension = fileName.substring(fileName.lastIndexOf("."));  
        if(".bmp".equalsIgnoreCase(fileExtension)) {  
            return "image/bmp";  
        }  
        if(".gif".equalsIgnoreCase(fileExtension)) {  
            return "image/gif";  
        }  
        if(".jpeg".equalsIgnoreCase(fileExtension) || ".jpg".equalsIgnoreCase(fileExtension)  || ".png".equalsIgnoreCase(fileExtension) ) {  
            return "image/jpeg";  
        }  
        if(".html".equalsIgnoreCase(fileExtension)) {  
            return "text/html";  
        }  
        if(".txt".equalsIgnoreCase(fileExtension)) {  
            return "text/plain";  
        }  
        if(".vsd".equalsIgnoreCase(fileExtension)) {  
            return "application/vnd.visio";  
        }  
        if(".ppt".equalsIgnoreCase(fileExtension) || "pptx".equalsIgnoreCase(fileExtension)) {  
            return "application/vnd.ms-powerpoint";  
        }  
        if(".doc".equalsIgnoreCase(fileExtension) || "docx".equalsIgnoreCase(fileExtension)) {  
            return "application/msword";  
        }  
        if(".xml".equalsIgnoreCase(fileExtension)) {  
            return "text/xml";  
        }
        if(".mp4".equalsIgnoreCase(fileExtension)) {  
            return "video/mp4";
        }
        if(".avi ".equalsIgnoreCase(fileExtension)) {  
            return "video/avi ";
        }
        if(".rmvb".equalsIgnoreCase(fileExtension)) {  
            return "video/rmvb";
        }
        if(".mpg".equalsIgnoreCase(fileExtension)||".mpeg".equalsIgnoreCase(fileExtension)) {  
            return "video/mpg";
        }
        //"mp4":contentType = "video/mp4";
        //默认返回类型  
        return "image/jpeg";  
    }  
	
}
