<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'edunewsindex.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="/resources/css/frontedu.css"
	type="text/css" media="all" />
	<link rel="stylesheet" href="/resources/css/fronteducational.css"
	type="text/css"/>
<script type="text/javascript"
	src="../../../../resources/front/js/jquery.1.8.2.min.js"></script>
<script type="text/javascript"
	src="../../../../resources/front/js/jquery.plugin.min.js"></script>
<!--  -->
<script type="text/javascript"
	src="/resources/unity/jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="/resources/unity/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<link href="/resources/unity/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<script type="text/javascript"
	src="/resources/unity/jquery/jquery-3.2.0.js"></script>
<!-- 验证 -->

<script type="text/javascript" language="javascript" src="/resources/js/videoandeducheck.js"></script>

</head>

<body>
<jsp:include page="../index_header.jsp" flush="true" />
<jsp:include page="../header.jsp" flush="true" />	
	<section id="newslist">
	<div class="cat_title edutitle">
		<div class="wrapper">
			<h2>
				<strong>NEWS</strong>新闻
			</h2>
			<p>
				最近正在折腾...<br />Recently is to do ...
			</p>
		</div>
	</div>
	<!-- <div class="category">
		<div class="wrapper">
			<ul>

				<li><a href="gsnews/index.htm"
					tppabs="http://mc18.eatdou.com/news/gsnews/">公司新闻</a></li>

				<li><a href="hynews/index.htm"
					tppabs="http://mc18.eatdou.com/news/hynews/">行业动态</a></li>
			</ul>
		</div>
	</div> -->
	<div style="width: 76% ;margin: 0 auto;">
		<form action="${pageContext.request.contextPath}/front/edu/queryEduByConditions.action" method="post" onsubmit="return searchCheck()">	
		  	 <div class="col-md-offset-8 col-md-4 frontedusearch">
					<div class="input-group">
						<input type="text" class="form-control"
							 name="findEduByConditions" placeholder="Search for..." id="mysearch" onblur="searchContent()">
								<span class="input-group-btn">
									<button class="btn btn-info" type="submit">Search</button>										
								</span>
					 
					 </div>
					 <div>
	  			      <font color="red"><p id="error1"></p></font>
		              <font color="green"><p id="success1"></p></font>
		         </div>
			 </div>
          </form>
    <br>
    <br>  
	<!--  列表  -->						
	<ul class="news wrapper">
		<!--示例  -->
		<!-- <li><a href="hynews/23.html"
			tppabs="http://mc18.eatdou.com/news/hynews/23.html"><img
				src="../uploads/131102/1-131102210K4H1.jpg"
				tppabs="http://mc18.eatdou.com/uploads/131102/1-131102210K4H1.jpg"
				data-original="" alt="网络营销最重要的一步，你做到了吗？" /></a>
			<div class="newslist">
				<a href="hynews/23.html"
					tppabs="http://mc18.eatdou.com/news/hynews/23.html">网络营销最重要的一步，你做到了吗？</a>
				<span>UPTATED:2013/11/02</span>
				<p>很多人总是会问，为什么我的网站转化率总是居高不下？也许你的网站很美观大气，功能很完善，入口非常便捷丰富，但是就是转化不好！原因只在于，你忽略了网络营销最重要的一步，所以你....</p>
			</div>
			</li> -->
		<!--读取  -->
		<c:if test="${!empty newedunews}">
		<c:forEach items="${newedunews }" var="newedunews">
		<li style="list-style-type: none; "><a href="${pageContext.request.contextPath }/front/edu/querydudetailbyid.action?id=${newedunews.id}" >
			  <img
				src="/files${newedunews.eduurl }"	
				 alt="新闻图片"/></a>
			<div class="newslist" >
				<a href="${pageContext.request.contextPath }/front/edu/querydudetailbyid.action?id=${newedunews.id}">${newedunews.edutitle}</a>															
				<span>UPTATED:<fmt:formatDate value="${newedunews.edutime}" pattern="yyyy-MM-dd"/></span>
				<p >${newedunews.educontent }....</p>
			</div>
			</li>
		</c:forEach>
		</c:if>
	</ul>

<!--分页  -->
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
</div>
</section>
<br>
<br>
<jsp:include page="../footer.jsp" flush="true" />
<!--分页js  -->	
<script type="text/javascript">
		
		 $("#jumpBtn").click(function(){
			var b = $("input[page='page']").val();
			window.location.href = "/front/edu/alledunews?page=" + b;
		})

		$("button[page='page']").click(function() {
			var b = $(this).val();
			window.location.href = "/front/edu//alledunews?page=" + b;
		})
	</script>
</body>
