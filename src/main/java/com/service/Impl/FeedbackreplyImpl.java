package com.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bean.Feedback;
import com.bean.Feedbackreply;
import com.dao.FeedbackreplyMapper;
import com.dao.ProductsMapper;
import com.service.FeedbackreplyService;
@Service("feedbackreplyService")
@Transactional
public class FeedbackreplyImpl implements FeedbackreplyService {
    
	@Autowired
    private FeedbackreplyMapper feedbackreplyMapper;

	@Override
	public void deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		feedbackreplyMapper.deleteByPrimaryKey(id);
	}

	@Override
	public void insert(Feedbackreply record) {
		// TODO Auto-generated method stub
		feedbackreplyMapper.insert(record);
	}

	@Override
	public void insertSelective(Feedbackreply record) {
		// TODO Auto-generated method stub
		feedbackreplyMapper.insertSelective(record);
	}

	@Override
	public Feedbackreply selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return feedbackreplyMapper.selectByPrimaryKey(id);
	}

	@Override
	public void updateByPrimaryKeySelective(Feedbackreply record) {
		// TODO Auto-generated method stub
		feedbackreplyMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public void updateByfid(Feedbackreply record) {
		// TODO Auto-generated method stub
		feedbackreplyMapper.updateByfid(record);
	}
	 
}
