package com.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.bean.Returninfo;
import com.dao.ReturninfoMapper;
import com.service.ReturninfoService;
@Service("returninfoService")
public class ReturninfoServiceImpl implements ReturninfoService{
    @Autowired
    @Qualifier("returninfoMapper")  
    private ReturninfoMapper returninfoMapper;
	@Override
	public List<Returninfo> selectByUid(String uid) {
		// TODO Auto-generated method stub
		return returninfoMapper.selectByUid(uid);
	}
	@Override
	public void insertSelective(Returninfo returninfo) {
		// TODO Auto-generated method stub
		returninfoMapper.insertSelective(returninfo);
	}
	@Override
	public void deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		returninfoMapper.deleteByPrimaryKey(id);
	}
	@Override
	public void updateByPrimaryKeySelective(Returninfo returninfo) {
		// TODO Auto-generated method stub
		returninfoMapper.updateByPrimaryKeySelective(returninfo);
	}
	@Override
	public Returninfo selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return returninfoMapper.selectByPrimaryKey(id);
	}

}
