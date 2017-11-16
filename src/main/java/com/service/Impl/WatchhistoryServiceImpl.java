package com.service.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.bean.Watchhistory;
import com.dao.WatchhistoryMapper;
import com.service.WatchhistoryService;
@Service("watchhistoryService")
public class WatchhistoryServiceImpl implements WatchhistoryService{
@Autowired
@Qualifier("watchhistoryMapper")
private WatchhistoryMapper watchhistoryMapper;

@Override
public List<Watchhistory> whetherSeen(Map map) {
	// TODO Auto-generated method stub
	return watchhistoryMapper.whetherSeen(map);
}

@Override
public void addSeenHistory(Watchhistory watchhistory) {
	// TODO Auto-generated method stub
	watchhistoryMapper.addSeenHistory(watchhistory);
}

@Override
public List<Watchhistory> myWatched(String userUid) {
	// TODO Auto-generated method stub
	return watchhistoryMapper.myWatched(userUid);
}


}
