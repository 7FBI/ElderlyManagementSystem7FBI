package com.service;

import java.util.List;

import com.bean.Video;

public interface VideoService {
	public void addVideo(Video video);
	public List<Video> queryAllVideo();
	public void deleteById(Integer id);
	public void updateVideo(Video video);
	public List<Video> queryByConditions(String findvideo);
	public Video queryOneVideo(Integer id);
}
