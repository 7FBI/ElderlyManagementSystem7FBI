package com.service.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.bean.Video;
import com.dao.VideoMapper;
import com.service.VideoService;

@Service("videoService")
public class VideoServiceImpl implements VideoService{
	@Autowired
	@Qualifier("videoMapper")
	private VideoMapper videoMapper;
	public void addVideo(Video video){
		 videoMapper.addVideo(video);
	}
	@Override
	public List<Video> queryAllVideo() {
		// TODO Auto-generated method stub
		return videoMapper.queryAllVideo();
	}
	@Override
	public void deleteById(Integer id) {
		// TODO Auto-generated method stub
		videoMapper.deleteById(id);
	}
	@Override
	public void updateVideo(Video video) {
		// TODO Auto-generated method stub
		videoMapper.updateVideo(video);
	}
	@Override
	public List<Video> queryByConditions(String findvideo) {
		// TODO Auto-generated method stub
		return videoMapper.queryByConditions(findvideo);
	}
	@Override
	public Video queryOneVideo(Integer id) {
		// TODO Auto-generated method stub
		return videoMapper.queryOneVideo(id);
	}
	@Override
	public List<Video> findVieoMap(Map map) {
		// TODO Auto-generated method stub
		return videoMapper.findVieoMap(map);
	}
	@Override
	public int videoCount() {
		// TODO Auto-generated method stub
		return videoMapper.videoCount();
	}
	@Override
	public List<Video> freePrice(Map map) {
		// TODO Auto-generated method stub
		return videoMapper.freePrice(map);
	}
	@Override
	public int freeCount() {
		// TODO Auto-generated method stub
		return videoMapper.freeCount();
	}
	@Override
	public List<Video> allFreePrice() {
		// TODO Auto-generated method stub
		return videoMapper.allFreePrice();
	}
	@Override
	public List<Video> findSameVideo(String videotitle) {
		// TODO Auto-generated method stub
		return videoMapper.findSameVideo(videotitle);
	}
	@Override
	public Video selectVideoByIdFX(Integer id) {
		// TODO Auto-generated method stub
		return videoMapper.selectVideoByIdFX(id);
	}
	@Override
	public List<Video> someFreePrice() {
		// TODO Auto-generated method stub
		return videoMapper.someFreePrice();
	}
}
