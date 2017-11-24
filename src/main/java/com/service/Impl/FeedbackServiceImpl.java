package com.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bean.Feedback;
import com.bean.FeedbackUser;
import com.bean.Feedbackreplycount;
import com.dao.FeedbackMapper;
import com.service.FeedbackService;

@Service("feedbackService")
@Transactional     //事物操作
public class FeedbackServiceImpl implements FeedbackService{

	@Autowired
	private FeedbackMapper feedbackMapper;
	
	@Override
	public void deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		feedbackMapper.deleteByPrimaryKey(id);
	}

	@Override
	public void insert(Feedback record) {
		// TODO Auto-generated method stub
		feedbackMapper.insert(record);
	}

	@Override
	public void insertSelective(Feedback record) {
		// TODO Auto-generated method stub
		feedbackMapper.insertSelective(record);
	}

	@Override
	public Feedback selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return feedbackMapper.selectByPrimaryKey(id);
	}

	@Override
	public void updateByPrimaryKeySelective(Feedback record) {
		// TODO Auto-generated method stub
		feedbackMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public void updateByidtochangstatus(int id) {
		// TODO Auto-generated method stub
		feedbackMapper.updateByidtochangstatus(id);
	}

	@Override
	public List<Feedback> selectByuid(String uid) {
		// TODO Auto-generated method stub
		return feedbackMapper.selectByuid(uid);
	}

	@Override
	public void delectByuid(String uid) {
		// TODO Auto-generated method stub
		feedbackMapper.delectByuid(uid);
	}

	@Override
	public int selectcountstatus() {
		// TODO Auto-generated method stub
		return feedbackMapper.selectcountstatus();
	}

	@Override
	public List<FeedbackUser> selectBystatus() {
		// TODO Auto-generated method stub
		return  feedbackMapper.selectBystatus();
	}

	@Override
	public List<FeedbackUser> selectBystatustoone() {
		// TODO Auto-generated method stub
		return  feedbackMapper.selectBystatustoone();
	}

	@Override
	public List<Feedback> selectBystatus1(String uid) {
		// TODO Auto-generated method stub
		return  feedbackMapper.selectBystatus1(uid);
	}

	@Override
	public List<Feedback> selectBystatu0(String uid) {
		// TODO Auto-generated method stub
		return feedbackMapper.selectBystatu0(uid);
	}

	@Override
	public List<Feedbackreplycount> selectByreplyfeedback(String uid) {
		// TODO Auto-generated method stub
		return feedbackMapper.selectByreplyfeedback(uid);
	}
}
