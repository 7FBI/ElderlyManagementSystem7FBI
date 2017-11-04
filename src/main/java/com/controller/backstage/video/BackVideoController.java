package com.controller.backstage.video;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Video;
import com.dao.VideoMapper;
import com.others.file.UploadImage;
import com.service.VideoService;

@Controller
@RequestMapping("/backstage/video")
public class BackVideoController {

	@Autowired
	@Qualifier("videoService")
	private VideoService videoService;
//	上传视频
	@RequestMapping("/addvideo")
	@ResponseBody
	public ModelAndView addVideos(@RequestParam("file") CommonsMultipartFile file,Video video,HttpServletRequest request) throws IOException {
		String newVideoUrl=UploadImage.addImage(file, "/backstage/video", request);
		System.out.println(newVideoUrl);
		video.setVurl(newVideoUrl);
		videoService.addVideo(video);
		List<Video> allVideos=videoService.queryAllVideo();
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.addObject("allVideos", allVideos);
		modelAndView.setViewName("backstage/allvideoslist");
		return modelAndView;
	}
//	视频列表
	@RequestMapping("/allvideo")
	public ModelAndView allVideos(){
		List<Video> allVideos=videoService.queryAllVideo();
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.addObject("allVideos", allVideos);
		modelAndView.setViewName("backstage/allvideoslist");
		return modelAndView;
	}
//	根据id查询
	@RequestMapping("/selectvideobyid")
	public ModelAndView selectvideoById(Integer id){
		Video oneVideoById=videoService.queryOneVideo(id);
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.addObject("oneVideoById", oneVideoById);
		modelAndView.setViewName("backstage/updatevideo");
		return modelAndView;
	}
//  修改
	@RequestMapping("/modifyvideo")
	public String allVideos(@RequestParam("file") CommonsMultipartFile file,Video video,HttpServletRequest request) throws IOException {
		String newVideoUrl=UploadImage.addImage(file, "/backstage/video", request);
		System.out.println(newVideoUrl);
		video.setVurl(newVideoUrl);
		videoService.updateVideo(video);
		
		return "redirect:/backstage/video/allvideo";
	}
//  删除
	@RequestMapping("/deletevideo")
	public String deleteVideosById(Integer id){
		videoService.deleteById(id);
		return "redirect:/backstage/video/allvideo";
	}
// 按条件查询
	@RequestMapping("/findvideos")
	public ModelAndView selectVideoByConditions(String queryVideoByConditions){
		List<Video> allVideos=videoService.queryByConditions(queryVideoByConditions);
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.addObject("allVideos", allVideos);
		modelAndView.setViewName("backstage/allvideoslist");
		return modelAndView;
	}
}
