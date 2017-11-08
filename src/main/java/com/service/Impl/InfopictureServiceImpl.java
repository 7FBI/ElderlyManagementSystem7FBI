package com.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.bean.Infopicture;
import com.dao.InfopictureMapper;
import com.service.InfopictureService;
@Service("infopictureService")
public class InfopictureServiceImpl implements InfopictureService {
	@Autowired
	@Qualifier("infopictureMapper")
	private InfopictureMapper infopictureMapper;

	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return infopictureMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Infopicture record) {
		// TODO Auto-generated method stub
		return infopictureMapper.insert(record);
	}

	@Override
	public int insertSelective(Infopicture record) {
		// TODO Auto-generated method stub
		return infopictureMapper.insertSelective(record);
	}

	@Override
	public Infopicture selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return infopictureMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Infopicture record) {
		// TODO Auto-generated method stub
		return infopictureMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Infopicture record) {
		// TODO Auto-generated method stub
		return infopictureMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Infopicture> selectByInfoid(Integer infoid) {
		// TODO Auto-generated method stub
		return infopictureMapper.selectByInfoid(infoid);
	}

	

}
