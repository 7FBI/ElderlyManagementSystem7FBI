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
		@Override
		public void addMatchvideo(Matchpeoplevideo matchpeoplevideo) {
			// TODO Auto-generated method stub
			matchpeoplevideoMapper.addMatchvideo(matchpeoplevideo);
		}
		@Override
		public void updateMatchvideo(Matchpeoplevideo matchpeoplevideo) {
			// TODO Auto-generated method stub
			matchpeoplevideoMapper.updateMatchvideo(matchpeoplevideo);
		}
		@Override
		public void deleteMatchvideo(Integer id) {
			// TODO Auto-generated method stub
			matchpeoplevideoMapper.deleteMatchvideo(id);
		}
		@Override
		public List<Matchpeoplevideo> queryVideoMatchdisease(Integer id) {
			// TODO Auto-generated method stub
			return matchpeoplevideoMapper.queryVideoMatchdisease(id);
		}
		@Override
		public List<Matchpeoplevideo> queryAllVideoMatchdisease() {
			// TODO Auto-generated method stub
			return matchpeoplevideoMapper.queryAllVideoMatchdisease();
		}
		@Override
		public List<Matchpeoplevideo> queryMatchByConditions(String queryVideomatchdisease) {
			// TODO Auto-generated method stub
			return matchpeoplevideoMapper.queryMatchByConditions(queryVideomatchdisease);
		}
		@Override
		public Matchpeoplevideo queryVideotitle(Integer id) {
			// TODO Auto-generated method stub
			return matchpeoplevideoMapper.queryVideotitle(id);
		}
		

}
