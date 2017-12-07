package com.controller.front.activitydetailinfo;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Activepicutre;
import com.bean.Activitydetailinfo;
import com.service.ActivepicutreService;
import com.service.ActivitydetailinfoService;

@Controller
@RequestMapping("/front/activity")
public class ActivityDetailInfoController {
@Autowired
@Qualifier("activitydetailinfoService")
private ActivitydetailinfoService activitydetailinfoService;
@Autowired
@Qualifier("activepicutreService")
private ActivepicutreService activepicutreService;

//所有的活动
@RequestMapping("/allActive")
public ModelAndView queryAllActiveInfo(HttpServletRequest request){
	ModelAndView modelAndView=new ModelAndView();
	Map<String,Object>map=new HashMap<String, Object>();
	Integer max=8;
	Integer page=0;
	Integer counts=0;
	if(request.getParameter("page")!=null){
		page=Integer.valueOf(request.getParameter("page"));
	}
	if(page<=0){
		page=0;
	}
	counts = activitydetailinfoService.getActivityCount() / max;
	System.out.println(counts);
	if(counts<=0){
		counts=0;
	}
	if(page>=counts){
		page=counts;
	}
	map.put("page", page * max);
	map.put("max", max);
	List<Activitydetailinfo> allActivities=activitydetailinfoService.findAllActiveInfo(map);
	//List<Activepicutre> allActivitiyPicture=new ArrayList<Activepicutre>();
	List<Activitydetailinfo> allActivitiyAndPicture=new ArrayList<Activitydetailinfo>();
	for(Activitydetailinfo activitydetailinfo:allActivities){
		Integer activityId=activitydetailinfo.getId();
		List<Activepicutre> activepicutre=activepicutreService.selectPictureByActivityId(activityId);
		if(activepicutre.size()>0){
			 modelAndView.addObject("onePicture", activepicutre.get(0));
			 activitydetailinfo.setActiveimageurl(activepicutre.get(0).getActiveimageurl());
			 Date stoptime=(Date)activitydetailinfo.getActitvityendtime();
				Date nowdate=new Date();
				if(stoptime.getTime()<nowdate.getTime()){
					activitydetailinfo.setActivityStatus(0);
					System.out.println("活动已结束");
				}else{
					activitydetailinfo.setActivityStatus(1);
					System.out.println("火热进行中");
				}
			 allActivitiyAndPicture.add(activitydetailinfo);
		}
	}
	//allActivitiyAndPicture.addAll(allActivities);
	modelAndView.addObject("allActivitiyAndPicture", allActivitiyAndPicture);
	modelAndView.addObject("page", page);
	modelAndView.addObject("counts", counts);
	modelAndView.setViewName("front/activity/allactivityinfo");
	return modelAndView;
}
//活动详情
@RequestMapping("/activeDetailInfo")
public ModelAndView queryactiveDetail(Integer id){
	System.out.println("---活动ID---"+id);
	ModelAndView modelAndView=new ModelAndView();
	Activitydetailinfo activiteDetail=activitydetailinfoService.findactiveDetailById(id);
	modelAndView.addObject("activiteDetail", activiteDetail);
	List<Activepicutre> activepicutre=activepicutreService.selectPictureByActivityId(id);
	System.out.println("活动图片"+activepicutre.size());
	modelAndView.addObject("activepicutre", activepicutre);
	modelAndView.setViewName("front/activity/activitydetail");
	return modelAndView;
}

//最新活动
@RequestMapping("/newActive")
public ModelAndView queryNewActiveInfo(){
	ModelAndView modelAndView=new ModelAndView();
	List<Activitydetailinfo> allNewActivities=activitydetailinfoService.findNewActiveInfo();
	List<Activitydetailinfo> newActivities=new ArrayList<Activitydetailinfo>();
	for(Activitydetailinfo oneNewActivities:allNewActivities){
		Integer activityId=oneNewActivities.getId();
		List<Activepicutre> activepicutre=activepicutreService.selectPictureByActivityId(activityId);
		if(activepicutre.size()>0){
			 modelAndView.addObject("onePicture", activepicutre.get(0));
			 oneNewActivities.setActiveimageurl(activepicutre.get(0).getActiveimageurl());
			 newActivities.add(oneNewActivities);
	     }
	  modelAndView.addObject("newActivities", newActivities);
	  modelAndView.setViewName("front/index");
    }
	return modelAndView;
   }

}