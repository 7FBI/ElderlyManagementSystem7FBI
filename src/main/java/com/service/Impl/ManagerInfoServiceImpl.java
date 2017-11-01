package com.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.bean.ManagerInfo;
import com.dao.ManagerInfoMapper;
import com.service.ManagerInfoService;
@Service()
public class ManagerInfoServiceImpl implements ManagerInfoService{
    
	@Autowired
	private ManagerInfoMapper managerInfoMapper;
	@Override
	public ManagerInfo findManagerBynametype(String name) {
		// TODO Auto-generated method stub
		return  managerInfoMapper.findManagerBynametype(name);
	}

}
