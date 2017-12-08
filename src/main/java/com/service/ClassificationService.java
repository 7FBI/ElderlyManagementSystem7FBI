package com.service;

import java.util.List;

import com.bean.Classification;

public interface ClassificationService {
    
	public  Classification selectByPrimaryKey(int id);   //根据id查询类别对象
	
	public List<Classification> selectClassifiaction();   //修改类别
	
    public void insertSelective(Classification record);   //添加类别
    
    public void updateByPrimaryKeySelective(Classification record);  //修改类别
//    该类是否为药品类
    public Classification selectWetherMedicelProduct(Integer id);
		 
}
