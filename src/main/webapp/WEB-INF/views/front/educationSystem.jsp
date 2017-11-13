<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript"
	src="/resources/front/js/jquery.1.8.2.min.js"></script>
<script type="text/javascript"
	src="/resources/front/js/jquery.plugin.min.js"></script>
<link rel="stylesheet" href="/resources/css/frontedu.css"
	type="text/css" media="all" />
<script type="text/javascript"
	src="/resources/unity/jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="/resources/unity/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<link href="/resources/unity/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<script type="text/javascript"
	src="/resources/unity/jquery/jquery-3.2.0.js"></script>
<script type="text/javascript"
	src="/resources/unity/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

</head>
<body>
	<div style="padding-bottom: 80px;">
		<jsp:include page="header.jsp"></jsp:include></div>
	<!-- 查找最顶级栏目  -->
	<%-- <section id="single">
	<div class="cat_title">
		<div class="wrapper"><br><br>
			<h2><strong>Education</strong>教育</h2>
			<p>我们能做学什么？<br/>What can we study?</p>
		</div>
	</div>
	<div class="category">
		<div class="wrapper">
			<h1>教育</h1>
            
            <ul class="catbtn">
            
 			<li><a href="web/index.htm">品牌网站建设</a></li>   
			
 			<li><a href="seo/index.htm">seo优化推广</a></li>   
			
 			<li><a href="yunying/index.htm">网站运营托管</a></li>   
			
			</ul>
		</div>
	</div>
	<article class="serv_detailed">
		<div id="detailed">
		这里是总的服务，在后台栏目中修改，修改后更新生成！
       <a href="${pageContext.request.contextPath}/front/edu/alledunews">新闻</a>
        <a href="${pageContext.request.contextPath}/front/videos/allvideo">视频</a>
        </div>
		<div id="case_footer"></div>
	</article>
