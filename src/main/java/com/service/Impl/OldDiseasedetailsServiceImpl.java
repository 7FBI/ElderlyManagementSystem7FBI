package com.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.bean.OldDiseasedetails;
import com.dao.OldDiseasedetailsMapper;
import com.service.OldDiseasedetailsService;
@Service("oldDiseasedetailsService")
public class OldDiseasedetailsServiceImpl implements OldDiseasedetailsService {
	@Autowired
	@Qualifier("oldDiseasedetailsMapper")
	private OldDiseasedetailsMapper oldDiseasedetailsMapper;
	@Override
	public OldDiseasedetails selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return oldDiseasedetailsMapper.selectByPrimaryKey(id);
	}
	@Override
	public List<OldDiseasedetails> selectOldDiseasedetailsByUid(String uid) {
		// TODO Auto-generated method stub
		return oldDiseasedetailsMapper.selectOldDiseasedetailsByUid(uid);
	}

}
