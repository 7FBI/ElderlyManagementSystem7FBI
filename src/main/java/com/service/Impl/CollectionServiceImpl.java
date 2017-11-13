package com.service.Impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bean.Collection;
import com.dao.CollectionMapper;
import com.service.CollectionService;
@Service("collectionService")
public class CollectionServiceImpl implements CollectionService{

	@Resource
	private CollectionMapper collectionMapper;
	@Override
	public int insert(Collection record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(Collection record) {
		// TODO Auto-generated method stub
		return collectionMapper.insertSelective(record) ;
	}

	@Override
	public int delete(Collection record) {
		// TODO Auto-generated method stub
		return collectionMapper.delete(record);
	}

	@Override
	public Collection select(Collection record) {
		// TODO Auto-generated method stub
		return collectionMapper.select(record);
	}

}
