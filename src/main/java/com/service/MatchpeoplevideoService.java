package com.service;

import java.util.List;

import com.bean.Matchpeoplevideo;

public interface MatchpeoplevideoService {
	public List<Matchpeoplevideo> selectUsersByVideoId(Integer id);
    public List<Matchpeoplevideo> selectVideoByUid(String uid);
    public void addMatchvideo(Matchpeoplevideo matchpeoplevideo);
    public void updateMatchvideo(Matchpeoplevideo matchpeoplevideo);
    public void deleteMatchvideo(Integer id);
    public List<Matchpeoplevideo> queryVideoMatchdisease(Integer id);
    public List<Matchpeoplevideo> queryAllVideoMatchdisease();
    public List<Matchpeoplevideo> queryMatchByConditions(String queryVideomatchdisease);
    public Matchpeoplevideo queryVideotitle(Integer id);
}
