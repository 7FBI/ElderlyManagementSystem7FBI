package com.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.Ceoinfo;
import com.dao.CeoinfoMapper;
import com.service.CeoinfoService;

@Service("ceoinfoService")
public class CeoinfoServiceImpl implements CeoinfoService {

	@Autowired
	private CeoinfoMapper ceoinfoMapper;
	
	@Override
	public Ceoinfo checkLogin(String name) {
		/*Ceoinfo ceoinfo2 = new Ceoinfo();   //通过名字查询数据库的ceo是否存在
		ceoinfo = ceoinfoMapper.selectCeoinfoByName(ceoinfo);
		if(ceoinfo!= null && ceoinfo.getPassword().equals(ceoinfo2.getPassword())){
			return ceoinfo;
		}*/
		return ceoinfoMapper.selectCeoinfoByName(name);
	}

}
