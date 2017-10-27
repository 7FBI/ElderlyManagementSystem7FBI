package com.service.Impl;

import java.util.List;

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
	public void updateLocalAreaById(Localarea localArea) {
		// TODO Auto-generated method stub
		localareaMapper.updateLocalAreaById(localArea);
	}

	@Override
	public void deleteLocalAreaById(Localarea localArea) {
		// TODO Auto-generated method stub
		localareaMapper.deleteLocalAreaById(localArea);
	}

	@Override
	public void addLocalArea(Localarea localArea) {
		// TODO Auto-generated method stub
		localareaMapper.addLocalArea(localArea);
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

}
