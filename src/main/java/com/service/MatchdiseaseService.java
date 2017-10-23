package com.service;

import java.util.List;

import com.bean.Matchdisease;

public interface MatchdiseaseService {
	public List<Matchdisease> selectProductByDiseasesId(Integer did);

}
