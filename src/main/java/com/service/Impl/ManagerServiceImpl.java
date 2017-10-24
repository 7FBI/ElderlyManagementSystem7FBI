package com.service.Impl;

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

}
