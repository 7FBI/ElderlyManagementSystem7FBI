package com.controller.backstage.feedbackreply;

 
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Feedback;
import com.bean.FeedbackUser;
import com.bean.Feedbackreply;
import com.service.FeedbackService;
import com.service.FeedbackreplyService;

@Controller
@RequestMapping("/backstage/feedbackreply")
public class FeedbackreplyController {

	@Autowired
	private FeedbackreplyService feedbackreplyService;
	
	@Autowired
	private FeedbackService feedbackService;
	
	@RequestMapping(value="/selectfeedbackreply.action")
	public ModelAndView selectByfeedbackreplay(){
		List<FeedbackUser> feedback1=new ArrayList<FeedbackUser>();
		List<FeedbackUser> feedback2=new ArrayList<FeedbackUser>();
		/*未回复反馈信息*/
		feedback1=feedbackService.selectBystatus();
		/*已回复反馈信息*/
		feedback2=feedbackService.selectBystatustoone();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("feedback1",feedback1);
		modelAndView.addObject("feedback2",feedback2);
		modelAndView.setViewName("backstage/feedbackprocessing");
		return modelAndView;
	}
	
	@RequestMapping(value="/updateto.action")
	public ModelAndView Tofeedbackreply(HttpServletRequest request,int fid,String username,String tell){
		Feedback feedbck=new Feedback();
		feedbck=feedbackService.selectByPrimaryKey(fid);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("feedbck",feedbck);
		modelAndView.addObject("username",username);
		modelAndView.addObject("tell",tell);
		modelAndView.setViewName("backstage/replyfeedback");
		return modelAndView;
	}
	@RequestMapping(value="/replytoUser.action")
	public String ReplyUsers(HttpServletRequest request,Feedbackreply feedbackreply){
		if(feedbackreply.getContent()!=null){
			int fid=feedbackreply.getFid();
			Date speaktime=new Date();
			feedbackreply.setSpeaktime(speaktime);
			feedbackService.updateByidtochangstatus(fid);
			feedbackreplyService.insertSelective(feedbackreply);
			return "ture";
		}
		return "false";	
	}
	
}
