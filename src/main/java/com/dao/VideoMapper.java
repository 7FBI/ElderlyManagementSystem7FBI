package com.dao;

import java.util.List;
import java.util.Map;

import com.bean.Video;

public interface VideoMapper {
	Video selectVideoByIdFX(Integer id);
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table video
     *
     * @mbggenerated
     */
	public void addVideo(Video video);
	public List<Video> queryAllVideo();
	public void deleteById(Integer id);
	public void updateVideo(Video video);
	public List<Video> queryByConditions(String findvideo);
	public Video queryOneVideo(Integer id);
    public List<Video> findVieoMap(Map map);
    public int videoCount();
	int deleteByPrimaryKey(Integer id);
    public List<Video> freePrice(Map map);
    public int freeCount();
    public List<Video> allFreePrice();
    public List<Video> findSameVideo(String videotitle);
    public List<Video> someFreePrice();
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table video
     *
     * @mbggenerated
     */
    int insert(Video record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table video
     *
     * @mbggenerated
     */
    int insertSelective(Video record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table video
     *
     * @mbggenerated
     */
    Video selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table video
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(Video record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table video
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(Video record);
}