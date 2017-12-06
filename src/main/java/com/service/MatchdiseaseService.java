package com.service;

import java.util.List;

import com.bean.Matchdisease;

public interface MatchdiseaseService {
	public List<Matchdisease> selectProductByDiseasesId(Integer did);
	 public List<Matchdisease> queryProductByUid(String uid);
	 public List<Matchdisease> queryOldUserDiseaseDetails(String uid);
	 public void insertMatch(Matchdisease matchdisease);
	public List<Matchdisease> selectByDiseasesId(Integer id);
	public void removeMatch(Integer mid);
}
