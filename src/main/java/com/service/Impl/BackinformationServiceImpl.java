package com.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.bean.Backinformation;
import com.dao.BackinformationMapper;
import com.service.BackinformationService;

@Service("backinformationService")
public class BackinformationServiceImpl implements BackinformationService {
	@Autowired
	@Qualifier("backinformationMapper")
	private BackinformationMapper backinformationMapper;
	
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		
		return backinformationMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Backinformation record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(Backinformation record) {
		
		return backinformationMapper.insertSelective(record);
	}

	@Override
	public Backinformation selectByPrimaryKey(Integer id) {
		
		return backinformationMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Backinformation record) {
		
		return backinformationMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Backinformation record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Backinformation> selectByAuthor() {
		
		return backinformationMapper.selectByAuthor();
		}

	@Override
	public List<Backinformation> selectAllByAuthor(Integer author) {
		
		return backinformationMapper.selectAllByAuthor(author);
	}

}
