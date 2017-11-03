package com.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.bean.Matchpeoplevideo;
import com.dao.MatchpeoplevideoMapper;
import com.service.MatchpeoplevideoService;
@Service("matchpeoplevideoService")
public class MatchpeoplevideoServiceImpl implements MatchpeoplevideoService{
@Autowired
@Qualifier("matchpeoplevideoMapper")
private MatchpeoplevideoMapper matchpeoplevideoMapper;
	@Override
	public List<Matchpeoplevideo> selectUsersByVideoId(Integer id) {
		// TODO Auto-generated method stub
		return matchpeoplevideoMapper.selectUsersByVideoId(id);
	}
	@Override
	public List<Matchpeoplevideo> selectVideoByUid(String uid) {
		// TODO Auto-generated method stub
		return matchpeoplevideoMapper.selectVideoByUid(uid);
	}

}
