package com.service.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.bean.Opinions;
import com.dao.OpinionsMapper;
import com.service.OpinionsService;
@Service("opinionsService")
public class OpinionsServiceImpl implements OpinionsService {
	
	@Autowired
	@Qualifier("opinionsMapper")
	private OpinionsMapper opinionsMapper;

	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return opinionsMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Opinions record) {
		// TODO Auto-generated method stub
		return opinionsMapper.insert(record);
	}

	@Override
	public int insertSelective(Opinions record) {
		// TODO Auto-generated method stub
		return opinionsMapper.insertSelective(record);
	}

	@Override
	public Opinions selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return opinionsMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Opinions record) {
		// TODO Auto-generated method stub
		return opinionsMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Opinions record) {
		// TODO Auto-generated method stub
		return opinionsMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Opinions> selectByPidOpinions(Map map) {
		// TODO Auto-generated method stub
		return opinionsMapper.selectByPidOpinions(map);
	}

	@Override
	public int selectByPidOpinionsCount(Map map) {
		// TODO Auto-generated method stub
		return opinionsMapper.selectByPidOpinionsCount(map);
	}

	@Override
	public double selectByPidOpinionsAvg(Integer pid) {
		// TODO Auto-generated method stub
		return opinionsMapper.selectByPidOpinionsAvg(pid);
	}

}
