package com.service.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.bean.Localarea;
import com.dao.LocalareaMapper;
import com.service.LocalAreaService;

@Service("localAreaService")
public class LocalAreaServiceImpl implements LocalAreaService{
@Autowired
@Qualifier("localareaMapper")
private LocalareaMapper localareaMapper;
	@Override
	public int updateLocalAreaById(Localarea localArea) {
		// TODO Auto-generated method stub
		return localareaMapper.updateLocalAreaById(localArea);
	}

	@Override
	public int deleteLocalAreaById(Localarea localArea) {
		// TODO Auto-generated method stub
		return localareaMapper.deleteLocalAreaById(localArea);
	}

	@Override
	public int addLocalArea(Localarea localArea) {
		// TODO Auto-generated method stub
		return localareaMapper.addLocalArea(localArea);
	}

	@Override
	public List<Localarea> findAllLocalArea() {
		// TODO Auto-generated method stub
		//List<Localarea> localAreas =localareaMapper.findAllLocalArea();
		return localareaMapper.findAllLocalArea();
	}

	@Override
	public List<Localarea> findLocalAreaByRecord(Localarea localArea) {
		// TODO Auto-generated method stub
		List<Localarea> localAreas=localareaMapper.findLocalAreaByRecord(localArea);
		return localAreas;
	}

	@Override
	public int insert(Localarea record) {
		// TODO Auto-generated method stub
		return localareaMapper.insert(record);
	}

	@Override
	public int updateByPrimaryKey(Localarea record) {
		// TODO Auto-generated method stub
		return localareaMapper.updateByPrimaryKey(record);
	}

	@Override
	public Localarea selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return localareaMapper.selectByPrimaryKey(id);
	}

	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return localareaMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int findAllCounts() {
		// TODO Auto-generated method stub
		return localareaMapper.findAllCounts();
	}

	@Override
	public List<Localarea> findAllLocalAreaMap(Map map) {
		// TODO Auto-generated method stub
		return localareaMapper.findAllLocalAreaMap(map);
	}

}
