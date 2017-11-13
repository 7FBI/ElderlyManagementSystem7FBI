package com.service;

import java.util.List;
import java.util.Map;

import com.bean.Edunews;

public interface EdunewsService {
	public void addEdu(Edunews edunews);
	public void deleteEduById(Integer id);
	public void updateEduById(Edunews edunews);
	public Edunews selectEduById(Integer id);
	public List<Edunews>selectAllEdu();
	public List<Edunews>queryEduByConditions(String findEduByConditions);
	public int eduCount();
    public List<Edunews> findAllEduNews(Map map);
    public List<Edunews> findHotNews();
}
