package com.service.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.bean.Managerinfo;
import com.dao.ManagerInfoMapper;
import com.service.ManagerInfoService;
@Service("managerInfoService")
public class ManagerInfoServiceImpl implements ManagerInfoService{
    
	@Autowired
	private ManagerInfoMapper managerInfoMapper;
	@Override
	public Managerinfo findManagerBynametype(Managerinfo managerInfo) {
		// TODO Auto-generated method stub
		return  managerInfoMapper.findManagerBynametype(managerInfo);
	}
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return managerInfoMapper.deleteByPrimaryKey(id);
	}
	@Override
	public int insert(Managerinfo record) {
		// TODO Auto-generated method stub
		return managerInfoMapper.insert(record);
	}
	@Override
	public int insertSelective(Managerinfo record) {
		// TODO Auto-generated method stub
		return managerInfoMapper.insertSelective(record);
	}
	@Override
	public Managerinfo selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return managerInfoMapper.selectByPrimaryKey(id);
	}
	@Override
	public int updateByPrimaryKeySelective(Managerinfo record) {
		// TODO Auto-generated method stub
		return managerInfoMapper.updateByPrimaryKeySelective(record);
	}
	@Override
	public int updateByPrimaryKey(Managerinfo record) {
		// TODO Auto-generated method stub
		return managerInfoMapper.updateByPrimaryKey(record);
	}
	@Override
	public List<Managerinfo> selectAllManagers(Map record) {
		// TODO Auto-generated method stub
		return managerInfoMapper.selectAllManagers(record);
	}
	@Override
	public int selectAllManagersCounts(Managerinfo managerinfo) {
		// TODO Auto-generated method stub
		return managerInfoMapper.selectAllManagersCounts(managerinfo);
	}
	@Override
	public List<Managerinfo> selectHaveManagerInfo(String name) {
		// TODO Auto-generated method stub
		return managerInfoMapper.selectHaveManagerInfo(name);
	}

}
