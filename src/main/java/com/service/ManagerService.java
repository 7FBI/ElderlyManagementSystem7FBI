package com.service;

import org.springframework.stereotype.Service;

import com.bean.Manager;

@Service
public interface ManagerService {
	
	public Manager checkLogin(String Mnumber);

}
