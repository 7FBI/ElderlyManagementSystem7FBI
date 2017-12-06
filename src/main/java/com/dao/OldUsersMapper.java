package com.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.bean.OldUsers;
import com.bean.Page;

@Repository("oldUsersMapper")
public interface OldUsersMapper {
	List<OldUsers> selectCountAreaNumbers();
	List<OldUsers> selectCountProductCounts();
	List<OldUsers> seleteOldUsersTypesAll(Map map);
	Double selectOrdersAllMoneysYear();

	List<OldUsers> seleteOldUsersOrdersMoneysAndDate(Map map);

	List<OldUsers> seleteOldUsersOrdersMoneysAndDateYearAll(Map map);

	List<OldUsers> seleteOldUsersLoginNumber(Map map);

	List<OldUsers> selectByTellOrUidOrIdcard(Map map);

	List<OldUsers> selectByLikeUserName(Map map);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table old_users
	 *
	 * @mbggenerated
	 */
	public void watchVideo(Map map);

	public OldUsers queryByUid(String uid);

	int deleteByPrimaryKey(Integer id);

	public List<OldUsers> findAllUserByManager(Integer locaid);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table old_users
	 *
	 * @mbggenerated
	 */
	// int insert(OldUsers record);
	public void insert(OldUsers oldUsers);

	// 修改用户信息
	public void modifyById(OldUsers oldUsers);

	// 根据id删除用户基本信息以及相关的消费信息
	public void deleteUserById(OldUsers oldUsers);

	public OldUsers queryById(Integer id);

	public void insertOldUsers(OldUsers oldUsers);

	public List<OldUsers> queryUsers();

	// 充钱
	public void addUserMoney(OldUsers oldUsers);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table old_users
	 *
	 * @mbggenerated
	 */
	int insertSelective(OldUsers record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table old_users
	 *
	 * @mbggenerated
	 */
	OldUsers selectByPrimaryKey(Integer id);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table old_users
	 *
	 * @mbggenerated
	 */
	int updateByPrimaryKeySelective(OldUsers record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table old_users
	 *
	 * @mbggenerated
	 */
	int updateByPrimaryKey(OldUsers record);

	public OldUsers selectByUid(String uid);

	public void updateByUidSelective(OldUsers oldUsers);

	public void updatePasswordByUid(Map map);

	public List<OldUsers> findUserNameById(OldUsers oldUsers);

	public List<OldUsers> queryByConditions(String findbycondition);

	// 获得用户总数
	public int getOldUsersCount();

	public List<OldUsers> findUserMap(Map map);

	// 退费
	public void turnBackMyBalance(Map map);
	public OldUsers queryByIdCard(String idcard);
    public OldUsers queryByTell(String tell);
}