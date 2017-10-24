package com.service.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.bean.OldUsers;
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
	public int insert(OldUsers record) {
		// TODO Auto-generated method stub
		return oldUsersMapper.insert(record);
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
	public int updateByPrimaryKeySelective( OldUsers record) {
		// TODO Auto-generated method stub
		return oldUsersMapper.updateByPrimaryKeySelective(record);
	}

	@Override

	public int updateByPrimaryKey( OldUsers record) {
		// TODO Auto-generated method stub
		return oldUsersMapper.updateByPrimaryKey(record);
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
	public List<OldUsers> selectByLikeUserName(Map map) {
		// TODO Auto-generated method stub
		return oldUsersMapper.selectByLikeUserName(map);
	}

}
