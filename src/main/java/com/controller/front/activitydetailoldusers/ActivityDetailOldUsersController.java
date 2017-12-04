package com.controller.front.activitydetailoldusers;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Activitydetailinfo;
import com.bean.Activitydetailoldusers;
import com.bean.Manager;
import com.bean.OldUsers;
import com.service.ActivitydetailOldUsersService;
import com.service.ManagerService;
import com.service.OldUsersService;
import com.trsanfordate.TrsanforDateToString;

@Controller
@RequestMapping("/front/joinActive")
public class ActivityDetailOldUsersController {
	@Autowired
	@Qualifier("activitydetailOldUsersService")
	private ActivitydetailOldUsersService activitydetailOldUsersService;

	@Autowired
	@Qualifier("oldUsersService")
	private OldUsersService oldUsersService;

	@Autowired
	@Qualifier("managerService")
	private ManagerService managerService;

	// private Date xxxxx(String ds){
	// SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	// Date dates=new Date();
	// Date dat=null;
	// try {
	// dat=sdf.parse(ds);
	// } catch (ParseException e) {
	// // TODO Auto-generated catch block
	// e.printStackTrace();
	// }
	// if(dates.getTime()<dat.getTime()){
	// Integer id,Integer mid,String activitystoptime,Double activityprice
	// }
	// return null;
	// }

	// 活动报名
	@RequestMapping("/takeUpInActive")
	@ResponseBody
	public String querytakeUpInActive(HttpServletRequest request, Integer id, Integer mid, String activitystoptime,
			Double activityprice) {
		if (activityprice == null) {
			activityprice = 0.0;
		}
		int compareResult = TrsanforDateToString.trsanforDate(activitystoptime);
		System.out.println("比较结果" + compareResult);
		ModelAndView modelAndView = new ModelAndView();
		System.out.println("报名截止日期" + activitystoptime);
		System.out.println("活动价" + activityprice);
		System.out.println("*********************");
		System.out.println("活动ID" + id);
		System.out.println("**********************");
		if (request.getSession().getAttribute("oldUsers") == null) {
//			modelAndView.setViewName("front/login");
			return "login";
		}else{
			OldUsers oldusers = (OldUsers) request.getSession().getAttribute("oldUsers");
			Double userBalance = oldusers.getBalance();
			if (userBalance == null) {
				userBalance = 0.0;
			}
			Map<String, Object> maps = new HashMap<String, Object>();
			maps.put("id", id);
			maps.put("userid", oldusers.getUid());
			List<Activitydetailoldusers> myJoinOneActivity = activitydetailOldUsersService.queryWhetherJoinActivity(maps);
			//是否已参加		
			if (myJoinOneActivity.size() == 0) {
				// 老人
				System.out.println("管理员Id" + mid);
				Manager manager = managerService.selectByPrimaryKey(mid);
				System.out.println("管理员所在地" + manager.getLocaid());
				if (oldusers.getType() == 0) {
					if (oldusers.getArea() != manager.getLocaid()) {
						return "Sorry,您不在该活动所涉及的范围内，你可以参加您所在地的活动哦！";
						 /*System.out.println(err);
						 modelAndView.addObject("err", err);
						 modelAndView.setViewName("front/activity/activitydetail");
					*/} else {
						if(compareResult == 0) {
							return "Sorry,已过报名截止日期，您不能进行活动预约！";
							 /*System.out.println(err);
							 modelAndView.setViewName("front/activity/activitydetail");*/
						} else {
							if (userBalance < activityprice) {
								return "Sorry,您的余额不足!";
								 /*System.out.println(err);
								 modelAndView.addObject("err", err);
								 modelAndView.setViewName("front/activity/activitydetail");*/
							} else {
								// 付费
								Map<String, Object> map = new HashMap<String, Object>();
								map.put("videoPrice", activityprice);
								map.put("userUid", oldusers.getUid());
								System.out.println(map.size());
								oldUsersService.watchVideo(map);
								// 报名
								Activitydetailoldusers activitydetailoldusers = new Activitydetailoldusers();
								activitydetailoldusers.setUid(oldusers.getUid());
								activitydetailoldusers.setActivityid(id);
								activitydetailoldusers.setSingtime(new Date());
								activitydetailOldUsersService.insertSelective(activitydetailoldusers);
								/*return "恭喜您报名成功！";*/
								return "true";
								/*System.out.println(info);
								 modelAndView.addObject("info", info);
								 modelAndView.setViewName("front/activity/activitydetail");*/
							}
						}
					}
				} else {
					// 游客
					if (compareResult == 0) {
						return "Sorry,已过报名截止日期，您不能进行活动预约！";
						 /*System.out.println(err);
						 modelAndView.setViewName("front/activity/activitydetail");*/
					}else{
						System.out.println("用户余额" + oldusers.getBalance());
						System.out.println("活动费用" + activityprice);

						if (userBalance < activityprice) {
							return "Sorry,您的余额不足";
							 /*System.out.println(err);
							 modelAndView.addObject("err", err);
							 modelAndView.setViewName("front/activity/activitydetail");*/
						} else {
							// 付费
							Map<String, Object> map = new HashMap<String, Object>();
							map.put("videoPrice", activityprice);
							map.put("userUid", oldusers.getUid());
							System.out.println(map.size());
							oldUsersService.watchVideo(map);
							Activitydetailoldusers activitydetailoldusers = new Activitydetailoldusers();
							activitydetailoldusers.setUid(oldusers.getUid());
							activitydetailoldusers.setActivityid(id);
							activitydetailoldusers.setSingtime(new Date());
							activitydetailOldUsersService.insertSelective(activitydetailoldusers);
							/*return "恭喜您报名成功！";*/
							return "true";
							/* System.out.println(info);
							 modelAndView.addObject("info", info);
							 modelAndView.setViewName("front/activity/activitydetail");*/
						}
					}
				}
			}else{
				return "您已经报名参加该活动！";
				/*System.out.println(err);
				 modelAndView.addObject("err", err);
				 modelAndView.setViewName("front/activity/activitydetail");*/
			}
		}
		/*return null;*/
	}

