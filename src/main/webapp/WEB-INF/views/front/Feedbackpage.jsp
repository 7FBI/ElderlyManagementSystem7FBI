<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
		<link href="/resources/front/css/self_exchange/feedback1.css" rel="stylesheet" type="text/css">
		<script src="/resources/front/js/self_exchange/jquery.min.js"></script>
		<script src="/resources/front/js/self_exchange/amazeui.js"></script>
	</head>
	<body style="background:#F8F8F8">
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
								<li class="am-active"><a href="#tab1">系统反馈</a></li>
								<li><a href="#tab2">商城反馈</a></li>
							</ul>
							<div class="am-tabs-bd">
								<div class="am-tab-panel am-fade am-in am-active" id="tab1">
									<!-- 你的内容 -->
		                       <div class="innerframe">
		                       <table class="innerthui">
		                       <tbody>
		                       <tr>
		                       <td>
		                       <form id="limesurvey" action="">
		                       <div class="welcome-table">
		                       <span class="survey-welcome">
		                                              尊敬的用户：<br>                 
	                                                      您好！为了给您提供更好的服务，我们希望收集您使用
	                           <strong><span style="color:rgb(255, 0, 0);">宜嘉老年管理系统</span></strong>
	                                                     时的看法或建议。对您的配合和支持表示衷心感谢！
		                       </span> 
		                       </div>
		                       </form>
		                       </td>
		                       </tr>
		                       </tbody>
		                       </table>
		                       <form class="group-0" id="group-0" action="">
		                       <div class="questiontext">
		                       <strong>如果您在使用
		                        <span style="color: rgb(255, 0, 0);">宜嘉老年管理系统</span>
		                                                时，有什么好或不好的地方，请大声说出来！我们会关注您的反馈，不断优化产品，为您提供更好的服务！
		                       </strong>
		                       </div>
		                       <div class="answer">
		                       <textarea name="content" class="textarea"></textarea>
		                       </div>
		                       <input name="uid" type="hidden" value="${oldUsers.uid}">
		                       <input name="status" type="hidden" value="0">
		                       <div class="survey-question-help">
		                       <img src="">
		                                              请留下你的联系信息，我们会即时对你的反馈进行处理，我们会对你的信息进行保密
		                       </div>
		                       <div class="tryop">
		                        <p>
		                        <label>姓名</label>
		                        <input class="" name="username" >
		                        </p>
		                        <p>
		                        <label>手机号</label>
		                        <input class="" name="telephone" >
		                        </p>
		                       </div>
		                       <div class="navigator-table">
		                       <button type="button" class="submit-buttons">提交反馈</button>
		                       </div>
		                       </form>
		                       </div>
								</div>

								<div class="am-tab-panel am-fade" id="tab2">
								  <div class="welcome-table">
		                       <span class="survey-welcome">
		                                              尊敬的用户：<br>                 
	                                                      您好！你对收到
	                           <strong><span style="color:rgb(255, 0, 0);">宜嘉官网商城</span></strong>
	                                                       的商品有什么问题或者对商城有什么建议，请在下方填写                       
		                       </span> 
		                       </div>
								  <div class="jianyi">
								  <form action="" id="producby">
								  <p class="becauser">反馈描述:</p>
								  <textarea name="content" class="textrt" placeholder="请尽情的吐槽吧 "></textarea>
								  <input name="uid" type="hidden" value="${oldUsers.uid}">
								  <input name="status" type="hidden" value="0">
								  <div class="m-imgshow f-imgshow">
								  <div class="thumbnail-list" style="position: relative;">
								  <span class="btn-upload" style="position:relative;z-index:0;"></span>
								  <span class="upload-num">
								   共<em>0</em>张
								  还能上传<em>9</em>张
								  </span>
								  <div class="plupload html5" style="position: absolute; background: transparent none repeat scroll 0% 0%; width: 50px; height: 50px; overflow: hidden; z-index: 2; opacity: 0; top: 0px; left: 110px;">
								  <input name="graphTheorise" style="font-size:999px;position:absolute;width:100%;height:100%;" accept="image/jpeg,image/gif,image/png,image/bmp" type="file"  multiple="multiple">
								  </div>
								  </div>
								  <div class="bacayt">
								  <div class="bacat_yui">
								   请留下你的联系信息，我们会即时对你的反馈进行处理，我们会对你的信息进行保密
								  </div>
								<div class="tryop">
		                        <p>
		                        <label>姓名</label>
		                        <input class="" name="username" >
		                        </p>
		                        <p>
		                        <label>手机号</label>
		                        <input class="" name="telephone" >
		                        </p>
		                         </div>
								  </div>
								  <div class="bacatrt_1">
								  <button type="button" class="buttons" >提交反馈</button>
								  </div>
								  </div>
								  </form>
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
	<!-- 底部 -->
	<jsp:include page="EC_footer.jsp"></jsp:include>
	</body>
<script src="/resources/front/js/self_exchange/jquery.min.js"></script>
<script type="text/javascript">
$(document).on('click',".submit-buttons",function(){
	var froms=$("#group-0");
	$.ajax({
		type : 'post',
		url:"/front/feedback/insertoutfeedback.action",
		data : froms.serialize(),
		success :function(data){
			if(data=="ture"){alert("你对反馈已经提交 我们会尽快回复");}
			else if(data=="false"){
		    alert("你对反馈提交出现了问题！")
	    }
		},
		error : function() {
			alert("网络错误");
		}
	})
})
$(document).on('click',".buttons",function(){
	 var froms=$("#producby");
	 $.ajax({
		 type:'post',
		 url:"/front/feedback/insertfeedproducts.action",
		 data:froms.serialize(),
		 success:function(data){
			 if(data=="ture"){
				 alert("你的反馈提交成功！")
			 }else if(data=="false"){
				 alert("你的提交失败")
			 }
		 },
		 error:function(){
			 
		 }
	 })
})
</script>
</html>