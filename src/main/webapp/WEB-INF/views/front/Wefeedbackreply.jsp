<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<!--  修改-->
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">
		<title>我的消息</title>
		<link href="/resources/front/css/self_exchange/newstyle.css" rel="stylesheet" type="text/css">
		<link href="/resources/front/css/self_exchange/admin.css" rel="stylesheet" type="text/css">
		<link href="/resources/front/css/self_exchange/amazeui.css" rel="stylesheet" type="text/css">
		<link href="/resources/front/css/self_exchange/personal.css" rel="stylesheet" type="text/css">
		<link href="/resources/front/css/self_exchange/infstyle.css" rel="stylesheet" type="text/css">
		<script src="/resources/front/js/self_exchange/jquery.min.js"></script>
		<script src="/resources/front/js/self_exchange/amazeui.js"></script>
<style type="text/css">
.clearfix::after {
    visibility: hidden;
    display: block;
    font-size: 0;
    content: " ";
    clear: both;
    height: 0;
}
.container{
 width:100%;
 margin:0 auto 0;
 background-color:#FFF;
 overflow:hidden;
}
.comments{
font: 12px/1.5 "Hiragino Sans GB","Microsoft YaHei",simsun;
font-size: 13px;
color: #211922;
margin-left:20px;
}
.comments .title{
  font-family: "Microsoft YaHei";
  font-size: 18px;
  font-weight: normal;
  height: 40px;
  line-height: 40px;
  overflow: hidden;
}
.comments .num_area{
  color: #999;
  font-size: 12px;
  font-weight: normal;
}
em {
    font-style: normal;
}
.comment_send{
 font-size:12px;
 position: relative;
 padding: 20px 0;
 border-top: 1px solid #dcdcdc;
}
.comment_avatar{
 float:left;
 width: 60px;
 text-align: center;
}
.comments .comment_send .userPic{
 height: 60px;
 margin-right: 20px;
 width: 60px;
}
.userPic img{
  border-radius: 100%;
}
.userPic {
    display: block;
}
img {
    border: 0;
}
.comments .comment_sendPart {
    padding-left: 80px;

}
.comments .btn_p {
    position: relative;
    height:40px;
}
.comments span.emotion{
 background:url(/resources/front/images/emot.gif) no-repeat scroll 2px 2px;
 cursor: pointer;
 height: 20px;
 padding-left: 40px;
 width:42px;
}
.btn_p .reply{
  height:100%;
  width:500px;
  font-family: "Microsoft YaHei";
  font-size: 16px;
  color:red;
  width:500px;
  inline-height:30px;
  overflow:hidden;
  border:none;  
}
.textarea_comment{
 width:1000px;
 height:40px;
 margin-left:40px;
}
.textarea_comment .textr{
  width:860px;
  height:100%;
}
.spans{
 display:inline-block;
 height:30px;
 line-height:30px;
 margin:auto 0;
 text-align:center;
 color:#999;
 font-size:12px;
 border:none;
}
.gui{width:600px;text-align:left;overflow:hidden;}
.huij{margin-left:10px; border:none;}
.comment_wrap{width:100%;height:280px;overflow-y:scroll;overflow-x:hidden;}
.comment_list{border-left:1px solid gray;margin-bottom: 10px;
padding-bottom: 20px;}
.comment_list .comment_avatar{
  font-size:12px;
  padding-right:16px;
  position: relative;
  text-align: center;
  width: 60px;
  float: left;
  margin-left:10px;
}
.comment_list .userPic{
  height: 36px;
  margin-bottom: 4px;
  width: 36px;  
}
.grey{color:#999;width:100px; dispaly:inline-block;}
.comment_conBox{
  color:#666;
  float: left;
}
.comment_avatar_time{
 overflow:hidden;
 height:30px;
 width:840px;
}
.comment_avatar_time .textreply{
 width:600px;
 height:30px;
 line-height:30px;
 font-size:14px;
 color:#333;
  
 float:left;
 overflow-x:hidden;
}
.comment_avatar_time .time{
 float:right;
 margin-right:20px;
 display:inline-block;
 color:#999;
 font-size:14px;
  height:30px;
 line-height:30px;
}
.comment_conBox .comment_conWrap{
  width:840px;
  height:30px;
  overflow:hidden;
 
}
.comment_conWrap .dty{
 display:block;
 float:left;
 width:600px;
 height:30px;
 line-height:30px;
 font-size:12px;
 color:#333;
 font-family:"Microsoft YaHei";
 
 margin-left:40px;
 overflow-x:hidden;
}
.comment_conWrap .times{
 display:block;
 float:left;
 width:120px;
 height:30px;
 line-height:30px;
 font-size:12px;
 color:#333;
 font-family:"Microsoft YaHei";
 
}
.comment_conWrap .again{
 display:block;
 width:80px;
 height:30px;
 line-height:30px;
 text-align:right;
 float:left;
 font-family:"Microsoft YaHei";
}
.tabtwo{
 width:1000px;
 margin:0 auto;
 overflow-y:scroll;
}
.tabtwo li{
 width:980px;
 height:80px;
 margin:10px auto;
}
.tab_div{
 width:700px;
 float:left;
 height:100%;
}
.tab_div .div_1{
   height:30px;
    
}
.div_1 span{
  height:30px;
  line-height:30px;
  margin-left:10px;
}
.div_1 .smarit{
 font-size:12px;
 float:right;
 margin-right:30px;
 width:120px;
 text-align:right;
 overfloe:hidden;
 font-family:"Microsoft YaHei";
}
.div_2 span{
  height:25px;
  line-height:20px;
  width:100%;
  font-size:12px;
  padding-right:20px;
  padding-left:10px;
}
.tab_2{
  width:200px;
  height:100%;
  float:left;
}
.tab_2 span{
 width:100px;
 height:30px;
 line-height:30px;
 float:right;
 margin-right:10px;
 margin-top:40px;
}
</style>
	</head>
	<body>
		<!--头 -->
		<jsp:include page="Self_header.jsp"></jsp:include>
            <div class="nav-table">
					   <div class="long-title"><span class="all-goods">全部分类</span></div>
					   <div class="nav-cont">
							<ul>
								<li class="index"><a href="#">首页</a></li>
                                <li class="qc"><a href="#">闪购</a></li>
                                <li class="qc"><a href="#">限时抢</a></li>
                                <li class="qc"><a href="#">团购</a></li>
                                <li class="qc last"><a href="#">大包装</a></li>
							</ul>
						    <div class="nav-extra">
						    	<i class="am-icon-user-secret am-icon-md nav-user"></i><b></b>我的福利
						    	<i class="am-icon-angle-right" style="padding-left: 10px;"></i>
						    </div>
						</div>
			</div>
			<b class="line"></b>
		<div class="center">
			<div class="col-main">
				<div class="main-wrap">

					<div class="user-news">

						<!--标题 -->
						<div class="am-cf am-padding">
							<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">宜嘉老年管理系统用户反馈</strong> / <small>News</small></div>
						</div>
						<hr/>

						<div class="am-tabs am-tabs-d2" data-am-tabs>
							<ul class="am-avg-sm-3 am-tabs-nav am-nav am-nav-tabs">
								<li class="am-active"><a href="#tab1">已回复</a></li>
								<li><a href="#tab2">未回复</a></li>
							</ul>
							<div class="am-tabs-bd">
								<div class="am-tab-panel am-fade am-in am-active" id="tab1">
								<div class="container clearfix">
								 <div class="comments">
								  <div class="title">
								    已处理
								  <span class="num_area">(<em id="comments_num" class="comments_num">874</em>)</span>
								  </div>
								  <div class="comment_send clearfix">
								  <div class="comment_avatar">
								  <span class="userPic">
								  <img class="userPic avatar user_my_avatar" src="/resources/front/images/avatar.jpg" alt="" width="60" height="60"></span>
								  <font class="username">test</font>
								  </div>
								  <div id="reply_0" class="comment_sendPart">
								  <div class="btn_p clearfix">
								  <span class="emotion" tabindex="1" data-id="0"></span>
								  <textarea rows="" cols="2" class="reply">${endtime.replyinformation}</textarea>
								  <span style="font-size:12px;color:#999;width:100px;margin-left:100px;">三小时前</span>
								  <span style="font-size:14px;color:#333;width:200px;margin-left:30px;text-align:left; "><fmt:formatDate value="${endtime.time}" pattern="yyyy-MM-dd HH:mm:ss"/></span>
								  </div>
								  <div class="textarea_comment">
								  <div class="textr">
								  <span class="spans">我的反馈：</span>
								   <textarea rows="" cols="" class="spans gui">${endtime.content}</textarea>
								  <span class="spans huij"><fmt:formatDate value="${endtime.speaktime}" pattern="yyyy-MM-dd HH:mm:ss"/></span>
								  </div>
								  </div>
								  </div>
								  </div>
								  <div id="comment_wrap" class="comment_wrap">
								  <ul class="comment_listBox">
								  <c:forEach items="${replys}" var="reply">
								  <li class="comment_list clearfix">
								  <div class="comment_avatar">
								  <span class="userPic"><img alt="" src="/resources/front/images/avatar.jpg" width="36" height="36"></span>
								  <span class="grey">dpeng123</span>
								  </div>
								  <div class="comment_conBox">
								  <div class="comment_avatar_time">
								  <span class="textreply">
								   管理员回复:<font>${reply.replyinformation}</font>
								  </span>
								  <span class="time"><fmt:formatDate value="${reply.time}" pattern="yyyy-MM-dd HH:mm:ss"/></span>
								  </div>
								  <div class="comment_conWrap clearfix">
								  <span class="dty">
								  <em>我的反馈：</em>
								    ${reply.content}
								  </span>
								  <span class="times"><fmt:formatDate value="${reply.speaktime}" pattern="yyyy-MM-dd HH:mm:ss"/></span>
								  <span class="again"><a style="color:#333;font-size:12px;" href="#">再次反馈>></a></span>
								  </div>
								  </div>
                                  </li>
							      </c:forEach>
								  </ul>
								  </div>
								 </div>
								</div>
								</div>
								<div class="am-tab-panel am-fade" id="tab2">
                                <div class="tabtwo">
                                <ul>
                                <c:forEach items="${replynone}" var="replynone">
                                <li>
                                <div class="tab_div">
                                <div class="div_1">
                                <span><em>时间:</em><fmt:formatDate value="${replynone.speaktime}" pattern="yyyy-MM-dd HH:mm:ss"/></span>
                                <span class="smarit">三天以前</span>
                                </div>
                                <div class="div_2">
                                <span><em>未回复:</em>${replynone.content}</span>
                                
                                </div>
                                </div>
                                <div class="tab_2">
                                <span>再次反馈>></span>
                                </div>
                                </li>
                                </c:forEach>
                                </ul>
                                </div>
								</div>
							</div>
						</div>
					</div>

				</div>
				<!--底部-->				
			</div>
  <jsp:include page="SelfCenter_Menu.jsp"></jsp:include>	
		</div>
		<jsp:include page="EC_footer.jsp"></jsp:include>
	</body>
</html>