	// 取消报名
	@RequestMapping("/cancelJoinActive")
	@ResponseBody
	public String cancelActive(HttpServletRequest request, String activitystoptime, Double activityprice, Integer id) {
		ModelAndView modelAndView = new ModelAndView();
		if (request.getSession().getAttribute("oldUsers") == null) {
			modelAndView.setViewName("front/login");
		}
		int compareResult = TrsanforDateToString.trsanforDate(activitystoptime);
		if (compareResult == 0) {
			return "Sorry,已过截止日期，您不能取消活动预约!活动正在火热筹备中，期待您的参与！";
		} else {
			OldUsers oldusers = (OldUsers) request.getSession().getAttribute("oldUsers");
			// 退费
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("price", activityprice);
			map.put("userUid", oldusers.getUid());
			System.out.println(map.size());
			oldUsersService.turnBackMyBalance(map);
			// 删除记录
			activitydetailOldUsersService.deleteByPrimaryKey(id);
			return "true";
		}
		
	}

	// 用户查看报名记录
	@RequestMapping("/selectMyJoinActive")
	@ResponseBody
	public ModelAndView selectMyActivity(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		if (request.getSession().getAttribute("oldUsers") == null) {
			modelAndView.setViewName("front/login");
		} else {
			OldUsers olduser = (OldUsers) request.getSession().getAttribute("oldUsers");
			Map<String, Object> map = new HashMap<String, Object>();
			Integer max = 6;
			Integer page = 0;
			Integer counts = 0;
			if (request.getParameter("page") != null) {
				page = Integer.valueOf(request.getParameter("page"));
			}
			if (page <= 0) {
				page = 0;
			}
			counts = activitydetailOldUsersService.getMyJoinActivityCount(olduser.getUid()) / max;
			System.out.println(counts);
			if (counts <= 0) {
				counts = 0;
			}
			if (page >= counts) {
				page = counts;
			}
			map.put("page", page * max);
			map.put("max", max);
			map.put("uid", olduser.getUid());
			List<Activitydetailoldusers> myJoinActivies = activitydetailOldUsersService.findMyJoninActivies(map);
			modelAndView.addObject("myJoinActivies", myJoinActivies);
			modelAndView.addObject("page", page);
			modelAndView.addObject("counts", counts);
			modelAndView.setViewName("front/SelfCenter_myActivity");
		}
		return modelAndView;
	}

	// 用户删除报名记录
	@RequestMapping("/deleteMyJoinActive")
	public String deleteMyActivity(HttpServletRequest request, Integer id) {
		ModelAndView modelAndView = new ModelAndView();
		if (request.getSession().getAttribute("oldUsers") == null) {
			modelAndView.setViewName("front/login");
		} else {
			System.out.println("参与记录ID" + id);
			// OldUsers olduser=(OldUsers)
			// request.getSession().getAttribute("oldUsers");
			activitydetailOldUsersService.deleteByPrimaryKey(id);
			//return "删除成功";
			// String info="删除成功";
			// modelAndView.addObject("info", info);
			// List<Activitydetailoldusers>
			// myJoinActivies=activitydetailOldUsersService.findMyJoninActivies(olduser.getUid());
			// modelAndView.addObject("myJoinActivies", myJoinActivies);
			// modelAndView.setViewName("front/SelfCenter_myActivity");
		}
		return "redirect:/front/joinActive/selectMyJoinActive";
	}
}
