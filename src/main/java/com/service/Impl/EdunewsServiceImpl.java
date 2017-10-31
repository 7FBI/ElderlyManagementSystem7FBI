package com.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;


import com.bean.Edunews;
import com.dao.EdunewsMapper;
import com.service.EdunewsService;

@Service("edunewsService")
public class EdunewsServiceImpl implements EdunewsService{

	@Autowired
	@Qualifier("edunewsMapper")
	private EdunewsMapper edunewsMapper;

	@Override
	public void addEdu(Edunews edunews) {
		// TODO Auto-generated method stub
		edunewsMapper.addEdu(edunews);
	}

	@Override
	public void deleteEduById(Integer id) {
		// TODO Auto-generated method stub
		edunewsMapper.deleteEduById(id);
	}

	@Override
	public void updateEduById(Edunews edunews) {
		// TODO Auto-generated method stub
		edunewsMapper.updateEduById(edunews);
	}

	@Override
	public Edunews selectEduById(Integer id) {
		// TODO Auto-generated method stub
		return edunewsMapper.selectEduById(id);
	}

	@Override
	public List<Edunews> selectAllEdu() {
		// TODO Auto-generated method stub
		return edunewsMapper.selectAllEdu();
	}

	@Override
	public List<Edunews> queryEduByConditions(String findEduByConditions) {
		// TODO Auto-generated method stub
		return edunewsMapper.queryEduByConditions(findEduByConditions);
	}
	

}
