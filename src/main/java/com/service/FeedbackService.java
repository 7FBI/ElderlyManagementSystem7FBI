package com.service;

import java.util.List;

import com.bean.Feedback;
import com.bean.FeedbackUser;

public interface FeedbackService {
    /*根据id删除反馈信息*/
	public void deleteByPrimaryKey(Integer id);
	/*插入反馈信息*/
    public void insert(Feedback record);
    /*插入反馈信息*/
    public void insertSelective(Feedback record);
     /*根据id查找反馈信息*/
    public Feedback selectByPrimaryKey(Integer id);
    /* 根据反馈id修改用户反馈信息*/
   public void updateByPrimaryKeySelective(Feedback record);
   /*修改用户反馈信息状态为已读*/
   public void updateByidtochangstatus(int id);
   
   /* 查询用户的所有反馈信息*/
   public List<Feedback> selectByuid(String uid);
   
   /*根据uid删除所有的用户反馈信息*/
   public void delectByuid(String uid);
   /* 未读反馈信息数量*/
   public  int selectcountstatus();
   /*未回复信息*/
   public List<FeedbackUser> selectBystatus();
   /* 已回复信息*/
   public List<FeedbackUser> selectBystatustoone();
   
}
