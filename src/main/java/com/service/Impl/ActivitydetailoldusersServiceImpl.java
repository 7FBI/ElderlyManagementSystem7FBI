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
public int getMyJoinActivityCount() {
	// TODO Auto-generated method stub
	return activitydetailoldusersMapper.getMyJoinActivityCount();
}

@Override
public List<Activitydetailoldusers> queryWhetherJoinActivity(Map map) {
	// TODO Auto-generated method stub
	return activitydetailoldusersMapper.queryWhetherJoinActivity(map);
}


}
