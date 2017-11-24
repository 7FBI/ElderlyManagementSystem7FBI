package com.bean;

import java.util.Date;

public class Feedbackreplycount extends Feedback {
	
	private String replyinformation;
	private Date time;
	public String getReplyinformation() {
		return replyinformation;
	}
	public void setReplyinformation(String replyinformation) {
		this.replyinformation = replyinformation;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}

}
