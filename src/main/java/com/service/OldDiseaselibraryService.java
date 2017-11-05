package com.service;

import java.util.List;

import com.bean.OldDiseaselibrary;

public interface OldDiseaselibraryService {

	List<OldDiseaselibrary> selectAllDiseaselibrary();

	void addDiseaselibrary(OldDiseaselibrary oldDiseaselibrary);

	void deleteDiseaselibraryById(Integer id);

	void updateDiseaselibraryById(OldDiseaselibrary oldDiseaselibrarys);

	List<OldDiseaselibrary> selectDiseaselibrary(String key);

	OldDiseaselibrary getDiseaseIdByName(String name);

	OldDiseaselibrary selectByPrimaryKey(Integer id);
   
}
