package com.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.Classification;
import com.dao.ClassificationMapper;
import com.service.ClassificationService;

@Service()
public class ClassificationServiceImpl implements ClassificationService {
	
	@Autowired
	private ClassificationMapper classificationMapper;

	@Override
	public Classification selectByPrimaryKey(int id) {        //根据id查询类别对象
		// TODO Auto-generated method stub
		
		return classificationMapper.selectByPrimaryKey(id);
	}

	@Override
	public List<Classification> selectClassifiaction() {        //查询类别
		 
		return classificationMapper.selectClassifiaction();
	}

	@Override
	public void insertSelective(Classification record) {        //添加类别
		// TODO Auto-generated method stub
		classificationMapper.insertSelective(record);
		
	}

	@Override
	public void updateByPrimaryKeySelective(Classification record) {    //修改类别信息
		// TODO Auto-generated method stub
		
		classificationMapper.updateByPrimaryKeySelective(record);
	}

}
