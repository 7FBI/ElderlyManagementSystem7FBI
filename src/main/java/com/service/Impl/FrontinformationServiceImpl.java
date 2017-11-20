package com.service.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.bean.Frontinformation;
import com.dao.FrontinformationMapper;
import com.service.FrontinformationService;
@Service("frontinformationService")
public class FrontinformationServiceImpl implements FrontinformationService {
	@Autowired
	@Qualifier("frontinformationMapper")
	private FrontinformationMapper frontinformationMapper;

	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return frontinformationMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Frontinformation record) {
		// TODO Auto-generated method stub
		return frontinformationMapper.insert(record);
	}

	@Override
	public int insertSelective(Frontinformation record) {
		// TODO Auto-generated method stub
		return frontinformationMapper.insertSelective(record);
	}

	@Override
	public Frontinformation selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return frontinformationMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Frontinformation record) {
		// TODO Auto-generated method stub
		return frontinformationMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Frontinformation record) {
		// TODO Auto-generated method stub
		return frontinformationMapper.updateByPrimaryKey(record);
	}

	@Override
	public Frontinformation selectByKey(Integer id) {
		// TODO Auto-generated method stub
		return frontinformationMapper.selectByKey(id);
	}

	@Override
	public List<Frontinformation> selectByMid(Map map) {
		// TODO Auto-generated method stub
		return frontinformationMapper.selectByMid(map);
	}

	@Override
	public int selectByMidCount(Map map) {
		// TODO Auto-generated method stub
		return frontinformationMapper.selectByMidCount(map);
	}

	@Override
	public List<String> selectAllKinds(Map map) {
		// TODO Auto-generated method stub
		return frontinformationMapper.selectAllKinds(map);
	}

	@Override
	public List<Frontinformation> selectAll() {
		// 返回信息表中所有的信息
		return frontinformationMapper.selectAll();
	}

	@Override
	public List<Frontinformation> selectFour() {
		// 返回信息表中最新的4条信息，用于轮播展示
		return frontinformationMapper.selectFour();
	}

}
