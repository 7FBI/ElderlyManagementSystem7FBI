package com.service;

import java.util.List;
import java.util.Map;

import com.bean.Credit;

public interface CreditService {
	
	//根据id 即是用户id删除积分
	public void deleteByPrimaryKey(String uid);
	
	//插入积分对象
	public void insertSelective(Credit record); 
	
	//根据uid 查询得到对象
	public Credit selectByPrimaryKey(String uid);
	
	//根据uid 修改用户的积分
    public void updateByPrimaryKeySelective(Credit record);
    
    //根据uid 修改用户的积分
    public void updateByPrimaryKey(Credit record);
    
    //查询所有用户的积分表详情
    public List<Credit> selectCredit();
    
    
    public Credit selectCreditByUid(String uid);  //查看当前登录用户的积分
    public void updateCreditByBuy(Map<String, Object> map);  //用户买产品后积分增加
    public void updateCreditByExchange(Map<String, Object> map);  //用户通过积分兑换商品后积分减少
}
