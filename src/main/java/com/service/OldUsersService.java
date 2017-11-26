package com.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.bean.OldUsers;
import com.bean.Page;

public interface OldUsersService {
	List<OldUsers> selectByTellOrUidOrIdcard(Map map);
	List<OldUsers> selectByLikeUserName(Map map);
	/**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table old_users
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(Integer id);
    public OldUsers queryByUid(String uid);
    public List<OldUsers>findAllUserByManager(Integer locaid);
    public void watchVideo(Map map);
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table old_users
     *
     * @mbggenerated
     */
    public void insert(OldUsers oldUsers);
    public void insertOldUsers(OldUsers oldUsers);
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table old_users
     *
     * @mbggenerated
     */
    int insertSelective(OldUsers record);
// 	充钱
 	public void addUserMoney(OldUsers oldUsers);
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table old_users
     *
     * @mbggenerated
     */
    OldUsers selectByPrimaryKey(Integer id);
    public List<OldUsers> queryUsers();
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table old_users
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(OldUsers record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table old_users
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(OldUsers record);
    
    public OldUsers selectByUid(String uid);
    public void updateByUidSelective(OldUsers oldUsers);
    
    //
    public OldUsers queryById(Integer id);
    public List<OldUsers> findUserNameById(OldUsers oldUsers);
    public void updatePasswordByUid(OldUsers oldUsers);
    
    
    //修改用户信息
    public void modifyById(OldUsers oldUsers);
  //根据id删除用户基本信息以及相关的消费信息
    public void deleteUserById(OldUsers oldUsers);
	public List<OldUsers> queryByConditions(String findbycondition);
//  获得用户总数
    public int getOldUsersCount();
    public List<OldUsers> findUserMap(Map map);
   
}
