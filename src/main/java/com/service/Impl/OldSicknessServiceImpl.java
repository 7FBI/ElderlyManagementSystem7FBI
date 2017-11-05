package com.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import com.bean.OldSickness;
import com.dao.OldSicknessMapper;
import com.service.OldSicknessService;

@Service("oldSicknessService")
public class OldSicknessServiceImpl implements OldSicknessService{
    @Autowired
    @Qualifier("oldSicknessMapper")
    private OldSicknessMapper oldSicknessMapper;
	@Override
	public List<OldSickness> selectOldSicknesses(Integer oldDiseasedetail_id) {
		// TODO Auto-generated method stub
		return oldSicknessMapper.selectOldSicknessByoldDiseasedetailIid(oldDiseasedetail_id);
	}
	@Override
	public void insertSelective(OldSickness oldSickness) {
		// TODO Auto-generated method stub
		oldSicknessMapper.insertSelective(oldSickness);
	}
	@Override
	public void deleteOldSicknessByoldDiseasedetailId(Integer detailid) {
		// TODO Auto-generated method stub
		oldSicknessMapper.deleteOldSicknessByoldDiseasedetailId(detailid);
	}
	
}