package com.service.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.bean.Groupbuying;
import com.dao.GroupbuyingMapper;
import com.service.GroupbuyingService;

@Service("groupbuyingService")
public class GroupbuyingServiceImpl implements GroupbuyingService {
	@Autowired
	@Qualifier("groupbuyingMapper")
	private GroupbuyingMapper groupbuyingMapper;

	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return groupbuyingMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Groupbuying record) {
		// TODO Auto-generated method stub
		return groupbuyingMapper.insert(record);
	}

	@Override
	public int insertSelective(Groupbuying record) {
		// TODO Auto-generated method stub
		return groupbuyingMapper.insertSelective(record);
	}

	@Override
	public Groupbuying selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return groupbuyingMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Groupbuying record) {
		// TODO Auto-generated method stub
		return groupbuyingMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Groupbuying record) {
		// TODO Auto-generated method stub
		return groupbuyingMapper.updateByPrimaryKey(record);
	}

	@Override
	public Groupbuying selectByGroupBuyPid(Groupbuying groupbuying) {
		// TODO Auto-generated method stub
		return groupbuyingMapper.selectByGroupBuyPid(groupbuying);
	}

	@Override
	public List<Groupbuying> selectListGroupbuy(Map map) {
		// TODO Auto-generated method stub
		return groupbuyingMapper.selectListGroupbuy(map);
	}

	@Override
	public List<Groupbuying> selectAll() {
		// TODO Auto-generated method stub
		return groupbuyingMapper.selectAll();
	}

	@Override
	public Groupbuying selectByPid(int pid) {
		// TODO Auto-generated method stub
		return groupbuyingMapper.selectByPid(pid);
	}

}
