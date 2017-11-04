package com.service.Impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.bean.OldUsers;
import com.bean.Page;
import com.bean.PageBean;
import com.dao.OldUsersMapper;
import com.service.OldUsersService;
@Service("oldUsersService")
public class OldUsersServiceImpl implements OldUsersService {
	
	@Autowired
	@Qualifier("oldUsersMapper")
	private OldUsersMapper oldUsersMapper;

	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return oldUsersMapper.deleteByPrimaryKey(id);
	}

	@Override
	public void insert(OldUsers oldUsers) {
		
		 oldUsersMapper.insert(oldUsers);
	}
	@Override
	public void insertOldUsers(OldUsers oldUsers) {
		// TODO Auto-generated method stub
	
		oldUsersMapper.insertOldUsers(oldUsers);
	}
	
	@Override
	public int insertSelective(OldUsers record) {
		// TODO Auto-generated method stub
		return oldUsersMapper.insertSelective(record);
	}

	@Override
	public OldUsers selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return oldUsersMapper.selectByPrimaryKey(id);
	}
	@Override
	public List<OldUsers> queryUsers(){
		return oldUsersMapper.queryUsers();
	}
	
	@Override
	public int updateByPrimaryKeySelective( OldUsers record) {
		// TODO Auto-generated method stub
		return oldUsersMapper.updateByPrimaryKeySelective(record);
	}

	@Override

	public int updateByPrimaryKey( OldUsers record) {
		// TODO Auto-generated method stub
		return oldUsersMapper.updateByPrimaryKey(record);
	}
	public List<OldUsers> findUserNameById(OldUsers oldUsers){
		return oldUsersMapper.findUserNameById(oldUsers);
		
	}
	@Override
	public OldUsers selectByUid(String uid) {
		// TODO Auto-generated method stub
		return oldUsersMapper.selectByUid(uid);
	}

	@Override
	public void updateByUidSelective(OldUsers oldUsers) {
		// TODO Auto-generated method stub
		oldUsersMapper.updateByUidSelective(oldUsers);
		
	}

	@Override
	public List<OldUsers> selectByLikeUserName(Map map) {
		// TODO Auto-generated method stub
		return oldUsersMapper.selectByLikeUserName(map);
	}
	@Override
	public OldUsers queryByUid(String uid) {
		// TODO Auto-generated method stub
		return oldUsersMapper.queryByUid(uid);
	}
	   //修改用户信息
	public void modifyById(OldUsers oldUsers){
		 oldUsersMapper.modifyById(oldUsers);
		 
	}
	public OldUsers queryById(Integer id){
		return oldUsersMapper.queryById(id);
		}
	 //根据id删除用户基本信息以及相关的消费信息
    public void deleteUserById(OldUsers oldUsers){
    	oldUsersMapper.deleteUserById(oldUsers);
    }

	@Override
	public List<OldUsers> queryByConditions(String findbycondition) {
		// TODO Auto-generated method stub
		return oldUsersMapper.queryByConditions(findbycondition);
	}

	@Override
	public List<OldUsers> findAllUserByManager(Integer locaid) {
		// TODO Auto-generated method stub
		return oldUsersMapper.findAllUserByManager(locaid);
	}

	@Override
	public int getOldUsersCount() {
		// TODO Auto-generated method stub
		return oldUsersMapper.getOldUsersCount();
	}

	@Override
	public PageBean<OldUsers> pagiNation(int currentPage) {
		// TODO Auto-generated method stub
		HashMap<String,Object> map = new HashMap<String,Object>();
        PageBean<OldUsers> pageBean = new PageBean<OldUsers>();

        //封装当前页数
        pageBean.setCurrPage(currentPage);

        //每页显示的数据
        int pageSize=2;
        pageBean.setPageSize(pageSize);

        //封装总记录数
        int totalCount = oldUsersMapper.getOldUsersCount();
        pageBean.setTotalCount(totalCount);

        //封装总页数
        double tc = totalCount;
        Double num =Math.ceil(tc/pageSize);//向上取整
        pageBean.setTotalPage(num.intValue());

        map.put("start",(currentPage-1)*pageSize);
        map.put("size", pageBean.getPageSize());
        //封装每页显示的数据
        List<OldUsers> lists = oldUsersMapper.pagiNation(map);
        pageBean.setLists(lists);

        return pageBean;
	}

	
}
