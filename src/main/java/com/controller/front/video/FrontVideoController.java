package com.controller.front.video;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Edunews;
import com.bean.Matchpeoplevideo;
import com.bean.OldUsers;
import com.bean.Video;
import com.bean.Watchhistory;
import com.service.MatchpeoplevideoService;
import com.service.OldUsersService;
import com.service.VideoService;
import com.service.WatchhistoryService;

@Controller
@RequestMapping("/front/videos")
public class FrontVideoController {
	@Autowired
	@Qualifier("videoService")
	private VideoService videoService;
	@Autowired
	@Qualifier("matchpeoplevideoService")
	private MatchpeoplevideoService matchpeoplevideoService;
	@Autowired
	@Qualifier("oldUsersService")
	private OldUsersService oldUsersService;
	@Autowired
	@Qualifier("watchhistoryService")
	private WatchhistoryService watchhistoryService;
//	视频列表
	@RequestMapping("/allvideo")
	public ModelAndView allVideos(HttpServletRequest request){
		ModelAndView modelAndView=new ModelAndView();
		/*if(request.getSession().getAttribute("managerinfo")==null){
			modelAndView.setViewName("backstage/loginWTF");
			return modelAndView;
		}*/
		//推荐视频
		if(request.getSession().getAttribute("oldUsers")!=null){
			OldUsers oldUsers=(OldUsers) request.getSession().getAttribute("oldUsers");
		System.out.println(oldUsers.getUid());
			List<Matchpeoplevideo> mymatchpeoplebyvideolist=matchpeoplevideoService.selectVideoByUid(oldUsers.getUid());			
//			List<Matchpeoplevideo> matchpeoplebyvideolist=matchpeoplevideoService.selectVideoByUid("wbq123");			
			 List<Matchpeoplevideo> matchpeoplebyvideolist=new ArrayList<Matchpeoplevideo>();
			    for(Matchpeoplevideo videos:mymatchpeoplebyvideolist){
			    	//内容截取
			    	Video myvideo=videos.getVideo();
			    	String newvcontent=myvideo.getVcontent();
			    	myvideo.setVcontent(newvcontent.substring(0, 20));
			    	matchpeoplebyvideolist.add(videos);
			    }
			modelAndView.addObject("matchpeoplebyvideolist", matchpeoplebyvideolist);
			//modelAndView.setViewName("/front/educationalSystem");
  //			观看记录
	       List<Watchhistory> mySeenVideo=watchhistoryService.myWatched(oldUsers.getUid());
	       List<Watchhistory> allMySeenVideo=new ArrayList<Watchhistory>();
	         for(Watchhistory watchedvideo:mySeenVideo){
	    	  //内容截取
	        	  Video myvideo=watchedvideo.getVideo();
	        	    
			    	   String newvcontent=myvideo.getVcontent();
			    	   myvideo.setVcontent(newvcontent.substring(0, 20));
			    	  
	        	     allMySeenVideo.add(watchedvideo);
	         }
	         modelAndView.addObject("allMySeenVideo", allMySeenVideo);
			 modelAndView.setViewName("front/educationalSystem");
		}
		//视频列表
		modelAndView.setViewName("/front/educationSystem");
		Map<String,Object> map=new HashMap<String, Object>();
		Integer max=10;
		Integer page=0;
		Integer counts=0;
//		当前页
		if (request.getParameter("page")!=null) {
					page=Integer.valueOf(request.getParameter("page"));
				}
		if(page<0){
			page=0;
		}
		counts=videoService.videoCount()/max;
		if(counts<=0){
			counts=0;
		}
		if(page>=counts){
			page=counts;
		}
		map.put("page", page*max);
		map.put("max", max);
		List<Video> oldallVideos=videoService.findVieoMap(map);
	    List<Video> allVideos=new ArrayList<Video>();
	    for(Video videos:oldallVideos){
	    	//内容截取
	    	String newvcontent=videos.getVcontent();
	    	videos.setVcontent(newvcontent.substring(0, 20));
	    	allVideos.add(videos);
	    }
	   //免费视频
	    List <Video> allvideos=videoService.someFreePrice();
		List <Video> freevideo=new ArrayList<Video>();
		for(Video video:allvideos){
			String newvideoContent=video.getVcontent();
			if(newvideoContent.length()>20){
			video.setVcontent(newvideoContent.substring(0,20));
			freevideo.add(video);}
			if(newvideoContent.length()<20 && newvideoContent.length()>0){
				
				freevideo.add(video);}
		}
	    
		modelAndView.addObject("freevideo", freevideo);
		modelAndView.addObject("allVideos", allVideos);
		modelAndView.addObject("page", page);
		modelAndView.addObject("counts", counts);
		//}
		return modelAndView;
	}
	
	
//	根据id查询视频
	@RequestMapping("/selectvideobyid")
	public ModelAndView selectvideoById(HttpServletRequest request,Integer id){
		ModelAndView modelAndView=new ModelAndView();
		Video oneVideoById=videoService.queryOneVideo(id);
		Double videoPrice=oneVideoById.getVprice();
		System.out.println(videoPrice);		
		int videoId=oneVideoById.getId();
		String videotitle=oneVideoById.getVtitle();
		System.out.println(oneVideoById.getVtitle());
		List<Video> allfreeVideo=videoService.allFreePrice();
		if(videotitle.length()>0){
			System.out.println(videotitle.length());
			if(videotitle.length()>=1&&videotitle.length()<3){
				String newvidotitle=videotitle.substring(0, videotitle.length()-1);
				List<Video> theSameVideo=videoService.findSameVideo(newvidotitle);
				List<Video> sameVideo=new ArrayList<Video>();
				for(Video video:theSameVideo){
					String newvideoContent=video.getVcontent();
					video.setVcontent(newvideoContent.substring(0,20));
					sameVideo.add(video);
				}
				 modelAndView.addObject("sameVideo", sameVideo);
				 modelAndView.setViewName("front/educational/frontvideodetail");	
			}
			if(videotitle.length()>=3){
				String newvidotitle=videotitle.substring(0, videotitle.length()-1);
				List<Video> theSameVideo=videoService.findSameVideo(newvidotitle);
				List<Video> sameVideo=new ArrayList<Video>();
				for(Video video:theSameVideo){
					String newvideoContent=video.getVcontent();
					video.setVcontent(newvideoContent.substring(0,20));
					sameVideo.add(video);
				}
				 modelAndView.addObject("sameVideo", sameVideo);
				 modelAndView.setViewName("front/educational/frontvideodetail");	
			}
			if(videotitle.length()>=4){
			    String newvidotitle=videotitle.substring(0, (videotitle.length()-2));
			    System.out.println(videotitle.length()-2);
			    System.out.println(newvidotitle);
			    List<Video> theSameVideo=videoService.findSameVideo(newvidotitle);
				List<Video> sameVideo=new ArrayList<Video>();
				for(Video video:theSameVideo){
					String newvideoContent=video.getVcontent();
					video.setVcontent(newvideoContent.substring(0,20));
					sameVideo.add(video);
				}
			    System.out.println(sameVideo.size());
			    modelAndView.addObject("sameVideo", sameVideo);
			    modelAndView.setViewName("front/educational/frontvideodetail");	
			}
		}
		
		//List<Video> sameVideo=videoService.findSameVideo(videotitle);
//		付费观看
		if(videoPrice!=0){		     
			if(request.getSession().getAttribute("oldUsers")==null){
			     modelAndView.setViewName("front/login");
			     return modelAndView;
		      }else{
			       OldUsers users=(OldUsers) request.getSession().getAttribute("oldUsers");
			       OldUsers oldusers=oldUsersService.selectByUid(users.getUid());
			      System.out.println(oldusers);
			      String userUid=users.getUid();
			      Double userblance=oldusers.getBalance();
			      System.out.println(userblance);
                   
			      //判断老人是否第一次观看
                  if(users.getType()==0){
			      Map<String,Object> watchmap=new HashMap<String, Object>();
			      watchmap.put("videoId",videoId);
			      watchmap.put("userUid",userUid);
			      System.out.println(watchmap.size());
			      List<Watchhistory> myWatchhistory=watchhistoryService.whetherSeen(watchmap);
			    	//没有观看记录则添加并扣费   
			    	if(myWatchhistory.size()==0){
			    	    	Watchhistory watchhistory=new Watchhistory();
			    	    	watchhistory.setVideoid(videoId);
			    	    	watchhistory.setUid(userUid);
			    	    	watchhistory.setFirstwatchtime(new Date());
			    	    	/*watchhistoryService.addSeenHistory(watchhistory);*/
			    	  /*------------*/	
					     if(userblance<videoPrice){
							   String err="Sorry,您的余额不足！";
							   modelAndView.addObject("err", err);
							   modelAndView.setViewName("front/educational/nomoney");
							   return modelAndView;
						      }if(userblance>=videoPrice){
						    	Map<String,Object> map=new HashMap<String, Object>();
						    	map.put("videoPrice",videoPrice);
						    	map.put("userUid",userUid);
						    	System.out.println(map.size());
						    	oldUsersService.watchVideo(map);
						    	watchhistoryService.addSeenHistory(watchhistory);
							    modelAndView.addObject("oneVideoById", oneVideoById);
							   
								modelAndView.setViewName("front/educational/frontvideodetail");
						     }
						  }
					//曾购买过即可免费观看			    	
						 if(myWatchhistory.size()>0){
						      modelAndView.addObject("oneVideoById", oneVideoById);
						      
						  	  modelAndView.setViewName("front/educational/frontvideodetail");
						    }
			      }else{
               //游客则每次都要付费观看
//			      Double userblance=oldusers.getBalance();
			      System.out.println(userblance);
			     if(userblance<videoPrice){
				   String err="sorry,您的余额不足！";
				   modelAndView.addObject("err", "err");
				   modelAndView.setViewName("front/educationSystem");
				   return modelAndView;
			      }if(userblance>=videoPrice){
			    	Map<String,Object> map=new HashMap<String, Object>();
			    	map.put("videoPrice",videoPrice);
			    	map.put("userUid",userUid);
			    	System.out.println(map.size());
			    	oldUsersService.watchVideo(map);
				    modelAndView.addObject("oneVideoById", oneVideoById);
				   
					modelAndView.setViewName("front/educational/frontvideodetail");
			         }
		        }
		    }
		}
 //  免费视频
	if(videoPrice==0){
			modelAndView.addObject("oneVideoById", oneVideoById);
			 
			modelAndView.setViewName("front/educational/frontvideodetail");			
		}
		return modelAndView;
 }
	

