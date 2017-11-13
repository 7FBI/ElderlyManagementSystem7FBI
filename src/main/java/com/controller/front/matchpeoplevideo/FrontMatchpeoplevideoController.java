package com.controller.front.matchpeoplevideo;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Matchpeoplevideo;
import com.bean.OldUsers;
import com.service.MatchpeoplevideoService;
import com.service.OldDiseaselibraryService;
import com.service.VideoService;

@Controller
@RequestMapping("/front/matchpeoplbyevideo")
public class FrontMatchpeoplevideoController {
	@Autowired
	@Qualifier("matchpeoplevideoService")
	private MatchpeoplevideoService matchpeoplevideoService;
	@Autowired
	@Qualifier("oldDiseaselibraryService")
	private OldDiseaselibraryService oldDiseaselibraryService;
	@Autowired
	@Qualifier("videoService")
	private VideoService videoService;
	//为用户推荐视频
	@RequestMapping("/queryvideoforuser")
	public ModelAndView findVideoForUsers(HttpServletRequest request){
		ModelAndView model=new ModelAndView();
		if(request.getSession().getAttribute("oldUsers")!=null){
			OldUsers oldUsers=(OldUsers) request.getSession().getAttribute("oldUsers");
//			List<Matchpeoplevideo> matchpeoplebyvideolist=matchpeoplevideoService.selectVideoByUid(oldUsers.getUid());			
			List<Matchpeoplevideo> matchpeoplebyvideolist=matchpeoplevideoService.selectVideoByUid("wbq123");			
			model.addObject("matchpeoplebyvideolist", matchpeoplebyvideolist);
			model.setViewName("/front/educationalSystem");
		}	
		return model;
		
	}
}
