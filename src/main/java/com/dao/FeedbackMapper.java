package com.dao;

import java.util.List;

import com.bean.Feedback;
import com.bean.FeedbackUser;

public interface FeedbackMapper {
    
    void deleteByPrimaryKey(Integer id);  
    void insert(Feedback record);
    void insertSelective(Feedback record);
    Feedback selectByPrimaryKey(Integer id);

    
     /* 根据反馈id修改用户反馈信息*/
    void updateByPrimaryKeySelective(Feedback record);
     /*修改用户反馈信息状态*/
    void updateByidtochangstatus(int id);
     /* 查询用户的所有反馈信息*/
    List<Feedback> selectByuid(String uid);
     /*   根据uid删除所有的用户反馈信息*/
    void delectByuid(String uid);
   /* 未读反馈信息数量*/
    int selectcountstatus();
    /*未回复信息*/
    List<FeedbackUser> selectBystatus();
    /* 已回复信息*/
    List<FeedbackUser> selectBystatustoone();
    
   /* 用户已回复反馈*/
   List<Feedback> selectBystatus1(String uid);
   
   /* 用户未回复反馈*/
   List<Feedback> selectBystatu0(String uid);
    
}