package com.controller.front.video;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Edunews;
import com.bean.Matchpeoplevideo;
import com.bean.OldUsers;
import com.bean.Video;
import com.service.MatchpeoplevideoService;
import com.service.VideoService;

@Controller
@RequestMapping("/front/videos")
public class FrontVideoController {
	@Autowired
	@Qualifier("videoService")
	private VideoService videoService;
	@Autowired
	@Qualifier("matchpeoplevideoService")
	private MatchpeoplevideoService matchpeoplevideoService;
//	视频列表
	@RequestMapping("/allvideo")
	public ModelAndView allVideos(HttpServletRequest request){
		ModelAndView modelAndView=new ModelAndView();
		/*if(request.getSession().getAttribute("managerinfo")==null){
			modelAndView.setViewName("backstage/loginWTF");
			return modelAndView;
		}*/
		//推荐视频
		//if(request.getSession().getAttribute("oldUsers")!=null){
			//OldUsers oldUsers=(OldUsers) request.getSession().getAttribute("oldUsers");
//			List<Matchpeoplevideo> matchpeoplebyvideolist=matchpeoplevideoService.selectVideoByUid(oldUsers.getUid());			
			List<Matchpeoplevideo> matchpeoplebyvideolist=matchpeoplevideoService.selectVideoByUid("wbq123");			
			modelAndView.addObject("matchpeoplebyvideolist", matchpeoplebyvideolist);
			//modelAndView.setViewName("/front/educationalSystem");
		
		
		//视频列表
		modelAndView.setViewName("/front/educationSystem");
		Map<String,Object> map=new HashMap<String, Object>();
		Integer max=10;
		Integer page=0;
		Integer counts=0;
//		当前页
		if (request.getParameter("page")!=null) {
					page=Integer.valueOf(request.getParameter("page"));
				}
		if(page<0){
			page=0;
		}
		counts=videoService.videoCount()/max;
		if(counts<=0){
			counts=0;
		}
		if(page>=counts){
			page=counts;
		}
		map.put("page", page*max);
		map.put("max", max);
		List<Video> oldallVideos=videoService.findVieoMap(map);
	    List<Video> allVideos=new ArrayList<Video>();
	    for(Video videos:oldallVideos){
	    	String newvcontent=videos.getVcontent();
	    	videos.setVcontent(newvcontent.substring(0, 4));
	    	allVideos.add(videos);
	    }
		modelAndView.addObject("allVideos", allVideos);
		modelAndView.addObject("page", page);
		modelAndView.addObject("counts", counts);
		//}
		return modelAndView;
	}
//	根据id查询
	@RequestMapping("/selectvideobyid")
	public ModelAndView selectvideoById(Integer id){
		Video oneVideoById=videoService.queryOneVideo(id);
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.addObject("oneVideoById", oneVideoById);
		modelAndView.setViewName("front/educational/frontvideodetail");
		return modelAndView;
	}
	// 按条件查询
		@RequestMapping("/findvideos")
		public ModelAndView selectVideoByConditions(String queryVideoByConditions){
			List<Video> oldallVideos=videoService.queryByConditions(queryVideoByConditions);
			List<Video> allVideos=new ArrayList<Video>();
			for(Video videos:oldallVideos){
				String newVcontent=videos.getVcontent();
				videos.setVcontent(newVcontent.substring(0, 4));
				allVideos.add(videos);
			}
			ModelAndView modelAndView=new ModelAndView();
			modelAndView.addObject("allVideos", allVideos);
			modelAndView.setViewName("front/educationSystem");
			return modelAndView;
		}
		
		//查询所有免费的
		@RequestMapping("/allfreevideo")
		public ModelAndView selectAllfreevideo(HttpServletRequest request){
			ModelAndView modelAndView =new ModelAndView();
//			if(request.getSession().getAttribute("oldUsers")==null){
//				modelAndView.setViewName("/front/login");
//				return modelAndView;
//			}
			modelAndView.setViewName("/front/educationSystem");
			Map<String,Object>map=new HashMap<String, Object>();
			Integer max=1;
			Integer page=0;
			Integer counts=0;
			//当前页
			if(request.getParameter("page")!=null){
				page=Integer.valueOf(request.getParameter("page"));
			}
			if(page<=0){
				page=0;
			}
			counts=videoService.freeCount()/max;
			if(counts<=0){
				counts=0;
			}
			if(page>=counts){
				page=counts;
			}
			map.put("page", page*max);
			map.put("max", max);
//			List <Edunews> alledunews=edunewsService.selectAllEdu();
			List <Video> allvideos=videoService.freePrice(map);
			List <Video> freevideo=new ArrayList<Video>();
			for(Video video:allvideos){
				String newvideoContent=video.getVcontent();
				video.setVcontent(newvideoContent.substring(0,5));
				freevideo.add(video);
			}
			modelAndView.addObject("freevideo", freevideo);
			modelAndView.addObject("page", page);
			modelAndView.addObject("counts", counts);
			return modelAndView;
		}
}
