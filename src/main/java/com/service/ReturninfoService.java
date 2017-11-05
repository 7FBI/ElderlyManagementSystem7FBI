package com.service;

import java.util.List;

import com.bean.Returninfo;

public interface ReturninfoService {
	 public  List<Returninfo> selectByUid(String uid);

	public void insertSelective(Returninfo returninfo);

	public void deleteByPrimaryKey(Integer id);

	public void updateByPrimaryKeySelective(Returninfo returninfo);

	public Returninfo selectByPrimaryKey(Integer id);
}
