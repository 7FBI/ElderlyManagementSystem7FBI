package com.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.bean.Friend;
import com.dao.FriendMapper;
import com.service.FriendService;

@Service("friendService")
public class FriendServiceImpl implements FriendService {
	@Autowired
	@Qualifier("friendMapper")
	private FriendMapper friendMapper;

	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return friendMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Friend record) {
		// TODO Auto-generated method stub
		return friendMapper.insert(record);
	}

	@Override
	public int insertSelective(Friend record) {
		// TODO Auto-generated method stub
		return friendMapper.insertSelective(record);
	}

	@Override
	public Friend selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return friendMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Friend record) {
		// TODO Auto-generated method stub
		return friendMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Friend record) {
		// TODO Auto-generated method stub
		return friendMapper.updateByPrimaryKey(record);
	}

	@Override
	public int deleteByFriend(Friend record) {
		// TODO Auto-generated method stub
		return friendMapper.deleteByFriend(record);
	}

	@Override
	public List<Friend> selectByUidHeadFriends(String uidhead) {
		// TODO Auto-generated method stub
		return friendMapper.selectByUidHeadFriends(uidhead);
	}

}
