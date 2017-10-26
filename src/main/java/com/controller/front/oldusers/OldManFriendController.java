package com.controller.front.oldusers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bean.Friend;
import com.bean.OldUsers;
import com.service.FriendService;
import com.service.OldUsersService;

@Controller
@RequestMapping("/front/oldUsers/friend")
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
		if (request.getSession().getAttribute("oldUsers") == null) {
			return null;
		}
		List<Friend> list = null;
		OldUsers oldUsers=(OldUsers) request.getSession().getAttribute("oldUsers");
		String uidhead = oldUsers.getUid();
		list=friendService.selectByUidHeadFriends(uidhead);
		return list;
	}

	@RequestMapping("/findFriend")
	@ResponseBody
	public List<OldUsers> findFriend(HttpServletRequest request,OldUsers oldUsers) {
		// 是否登录
		if (request.getSession().getAttribute("oldUsers") == null) {
			return null;
		}
		List<OldUsers> oldList=null;
		Map<String, Object> map=new HashMap<String, Object>();
		if (oldUsers.getSex()== -1) {
			oldUsers.setSex(null);
		}
		map.put("username", oldUsers.getUsername());
		map.put("sex", oldUsers.getSex());
		oldList=oldUsersService.selectByLikeUserName(map);
		return oldList;
	}

	//,produces="application/json; charset=utf-8"
	@RequestMapping(value="/addFriend")
	@ResponseBody
	public String addFriend(HttpServletRequest request) {
		/* 查询是否已经登录，负责退出 */
		if (request.getSession().getAttribute("oldUsers") == null) {
			return "请先登录!";
		}
		OldUsers oldUsers = (OldUsers) request.getSession().getAttribute("oldUsers");
		Friend friend = new Friend();
		String uid = "-1";
		if (request.getParameter("uid") != null | request.getParameter("uid") != "") {
			uid = request.getParameter("uid");
		}else {
			return "请先登录2!";
		}
		OldUsers users = null;
		users = oldUsersService.selectByUid(uid);
		if (users == null) {
			return "找不到这个用户!";
		}
		/* 将这两个用户设为好友 */
		friend.setUidhead(oldUsers.getUid());
		friend.setUidfoot(uid);
		if (friendService.insertSelective(friend)==-1) {
			return "你们已经是好友了";
		}
		return "true";
	}

	@RequestMapping("/deleteFriend")
	@ResponseBody
	public String deleteFriend(HttpServletRequest request) {
		/* 判断用户是否登录 */
		if (request.getSession().getAttribute("oldUsers") == null) {
			return "请先登录!";
		}
		OldUsers oldUsers =(OldUsers) request.getSession().getAttribute("oldUsers");
		// 登录则获取uid
		String uid = oldUsers.getUid();
		String uidfoot = "-1";
		Friend friend = new Friend();
		if (request.getParameter("uidfoot") != null | request.getParameter("uidfoot") != "") {
			uidfoot = request.getParameter("uidfoot");
		}else{
			return "没有给定要删除的好友";
		}
		friend.setUidhead(uid);
		friend.setUidfoot(uidfoot);
		// 删除关系
		friendService.deleteByFriend(friend);
		return "true";
	}

}
