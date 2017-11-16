package com.service;

import java.util.List;
import java.util.Map;

import com.bean.Video;

public interface VideoService {
	public void addVideo(Video video);
	public List<Video> queryAllVideo();
	public void deleteById(Integer id);
	public void updateVideo(Video video);
	public List<Video> queryByConditions(String findvideo);
	public Video queryOneVideo(Integer id);
	public List<Video> findVieoMap(Map map);
    public int videoCount();
    public List<Video> freePrice(Map map);
    public int freeCount();
    public List<Video> allFreePrice();
    public List<Video> findSameVideo(String videotitle);
}
