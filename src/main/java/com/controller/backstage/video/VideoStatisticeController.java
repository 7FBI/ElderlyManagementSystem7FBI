package com.controller.backstage.video;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bean.Video;
import com.service.VideoService;

@Controller
@RequestMapping("/backstage/statistics/video")
public class VideoStatisticeController {
	@Autowired
	@Qualifier("videoService")
	private VideoService videoService;
	
	@RequestMapping("/videoYearInfo")
	@ResponseBody
	public Map<String, Object> videoYearInfo(HttpServletRequest request){
		Map<String, Object> map=new HashMap<String, Object>();
		Integer id=0;
		if (request.getParameter("id")==null || "".equals(request.getParameter("id"))) {
			return null;
		}
		id=Integer.valueOf(request.getParameter("id"));
		Video video=videoService.selectVideoByIdFX(id);
		if (video==null) {
			video=new Video();
			Date date=new Date();
			video.setDatesYear(date);
		}
		map.put("videos", video);
		return map;
	}
	

}
