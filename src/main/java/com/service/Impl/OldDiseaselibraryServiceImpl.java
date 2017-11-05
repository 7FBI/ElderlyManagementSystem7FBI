package com.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.bean.OldDiseaselibrary;
import com.dao.OldDiseaselibraryMapper;
import com.service.OldDiseaselibraryService;
@Service("oldDiseaselibraryService")
public class OldDiseaselibraryServiceImpl implements OldDiseaselibraryService{
    @Autowired
    @Qualifier("oldDiseaselibraryMapper")
    private OldDiseaselibraryMapper oldDiseaselibraryMapper;
	@Override
	public List<OldDiseaselibrary> selectAllDiseaselibrary() {
		// TODO Auto-generated method stub
		return oldDiseaselibraryMapper.selectAllDiseaselibrary();
	}
	@Override
	public void addDiseaselibrary(OldDiseaselibrary oldDiseaselibrary) {
		// TODO Auto-generated method stub
		oldDiseaselibraryMapper.insertSelective(oldDiseaselibrary);
		
	}
	@Override
	public void deleteDiseaselibraryById(Integer id) {
		// TODO Auto-generated method stub
		oldDiseaselibraryMapper.deleteByPrimaryKey(id);
	}
	@Override
	public void updateDiseaselibraryById(OldDiseaselibrary oldDiseaselibrarys) {
		// TODO Auto-generated method stub
		oldDiseaselibraryMapper.updateByPrimaryKeySelective(oldDiseaselibrarys);
	}
	@Override
	public List<OldDiseaselibrary> selectDiseaselibrary(String key) {
		// TODO Auto-generated method stub
		return oldDiseaselibraryMapper.selectDiseaselibrary(key);
	}
	@Override
	public OldDiseaselibrary getDiseaseIdByName(String name) {
		// TODO Auto-generated method stub
		return oldDiseaselibraryMapper.getDiseaseIdByName(name);
	}
	@Override
	public OldDiseaselibrary selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return oldDiseaselibraryMapper.selectByPrimaryKey(id);
	}

}
