package com.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.bean.Profile;

@Service
public interface ProfileService {
	Profile selectByPrimaryKey(Integer id);

	public void insertProfileByUid(Profile profile);

	public List<Profile> selectProfileByUid(String uid);

	public void updateAddressByPrimarykey(Profile profile);

	public void deleteAddressByPrimarykey(Integer id);

}
