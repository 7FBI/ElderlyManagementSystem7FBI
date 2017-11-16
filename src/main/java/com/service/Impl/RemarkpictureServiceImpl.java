package com.service.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.bean.Remarkpicture;
import com.dao.RemarkpictureMapper;
import com.service.RemarkpictureService;
@Service("remarkpictureService")
public class RemarkpictureServiceImpl implements RemarkpictureService {
	@Autowired
	@Qualifier("remarkpictureMapper")
	private RemarkpictureMapper remarkpictureMapper;

	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return remarkpictureMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Remarkpicture record) {
		// TODO Auto-generated method stub
		return remarkpictureMapper.insert(record);
	}

	@Override
	public int insertSelective(Remarkpicture record) {
		// TODO Auto-generated method stub
		return remarkpictureMapper.insertSelective(record);
	}

	@Override
	public Remarkpicture selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return remarkpictureMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Remarkpicture record) {
		// TODO Auto-generated method stub
		return remarkpictureMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Remarkpicture record) {
		// TODO Auto-generated method stub
		return remarkpictureMapper.updateByPrimaryKey(record);
	}

	@Override
	public int insertRemarkpictureList(Map map) {
		// TODO Auto-generated method stub
		return remarkpictureMapper.insertRemarkpictureList(map);
	}

	@Override
	public List<Remarkpicture> selectByopinionidAll(Remarkpicture remarkpicture) {
		// TODO Auto-generated method stub
		return remarkpictureMapper.selectByopinionidAll(remarkpicture);
	}
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								
}
