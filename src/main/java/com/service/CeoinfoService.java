package com.service;

import org.springframework.stereotype.Service;

import com.bean.Ceoinfo;

@Service
public interface CeoinfoService {
	//设置方法对输入的账号密码进行校验
	public Ceoinfo checkLogin(String name);

}
