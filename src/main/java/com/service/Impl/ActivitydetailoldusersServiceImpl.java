package com.service.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.bean.Activitydetailoldusers;
import com.dao.ActivitydetailoldusersMapper;
import com.service.ActivitydetailOldUsersService;

@Service("activitydetailOldUsersService")
public class ActivitydetailoldusersServiceImpl implements ActivitydetailOldUsersService{
@Autowired
@Qualifier("activitydetailoldusersMapper")
private ActivitydetailoldusersMapper activitydetailoldusersMapper;

@Override
public void insertSelective(Activitydetailoldusers record){
	// TODO Auto-generated method stub
	activitydetailoldusersMapper.insertSelective(record);
}

@Override
public void deleteByPrimaryKey(Integer id) {
	// TODO Auto-generated method stub
	 activitydetailoldusersMapper.deleteByPrimaryKey(id);;
}

@Override
public List<Activitydetailoldusers> findMyJoninActivies(Map map) {
	// TODO Auto-generated method stub
	return activitydetailoldusersMapper.findMyJoninActivies(map);
}

@Override
public void deleteMyJoninActivies(String uid) {
	// TODO Auto-generated method stub
	activitydetailoldusersMapper.deleteMyJoninActivies(uid);
}


@Override
public List<Activitydetailoldusers> queryWhetherJoinActivity(Map map) {
	// TODO Auto-generated method stub
	return activitydetailoldusersMapper.queryWhetherJoinActivity(map);
}

@Override
public List<Activitydetailoldusers> findJoinActiviyUsers(Map map) {
	// TODO Auto-generated method stub
	return activitydetailoldusersMapper.findJoinActiviyUsers(map);
}

@Override
public int getMyJoinActivityCount(String uid) {
	// TODO Auto-generated method stub
	return activitydetailoldusersMapper.getMyJoinActivityCount(uid);
}

@Override
public int getAllJoinActivityCount() {
	// TODO Auto-generated method stub
	return activitydetailoldusersMapper.getAllJoinActivityCount();
}

@Override
public int oneActivityJoinUserCount(Integer activityid) {
	// TODO Auto-generated method stub
	return activitydetailoldusersMapper.oneActivityJoinUserCount(activityid);
}

@Override
public List<Activitydetailoldusers> findOneActivityJoinUserDetails(Map map) {
	// TODO Auto-generated method stub
	return activitydetailoldusersMapper.findOneActivityJoinUserDetails(map);
}

@Override
public void deleteByActiviyId(Integer activityid) {
	// TODO Auto-generated method stub
	activitydetailoldusersMapper.deleteByActiviyId(activityid);
}


}
