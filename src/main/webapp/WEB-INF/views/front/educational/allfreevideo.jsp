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

<!-- <script type="text/javascript"
	src="/resources/front/js/jquery.1.8.2.min.js"></script> -->
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
<!-- 验证 -->

<script type="text/javascript" language="javascript" src="/resources/js/videoandeducheck.js"></script>

</head>
<body>
	
<jsp:include page="../index_header.jsp" flush="true" />
<jsp:include page="../header.jsp" flush="true" />	
	<!-- 查找最顶级栏目  -->
	
	<div class="eduvideobgcolor">
		<!--图片轮播  -->
			 
  <div id="lunbo">
    <ul>
        <li><img src="/resources/upload/front/ad5.jpg" alt="..." width="100%"
						height="100%"></li>
        <li><img src="/resources/upload/front/ad4.jpg" alt="..." width="100%"
						height="100%"></li>
        <li><img src="/resources/upload/front/ad3.jpg" alt="..." width="100%"
						height="100%"></li>
        <li><img src="/resources/upload/front/ad2.jpg" alt="..." width="100%"
						height="100%"></li>
    </ul>
</div>

		<!--搜索  -->
		<form
			action="${pageContext.request.contextPath}/front/videos/findvideos.action"
			method="post" onsubmit="return searchCheck()">
			<div class="col-md-offset-7 col-md-4 addstyle"
				style="margin-top: 6px;">
				<div class="input-group">
					<input type="text" class="form-control"
						name="queryVideoByConditions" placeholder="Search for..." id="mysearch" onblur="searchContent()">
					<span class="input-group-btn">
						<button class="btn btn-info" type="submit">
							<!-- <a href="#">   </a> -->
							<!-- <a href="#" type="submit" role="button">Search</a> -->
							<!--  <input type="submit" value="Search"> -->
							Search
						</button>

					</span>
              
				</div>
				 <div>
	  			   <font color="red"><p id="error1"></p></font>
		           <font color="green"><p id="success1"></p></font>
		         </div>
			</div>
			<%-- <div style="margin-top: 8px;float: left; font-size: 20px;">
				<a
					href="${pageContext.request.contextPath }/front/videos/allfreevideo.action?"
					role="button" class="btn btn-info"><span
					class="glyphicon glyphicon-plus" aria-hidden="true"></span> 免费视频...</a>
			</div> --%>
		</form>

	</div>

	<br>
	<br>
	
<!--免费视频  -->
	<c:if test="${!empty freevideo }">
		<div id="caseslist">
			<div class="videolisttitle">
				<strong> <span class="glyphicon glyphicon-facetime-video"
					aria-hidden="true"></span> 免费资源
				</strong>
				<%-- <div style="margin-top: 8px;float: right; font-size: 20px;margin-right: 120px;">
				<a
					href="${pageContext.request.contextPath }/front/videos/allfreevideo.action?"
					><span
					class="glyphicon glyphicon-plus" aria-hidden="true"></span> 免费视频...</a>
			</div> --%>
				<HR>
			</div>
			<div>
				<ul class="cases wrapper"
					style="width: 85%;margin: 0 auto;margin-left: 160px;">

					<c:forEach items="${freevideo}"
						var="freevideo">
						<li class="item1" style="width:230px;">
							<!--  <img src="../uploads/131102/1-131102210430T2.png"  width="240" height="152" alt="成都城市设计研究中心" /> -->
							<a
							href="${pageContext.request.contextPath }/front/videos/selectvideobyid.action?id=${freevideo.id}">
								<!-- <video width="210" height="152" controls> --> <video
									width="240" height="152" preload="metadata"> <source
									src="/files${freevideo.vurl}"
									type="video/mp4"></video>
						</a> <!-- <br>
						<br><br><br><br><br><br><br><br> -->
					     <strong>  
							<a href="${pageContext.request.contextPath}/front/videos/selectvideobyid.action?id=${freevideo.id}">
									<font color="blue" size="3px">${freevideo.vtitle }</font>
							</a>&nbsp;&nbsp; <font color="red">￥:${freevideo.vprice }</font>
						</strong> <!--鼠标移上去显示  --> 主讲人： ${freevideo.vteacher}<br>
							${freevideo.vcontent}....

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
								<label for="exampleInputName2">跳到:</label> <input page="page"
									style="width: 60px;" type="text" class="form-control"><label
									for="exampleInputName2">&nbsp;页</label>
							</div>
							<button id="jumpBtn" class="btn btn-default">跳转</button>&nbsp;
						</td>
					</tr>
				</table>
			</div>
		</div>
	
	</c:if>

</div>
	
	<br><br><br>
	
	<jsp:include page="../footer.jsp"></jsp:include>
	<script type="text/javascript">
    //因为使用了document，所以js需要放在需要执行的代码下面生效才能生效
    var li=document.getElementById('lunbo').getElementsByTagName("li");
    var num=0;
    var len=li.length;

    setInterval(function(){
        li[num].style.display="none";
        num=++num==len?0:num;
        li[num].style.display="inline-block";

    },9000);//切换时间
</script>
	
	<!--免费分页js  -->
	<script type="text/javascript">
		$("#jumpBtn").click(function() {
			var b = $("input[page='page']").val();
			window.location.href = "/front/videos/allfreevideo?page=" + b;
		})
	
		$("button[page='page']").click(function() {
			var b = $(this).val();
			window.location.href = "/front/videos/allfreevideo?page=" + b;
		})
	</script>
</body>
</html>