</section> --%>

	<div class="eduvideobgcolor">
		<!--图片轮播  -->
		<div id="carousel-example-generic" class="carousel slide"
			data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0"
					class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
				<li data-target="#carousel-example-generic" data-slide-to="3"></li>
				<li data-target="#carousel-example-generic" data-slide-to="4"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox"
				style="height:450px; padding-bottom: 6px;">
				<div class="item active">
					<img src="/resources/upload/front/edu1.png" alt="..." width="100%"
						height="100%">
					<div class="carousel-caption">...</div>
				</div>
				<div class="item">
					<img src="/resources/upload/front/edu5.jpg" alt="..." width="100%"
						height="100%">
					<div class="carousel-caption">...</div>
				</div>
				<div class="item">
					<img src="/resources/upload/front/edu6.jpg" alt="..." width="100%"
						height="100%">
					<div class="carousel-caption">...</div>
				</div>
				<div class="item">
					<img src="/resources/upload/front/edu3.png" alt="..." width="100%"
						height="100%">
					<div class="carousel-caption">...</div>
				</div>
				<div class="item">
					<img src="/resources/upload/front/edu9.jpg" alt="..." width="100%"
						height="100%">
					<div class="carousel-caption">...</div>
				</div>
				...
			</div>

			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic"
				role="button" data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#carousel-example-generic"
				role="button" data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
		<!--搜索  -->
	
			<form action="${pageContext.request.contextPath}/front/videos/findvideos.action"
								method="post">
								<div class="col-md-offset-6 col-md-4 addstyle" style="margin-top: 6px;">
									<div class="input-group">
										<input type="text" class="form-control"
											name="queryVideoByConditions" placeholder="Search for...">
										<span class="input-group-btn">
											<button class="btn btn-info" type="submit">
												<!-- <a href="#">   </a> -->
												<!-- <a href="#" type="submit" role="button">Search</a> -->
												<!--  <input type="submit" value="Search"> -->
												Search
											</button>

										</span>
									</div>
							</form>
		</div>
		<br>
		<br>
		<c:if test="${empty allVideos }">
		            <a
						href="${pageContext.request.contextPath}/front/videos/allvideo.action?"><font
						size="2px" color="blue"> <span
							class="glyphicon glyphicon-backward" aria-hidden="true"></span>&nbsp;返回视频列表
					</font></a>
					<br>
					<br>
					<div style="margin-left:100px; height: 260px;">
						<font color="pink">sorry:<br>&nbsp;&nbsp;&nbsp;&nbsp;亲爱的客官，目前还没有该内容！<br>&nbsp;&nbsp;&nbsp;&nbsp;小编会继续努力的哦！嘿嘿,给笑脸
						</font>
					</div>
		</c:if>
		<!--视频列表  -->
		<div id="caseslist" >
		<div class="videolisttitle"><strong>
		<span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span> 原创精选</strong>
		<HR></div>
		<div>						
		<ul class="cases wrapper" style="width: 85%;margin: 0 auto;margin-left: 160px;">
		<c:if test="${!empty allVideos }">
			<c:forEach items="${allVideos}" var="allVideos">
				<li class="item1" style="width:230px;">
					<!--  <img src="../uploads/131102/1-131102210430T2.png"  width="240" height="152" alt="成都城市设计研究中心" /> -->
					<a
					href="${pageContext.request.contextPath }/front/videos/selectvideobyid.action?id=${allVideos.id}">
						<!-- <video width="210" height="152" controls> --> <video
							width="210px" height="152" preload="metadata"> <source
							src="/files${allVideos.vurl}" type="video/mp4"> 
				    </a><br><br><br><br><br><br><br><br><br>  
				     <strong><a href="${pageContext.request.contextPath}/front/videos/selectvideobyid.action?id=${allVideos.id}">
				         <font color="blue" size="3px">${allVideos.vtitle }</font> </a>
				         <font color="red">${allVideos.vprice}</font>
				         </strong>
					  主讲人：${allVideos.vteacher}<br>
					   ${allVideos.vcontent}....
					<br><br>
					
				</li>
			</c:forEach>
		
	</ul>
	</div>	
	<!--分页  -->
	                         <div class="col-md-offset-6">
	                         <table>
									<tr>
										<td class="form-inline">
											<button page="page" value="0" class="btn btn-default">首页</button>&nbsp;
											<button page="page" class="btn btn-default" value="${page-1}">上一页</button>&nbsp;
											<button page="page" class="btn btn-default" value="${page}">${page+1}</button>&nbsp;
											<button page="page" class="btn btn-default" value="${page+1}">下一页</button>&nbsp;
											<button page="page" class="btn btn-default" value="${counts}">尾页(${counts+1})</button>
											<div class="form-group">
												<label for="exampleInputName2">跳到:</label>
												<input page="page" style="width: 60px;" type="text" class="form-control"><label
													for="exampleInputName2">&nbsp;页</label>
											</div>
											<button id="jumpBtn" class="btn btn-default">跳转</button>&nbsp;
										</td>
									</tr>
								</table>
       </div>
  </div>
  
   <!--猜你喜欢  -->
 <c:if test="${!empty matchpeoplebyvideolist }"> 
  <div id="caseslist">
		<div class="videolisttitle"><strong>
		<span class="glyphicon glyphicon-fire" aria-hidden="true"></span> 为你推荐</strong>
		<HR></div>
		<div>								
		<ul class="cases wrapper" style="width: 85%;margin: 0 auto;margin-left: 160px;">
		
			<c:forEach items="${matchpeoplebyvideolist}" var="matchpeoplebyvideolist">
				<li class="item1" style="width:230px;">
					<!--  <img src="../uploads/131102/1-131102210430T2.png"  width="240" height="152" alt="成都城市设计研究中心" /> -->
					<a
					   href="${pageContext.request.contextPath }/front/videos/selectvideobyid.action?id=${matchpeoplebyvideolist.video.id}">
						<!-- <video width="210" height="152" controls> --> 
						
						<video	width="240" height="152" preload="metadata"> <source
							src="/files${matchpeoplebyvideolist.video.vurl}" type="video/mp4"> </video>
				     </a>
				    <br><br><br><br><br><br><br><br><br>  
				   <strong><a
					href="${pageContext.request.contextPath}/front/videos/selectvideobyid.action?id=${matchpeoplebyvideolist.video.id}">					
					 <font color="blue" size="3px">${matchpeoplebyvideolist.video.vtitle }</font> </a>&nbsp;&nbsp;
					<font color="red">￥:${matchpeoplebyvideolist.video.vprice }</font> </strong>
					 <!--鼠标移上去显示  -->
					      主讲人： ${matchpeoplebyvideolist.video.vteacher}<br>
					      ${matchpeoplebyvideolist.video.vcontent}....
					
				</li>
			</c:forEach>
		
	</ul>
  </div> 
  </div>
  </c:if>
  
  
   <!--免费视频 -->
 <c:if test="${!empty freevideo }"> 
  <div id="caseslist" >
		<div class="videolisttitle"><strong>
		<span class="glyphicon glyphicon-up" aria-hidden="true"></span> 免费资源</strong>
		<HR></div>
		<div style="margin-left: 120px;">								
		<ul class="cases wrapper" style="width: 85%;margin: 0 auto;margin-left: 160px;">
		
			<c:forEach items="${freevideo}" var="freevideo">
				<li class="item1" style="width:230px;">
					<!--  <img src="../uploads/131102/1-131102210430T2.png"  width="240" height="152" alt="成都城市设计研究中心" /> -->
					<a
					   href="${pageContext.request.contextPath }/front/videos/selectvideobyid.action?id=${freevideo.id}">
						<!-- <video width="210" height="152" controls> --> 
						
						<video	width="220" height="152" preload="metadata"> <source
							src="/files${freevideo.vurl}" type="video/mp4"> </video>
				     </a><br><br><br><br><br><br><br><br><br>  
				   <strong><a
					href="${pageContext.request.contextPath}/front/videos/selectvideobyid.action?id=${freevideo.id}">					
					 <font color="blue" size="3px">${freevideo.vtitle }</font> </a>&nbsp;&nbsp;
					<%-- <font color="red">￥:${matchpeoplebyvideolist.video.vprice }</font> --%> </strong>
					 <!--鼠标移上去显示  -->
					      主讲人： ${freevideo.vteacher}<br>
					      ${freevideo.vcontent}....
					
				</li>
			</c:forEach>
		
	</ul>
  </div> 
  </div>
  </c:if>
  
</c:if> 
</div>









	<jsp:include page="footer.jsp"></jsp:include>
<!--分页js  -->	
<script type="text/javascript">
		
		 $("#jumpBtn").click(function(){
			var b = $("input[page='page']").val();
			window.location.href = "/front/videos/allvideo?page=" + b;
		})

		$("button[page='page']").click(function() {
			var b = $(this).val();
			window.location.href = "/front/videos/allvideo?page=" + b;
		})
	</script>
</body>
</html>