package com.service;

import java.util.List;
import java.util.Map;

import com.bean.Matchpeoplevideo;

public interface MatchpeoplevideoService {
	public List<Matchpeoplevideo> selectUsersByVideoId(Integer id);
    public List<Matchpeoplevideo> selectVideoByUid(String uid);
    public void addMatchvideo(Matchpeoplevideo matchpeoplevideo);
    public void updateMatchvideo(Matchpeoplevideo matchpeoplevideo);
    public void deleteMatchvideo(Integer id);
    public List<Matchpeoplevideo> queryVideoMatchdisease(Map map);
    public int oneVideoMatchDiseaseCount(Integer videoid);
    public List<Matchpeoplevideo> queryAllVideoMatchdisease();
    public List<Matchpeoplevideo> queryMatchByConditions(String queryVideomatchdisease);
    public Matchpeoplevideo queryVideotitle(Integer id);
    public Matchpeoplevideo selectByPrimaryKey(Integer id);
//  分页
  public List<Matchpeoplevideo> matchVideoCutPage(Map map);
  public int matchVideoCount();
  public List<Matchpeoplevideo> queryMatchdiseaseByVideo(Integer vid);
}
