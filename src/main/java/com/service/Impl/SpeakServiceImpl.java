package com.service.Impl;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.Speak;
import com.dao.SpeakMapper;
import com.service.SpeakService;
@Service("speakService")
public class SpeakServiceImpl implements SpeakService {
	@Autowired
	@Qualifier("speakMapper")
	private SpeakMapper speakMapper;

	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return speakMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Speak record) {
		// TODO Auto-generated method stub
		return speakMapper.insert(record);
	}

	@Override
	public int insertSelective(Speak record) {
		// TODO Auto-generated method stub
		return speakMapper.insertSelective(record);
	}

	@Override
	public Speak selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return speakMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Speak record) {
		// TODO Auto-generated method stub
		return speakMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Speak record) {
		// TODO Auto-generated method stub
		return speakMapper.updateByPrimaryKey(record);
	}

}
