package com.service;

import com.bean.Feedbackreply;

public interface FeedbackreplyService {
   public void deleteByPrimaryKey(Integer id);
   public void insert(Feedbackreply record);
   public void insertSelective(Feedbackreply record);
   public Feedbackreply selectByPrimaryKey(Integer id);
    /* 修改回复表*/
   public void updateByPrimaryKeySelective(Feedbackreply record);
   /*根据反馈id再次修改回复表内容*/
   public void updateByfid(Feedbackreply record);
}