	// 按条件查询
		@RequestMapping("/findvideos")
		public ModelAndView selectVideoByConditions(String queryVideoByConditions){
			List<Video> oldallVideos=videoService.queryByConditions(queryVideoByConditions);
			List<Video> allVideos=new ArrayList<Video>();
			for(Video videos:oldallVideos){
				String newVcontent=videos.getVcontent();
				videos.setVcontent(newVcontent.substring(0, 4));
				allVideos.add(videos);
			}
			ModelAndView modelAndView=new ModelAndView();
			modelAndView.addObject("allVideos", allVideos);
			modelAndView.setViewName("front/educationSystem");
			return modelAndView;
		}
//// 观看记录
//	@RequestMapping("/findwatched")
//	public ModelAndView selectWatchHistory(String queryVideoByConditions){
//  	  List<Watchhistory> oldallVideos=videoService.queryByConditions(queryVideoByConditions);
//					List<Watchhistory> allVideos=new ArrayList<Watchhistory>();
//					for(Watchhistory videos:oldallVideos){
//						String newVcontent=videos.getVcontent();
//						videos.setVcontent(newVcontent.substring(0, 4));
//						allVideos.add(videos);
//					}
//					ModelAndView modelAndView=new ModelAndView();
//					modelAndView.addObject("allVideos", allVideos);
//					modelAndView.setViewName("front/educationSystem");
//					return modelAndView;
//				}	
		//查询所有免费的
		@RequestMapping("/allfreevideo")
		public ModelAndView selectAllfreevideo(HttpServletRequest request){
			ModelAndView modelAndView =new ModelAndView();
//			if(request.getSession().getAttribute("oldUsers")==null){
//				modelAndView.setViewName("/front/login");
//				return modelAndView;
//			}
			List<Video> allfreeVideo=videoService.allFreePrice();
			modelAndView.setViewName("/front/educational/allfreevideo");
			Map<String,Object>map=new HashMap<String, Object>();
			Integer max=30;
			Integer page=0;
			Integer counts=0;
			//当前页
			if(request.getParameter("page")!=null){
				page=Integer.valueOf(request.getParameter("page"));
			}
			if(page<=0){
				page=0;
			}
			counts=videoService.freeCount()/max;
			if(counts<=0){
				counts=0;
			}
			if(page>=counts){
				page=counts;
			}
			map.put("page", page*max);
			map.put("max", max);
//			List <Edunews> alledunews=edunewsService.selectAllEdu();
			List <Video> allvideos=videoService.freePrice(map);
			List <Video> freevideo=new ArrayList<Video>();
			for(Video video:allvideos){
				String newvideoContent=video.getVcontent();
				video.setVcontent(newvideoContent.substring(0,5));
				freevideo.add(video);
			}
			modelAndView.addObject("freevideo", freevideo);
			modelAndView.addObject("page", page);
			modelAndView.addObject("counts", counts);
			return modelAndView;
		}
}
