package com.service.Impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.bean.OldUsers;
import com.bean.Page;

import com.dao.OldUsersMapper;
import com.service.OldUsersService;
@Service("oldUsersService")
public class OldUsersServiceImpl implements OldUsersService {
	
	@Autowired
	@Qualifier("oldUsersMapper")
	private OldUsersMapper oldUsersMapper;

	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return oldUsersMapper.deleteByPrimaryKey(id);
	}

	@Override
	public void insert(OldUsers oldUsers) {
		
		 oldUsersMapper.insert(oldUsers);
	}
	@Override
	public void insertOldUsers(OldUsers oldUsers) {
		// TODO Auto-generated method stub
	
		oldUsersMapper.insertOldUsers(oldUsers);
	}
	
	@Override
	public int insertSelective(OldUsers record) {
		// TODO Auto-generated method stub
		return oldUsersMapper.insertSelective(record);
	}

	@Override
	public OldUsers selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return oldUsersMapper.selectByPrimaryKey(id);
	}
	@Override
	public List<OldUsers> queryUsers(){
		return oldUsersMapper.queryUsers();
	}
	
	@Override
	public int updateByPrimaryKeySelective( OldUsers record) {
		// TODO Auto-generated method stub
		return oldUsersMapper.updateByPrimaryKeySelective(record);
	}

	@Override

	public int updateByPrimaryKey( OldUsers record) {
		// TODO Auto-generated method stub
		return oldUsersMapper.updateByPrimaryKey(record);
	}
	public List<OldUsers> findUserNameById(OldUsers oldUsers){
		return oldUsersMapper.findUserNameById(oldUsers);
		
	}
	@Override
	public OldUsers selectByUid(String uid) {
		// TODO Auto-generated method stub
		return oldUsersMapper.selectByUid(uid);
	}

	@Override
	public void updateByUidSelective(OldUsers oldUsers) {
		// TODO Auto-generated method stub
		oldUsersMapper.updateByUidSelective(oldUsers);
		
	}
	
	@Override
	public void updatePasswordByUid(OldUsers oldUsers) {
		// TODO Auto-generated method stub
		oldUsersMapper.updatePasswordByUid(oldUsers);
		
	}

	@Override
	public List<OldUsers> selectByLikeUserName(Map map) {
		// TODO Auto-generated method stub
		return oldUsersMapper.selectByLikeUserName(map);
	}
	@Override
	public OldUsers queryByUid(String uid) {
		// TODO Auto-generated method stub
		return oldUsersMapper.queryByUid(uid);
	}
	   //修改用户信息
	public void modifyById(OldUsers oldUsers){
		 oldUsersMapper.modifyById(oldUsers);
		 
	}
	public OldUsers queryById(Integer id){
		return oldUsersMapper.queryById(id);
		}
	 //根据id删除用户基本信息以及相关的消费信息
    public void deleteUserById(OldUsers oldUsers){
    	oldUsersMapper.deleteUserById(oldUsers);
    }

	@Override
	public List<OldUsers> queryByConditions(String findbycondition) {
		// TODO Auto-generated method stub
		return oldUsersMapper.queryByConditions(findbycondition);
	}

	@Override
	public List<OldUsers> findAllUserByManager(Integer locaid) {
		// TODO Auto-generated method stub
		return oldUsersMapper.findAllUserByManager(locaid);
	}

	@Override
	public int getOldUsersCount() {
		// TODO Auto-generated method stub
		return oldUsersMapper.getOldUsersCount();
	}

	@Override
	public List<OldUsers> selectByTellOrUidOrIdcard(Map map) {
		// TODO Auto-generated method stub
		return oldUsersMapper.selectByTellOrUidOrIdcard(map);
	}

	@Override
	public List<OldUsers> findUserMap(Map map) {
		// TODO Auto-generated method stub
		return oldUsersMapper.findUserMap(map);
	}

	@Override
	public void watchVideo(Map map) {
		// TODO Auto-generated method stub
		oldUsersMapper.watchVideo(map);
	}

	@Override
	public void addUserMoney(OldUsers oldUsers) {
		// TODO Auto-generated method stub
		oldUsersMapper.addUserMoney(oldUsers);
	}

	

	
}
