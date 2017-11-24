package com.controller.front.feedback;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Feedback;
import com.bean.Feedbackreplycount;
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
		Feedbackreplycount again=new Feedbackreplycount();
		List<Feedback> replynone=new ArrayList<Feedback>();
		List<Feedbackreplycount> replys=new ArrayList<Feedbackreplycount>();
		if(user!=null){
			String uid=user.getUid();
			replynone=feedbackService.selectBystatu0(uid);
			replys=feedbackService.selectByreplyfeedback(uid);
			for(int i=0;i<replys.size()-1;i++){
				 if(replys.get(i+1).getSpeaktime().after(replys.get(i).getSpeaktime())){
					 again=replys.get(i+1);
				 }else{
					 again=replys.get(i);
				 }
			}
			request.setAttribute("replynone", replynone);
			request.setAttribute("replys", replys);
			request.setAttribute("endtime", again);
		}
		return "front/Wefeedbackreply";	
	}
	
	/*官网首页用户反馈*/
	@RequestMapping("topfeedbackOiduser.action")
	public ModelAndView MainFeedbackreply(HttpServletRequest request){
		OldUsers user=(OldUsers) request.getSession().getAttribute("oldUsers");
		ModelAndView modelAndView = new ModelAndView();
		if(user!=null){
			modelAndView.setViewName("front/Feedbackpage");
			return modelAndView;
		}
		modelAndView.setViewName("front/login");
		return modelAndView;
	}
}
