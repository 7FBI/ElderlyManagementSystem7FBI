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
	public int getMyJoinActivityCount(String uid);
	//所有参与活动的记录条数
	public int getAllJoinActivityCount();
	//是否参加了该活动
   public List<Activitydetailoldusers> queryWhetherJoinActivity(Map map);
//   后台查询报名人员
   public List<Activitydetailoldusers> findJoinActiviyUsers(Map map);
//   某条活动参与的人数
   public int oneActivityJoinUserCount(Integer activityid);
 //查询某一活动的用户参与情况
 	public List<Activitydetailoldusers> findOneActivityJoinUserDetails(Map map);
	//根据活动id删除该活动的所有用户报名记录
 	public void deleteByActiviyId(Integer activityid);
 
}
