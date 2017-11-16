package com.service;

import java.util.List;
import java.util.Map;

import com.bean.Watchhistory;

public interface WatchhistoryService {
	 //查询是否观看过
    public List<Watchhistory> whetherSeen(Map map);
    //添加观看记录
    public void addSeenHistory(Watchhistory watchhistory);
    //显示观看记录
    public List<Watchhistory> myWatched(String userUid);
}
