package com.service;

import java.util.List;
import java.util.Map;

import com.bean.Activitydetailoldusers;

public interface ActivitydetailOldUsersService {
	//用户报名 
	  public void insertSelective(Activitydetailoldusers record);
	//取消报名
	public void deleteByPrimaryKey(Integer id);
	//查看参加记录
	public List<Activitydetailoldusers> findMyJoninActivies(Map map);
	//删除参加记录
	public void deleteMyJoninActivies(String uid);
	//参与活动的记录条数
	public int getMyJoinActivityCount();
	//是否参加了该活动
   public List<Activitydetailoldusers> queryWhetherJoinActivity(Map map);
}
