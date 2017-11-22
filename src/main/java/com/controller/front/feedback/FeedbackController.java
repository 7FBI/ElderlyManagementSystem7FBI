package com.controller.front.feedback;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Feedback;
import com.bean.OldUsers;
import com.service.FeedbackService;

@Controller
@RequestMapping("/front/feedback")
public class FeedbackController {
	
	@Autowired
	@Qualifier("feedbackService")
	private FeedbackService feedbackService;
	
	/*用户反馈提交*/
	@RequestMapping("/insertoutfeedback.action")
	@ResponseBody
	public String insertFeedback(HttpServletRequest request,Feedback feed,String username,String telephone){
		if(feed!=null){
			if(feed.getUid()!=""){
				Date date=new Date();
				feed.setSpeaktime(date);
				feedbackService.insertSelective(feed);
				return "ture";
				}
		} 
		return "false";
	} 
	
	/*用户提交商品反馈*/
	@RequestMapping("/insertfeedproducts.action")
	@ResponseBody
	public String insertFeedbackproduct(HttpServletRequest request,Feedback feed,String username,String telephone,MultipartFile[] graphTheorise){
		 if(feed.getUid()!=""){
			 System.out.println("*******************************");
			 System.out.println(feed.getUid());
			 System.out.println("*******************************");
			 Date date=new Date();
			 feed.setSpeaktime(date);
			  feedbackService.insertSelective(feed);
			  return "ture";
		 }	
		return "false";	
	}
	
	/*用户进入我的反馈*/
	@RequestMapping("/selecttofeedbackreply.action")
	public String selectTofeedbackreply(HttpServletRequest request){
		OldUsers user=(OldUsers) request.getSession().getAttribute("oldUsers");
		if(user!=null){
			
		}
		return "front/Wefeedbackreply";
		
	}
}
