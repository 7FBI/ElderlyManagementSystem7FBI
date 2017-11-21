package com.dao;

import java.util.List;

import com.bean.Feedback;

public interface FeedbackMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table feedback
     *
     * @mbggenerated
     */
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
    
}