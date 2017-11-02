package com.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.Manager;
import com.dao.ManagerMapper;
import com.service.ManagerService;

@Service("ManagerService")
public class ManagerServiceImpl implements ManagerService{
	@Autowired
	private ManagerMapper managerMapper;
	@Override
	public Manager checkLogin(String Mnumber) {
		
		return managerMapper.selectManagerByMnumber(Mnumber);
	}
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return managerMapper.deleteByPrimaryKey(id);
	}
	@Override
	public int insert(Manager record) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public int insertSelective(Manager record) {
		
		return managerMapper.insertSelective(record);
	}
	@Override
	public Manager selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return managerMapper.selectByPrimaryKey(id);
	}
	@Override
	public int updateByPrimaryKeySelective(Manager record) {
		
		return managerMapper.updateByPrimaryKeySelective(record);
	}
	@Override
	public int updateByPrimaryKey(Manager record) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public Manager selectManagerByMnumber(String mnumber) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<Manager> selectAllManager(Integer cid) {
		// TODO Auto-generated method stub
		return managerMapper.selectAllManager(cid);
	}
	@Override
	public Manager findPrivenceName(Integer locaid) {
		// TODO Auto-generated method stub
		return managerMapper.findPrivenceName(locaid);
	}

}
