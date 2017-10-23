package com.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.bean.Matchdisease;
import com.dao.MatchdiseaseMapper;
import com.service.MatchdiseaseService;

@Service("matchdiseaseService")
public class MatchdiseaseServiceImpl implements MatchdiseaseService{
	@Autowired
	@Qualifier("matchdiseaseMapper")
	private MatchdiseaseMapper matchdiseaseMapper;

	@Override
	public List<Matchdisease> selectProductByDiseasesId(Integer did) {
		// TODO Auto-generated method stub
		return matchdiseaseMapper.selectProductByDiseasesId(did);
	}

}
