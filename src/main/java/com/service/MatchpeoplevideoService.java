package com.service;

import java.util.List;

import com.bean.Matchpeoplevideo;

public interface MatchpeoplevideoService {
	 public List<Matchpeoplevideo> selectUsersByVideoId(Integer id);
	    public List<Matchpeoplevideo> selectVideoByUid(String uid);
}
