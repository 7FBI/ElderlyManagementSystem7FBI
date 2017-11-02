package com.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.bean.OldUsers;
@Repository("oldUsersMapper")
public interface OldUsersMapper {
	List<OldUsers> selectByLikeUserName(Map map);
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table old_Users
     *
     * @mbggenerated
     */
	public OldUsers queryByUid(String uid);
    int deleteByPrimaryKey(Integer id);
    public List<OldUsers>findAllUserByManager(Integer locaid);
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table old_Users
     *
     * @mbggenerated
     */
    //int insert(OldUsers record);
    public void insert(OldUsers oldUsers);
    
 // 修改用户信息
 	public void modifyById(OldUsers oldUsers);

 	// 根据id删除用户基本信息以及相关的消费信息
 	public void deleteUserById(OldUsers oldUsers);
 	public OldUsers queryById(Integer id);
 	public void insertOldUsers(OldUsers oldUsers);
 	
 	public List<OldUsers> queryUsers();
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table old_Users
     *
     * @mbggenerated
     */
    int insertSelective(OldUsers record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table old_Users
     *
     * @mbggenerated
     */
    OldUsers selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table old_Users
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(OldUsers record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table old_Users
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(OldUsers record);
    
    public OldUsers selectByUid(String uid);
    
    public void updateByUidSelective(OldUsers oldUsers);
    public List<OldUsers> findUserNameById(OldUsers oldUsers);
    public List<OldUsers> queryByConditions(String findbycondition);
}