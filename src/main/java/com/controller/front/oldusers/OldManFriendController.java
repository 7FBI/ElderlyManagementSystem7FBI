package com.controller.front.oldusers;

import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bean.Friend;
import com.bean.OldUsers;
import com.others.md5.Encryption;
import com.service.FriendService;
import com.service.OldUsersService;

@Controller
@RequestMapping("/front/oldman/friend")
public class OldManFriendController {

	@Autowired
	@Qualifier("oldUsersService")
	private OldUsersService oldUsersService;

	@Autowired
	@Qualifier("friendService")
	private FriendService friendService;

	@RequestMapping("/friends")
	@ResponseBody
	public List<Friend> friends(HttpServletRequest request) {
		// 是否登录
		/*if (request.getSession().getAttribute("oldMan") == null) {
			return null;
		}*/
		List<Friend> list = null;
		String uidhead = "-1";
		if (request.getParameter("uid") != null | request.getParameter("uid") != "") {
			uidhead = request.getParameter("uid");
		}
		if ("-1".equals(uidhead)) {
			return null;
		}
		//list = oldUsersService.selectOldUsersFriends(uid);
		list=friendService.selectByUidHeadFriends(uidhead);
		return list;
	}

	@RequestMapping("/findFriend")
	@ResponseBody
	public List<OldUsers> findFriend(HttpServletRequest request,OldUsers oldUsers) {
		// 是否登录
		/*if (request.getSession().getAttribute("oldMan") == null) {
			return null;
		}*/
		List<OldUsers> oldList=null;
		Map<String, Object> map=new HashMap<String, Object>();
		System.out.println(">>>>>>>>>>>>>>>>>>"+oldUsers.getUsername());
		if (oldUsers.getSex()== -1) {
			oldUsers.setSex(null);
		}
		map.put("username", oldUsers.getUsername());
		map.put("sex", oldUsers.getSex());
		oldList=oldUsersService.selectByLikeUserName(map);
		return oldList;
	}

	@RequestMapping("/addFriend")
	@ResponseBody
	public String addFriend(HttpServletRequest request) {
		/* 查询是否已经登录，负责退出 */
		if (request.getSession().getAttribute("oldMan") == null) {
			return "请先登录!";
		}
		OldUsers oldUsers = oldUsersService.selectByUid("wbq123");
		Friend friend = new Friend();
		String uid = "-1";
		if (request.getParameter("uid") != null | request.getParameter("uid") != "") {
			uid = request.getParameter("uid");
		}
		if ("-1".equals(uid)) {
			return null;
		}
		OldUsers users = null;
		users = oldUsersService.selectByUid(uid);
		if (users == null) {
			return "找不到这个用户!";
		}
		/* 添加给这个用户添加查询出来的用户为好友 */
		friend.setUidhead(oldUsers.getUid());
		friend.setUidfoot(uid);
		friendService.insertSelective(friend);
		return "ok";
	}

	@RequestMapping("/deleteFriend")
	@ResponseBody
	public String deleteFriend(HttpServletRequest request) {
		/* 判断用户是否登录 */
		if (request.getSession().getAttribute("oldMan") == null) {
			return "请先登录!";
		}
		OldUsers oldUsers = oldUsersService.selectByUid("wbq123");
		// 登录则获取uid
		String uid = oldUsers.getUid();
		String uidfoot = "-1";
		Friend friend = new Friend();
		if (request.getParameter("uidfoot") != null | request.getParameter("uidfoot") != "") {
			uidfoot = request.getParameter("uidfoot");
		}
		friend.setUidhead(uid);
		friend.setUidfoot(uidfoot);
		// 删除关系
		friendService.deleteByFriend(friend);
		return "ok";
	}
	
	
	@RequestMapping("/addOldMan")
	@ResponseBody
	public String addOldMan(HttpServletRequest request){
		OldUsers users=new OldUsers();
		String paswd=Encryption.encrypation("123456");
		users.setUid("eee123");
		users.setPassword(paswd);
		oldUsersService.insertSelective(users);
		return "true";
	}
	
	@RequestMapping("/logins")
	@ResponseBody
	public String logins(HttpServletRequest request){
		//String uid="eee123";
		String uid=request.getParameter("eee123");
		String ppp=request.getParameter("password");
		String paswd=Encryption.encrypation(ppp);
		OldUsers users=oldUsersService.selectByUid(uid);
		if (paswd.equals(users.getPassword())) {
			return "true";
		}
		String date=request.getParameter("date");
		return "false";
	}
	
	//produces = "text/html;charset=UTF-8"   
	//加上这句防止回传json乱码
	@RequestMapping(value="/updateAddress")
	@ResponseBody
	public String updateAddress(OldUsers oldUsers,HttpServletRequest request){
		/*System.out.println(">>>>>>>>>>>>>>>>>>>>>地址:"+request.getParameter("address"));
		System.out.println(">>>>>>>>>>>>>>>>>>>>>时间:"+request.getParameter("birthday"));
		OldUsers oldUsers=new OldUsers();
		oldUsers.setAddress(request.getParameter("address"));
		oldUsers.setUid(request.getParameter("uid"));
		oldUsers.setBirthday(getBirthday(request.getParameter("birthday")));*/
		System.out.println(">>>>>>>>>>>>>>>>>>>>>地址:"+oldUsers.getAddress());
		System.out.println(">>>>>>>>>>>>>>>>>>>>>时间:"+oldUsers.getBirthday());
		OldUsers old=null;
		//getBirthday(oldUsers.getBirthday());
		//oldUsers.setBirthday();
		old=oldUsersService.selectByUid(oldUsers.getUid());
		
		if (old==null) {
			return "没有这个用户";
		}else {
			oldUsers.setId(old.getId());
			oldUsersService.updateByPrimaryKeySelective(oldUsers);
			return "true";
		}
	}
	
	
	
	public Date getBirthday(String dateStr) {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date=null;
		try {
			date=sdf.parse(dateStr);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return date;
	}

}
