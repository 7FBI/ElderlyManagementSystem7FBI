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

	@Override
	public List<Matchdisease> queryProductByUid(String uid) {
		// TODO Auto-generated method stub
		return matchdiseaseMapper.queryProductByUid(uid);
	}

	@Override
	public List<Matchdisease> queryOldUserDiseaseDetails(String uid) {
		// TODO Auto-generated method stub
		return matchdiseaseMapper.queryOldUserDiseaseDetails(uid);
	}

	@Override
	public void insertMatch(Matchdisease matchdisease) {
		// TODO Auto-generated method stub
		matchdiseaseMapper.insert(matchdisease);
		
	}

	@Override
	public List<Matchdisease> selectByDiseasesId(Integer id) {
		// TODO Auto-generated method stub
		return matchdiseaseMapper.selectByDiseasesId(id);
	}

	@Override
	public void removeMatch(Integer mid) {
		// TODO Auto-generated method stub
		matchdiseaseMapper.deleteByPrimaryKey(mid);
	}

}
