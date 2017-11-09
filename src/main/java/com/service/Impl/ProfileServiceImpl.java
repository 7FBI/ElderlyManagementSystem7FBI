package com.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.bean.Profile;
import com.dao.ProfileMapper;
import com.service.ProfileService;

@Service("profileService")
public class ProfileServiceImpl implements ProfileService {
	
	@Autowired
	@Qualifier("profileMapper")
	private ProfileMapper profileMapper;

	@Override
	public void insertProfileByUid(Profile profile) {
		// TODO Auto-generated method stub
		profileMapper.insertProfileByUid(profile);
		
	}

	@Override
	public List<Profile> selectProfileByUid(String uid) {
		// TODO Auto-generated method stub
		return profileMapper.selectProfileByUid(uid);
	}

	@Override
	public void updateAddressByPrimarykey(Profile profile) {
		// TODO Auto-generated method stub
		profileMapper.updateAddressByPrimarykey(profile);
	}

	@Override
	public Profile selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return profileMapper.selectByPrimaryKey(id);
	}

	@Override
	public void deleteAddressByPrimarykey(Integer id) {
		// TODO Auto-generated method stub
		profileMapper.deleteAddressByPrimarykey(id);
		
	}

}
