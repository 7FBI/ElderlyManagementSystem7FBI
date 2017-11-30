package com.service;

import java.util.List;
import java.util.Map;

import com.bean.OldDiseaselibrary;


public interface OldDiseaselibraryService {

	List<OldDiseaselibrary> selectAllDiseaselibrary(Map map);
    public int selectDiseaselibraryCount();
    public List<OldDiseaselibrary> findAllDiseaselibrary();
	void addDiseaselibrary(OldDiseaselibrary oldDiseaselibrary);

	void deleteDiseaselibraryById(Integer id);

	void updateDiseaselibraryById(OldDiseaselibrary oldDiseaselibrarys);

	List<OldDiseaselibrary> selectDiseaselibrary(String key);

	OldDiseaselibrary getDiseaseIdByName(String name);

	OldDiseaselibrary selectByPrimaryKey(Integer id);
   
}
