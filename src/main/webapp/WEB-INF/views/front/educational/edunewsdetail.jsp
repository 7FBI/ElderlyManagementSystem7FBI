<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'edunewsdetail.jsp' starting page</title>

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
	<!--  -->
	<script type="text/javascript"
	src="/resources/unity/jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="/resources/unity/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<link href="/resources/unity/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<script type="text/javascript"
	src="/resources/unity/jquery/jquery-3.2.0.js"></script>
	
<link rel="stylesheet" href="/resources/front/css/style.css"
	type="text/css" media="all" />
<script type="text/javascript"
	src="/resources/front/js/jquery.1.8.2.min.js"></script>
<script type="text/javascript"
	src="/resources/front/js/jquery.plugin.min.js"></script>
</head>

<body>
<jsp:include page="../index_header.jsp" flush="true" />
<jsp:include page="../header.jsp" flush="true" />	
<div style="width: 100%;height: 4px;background-color: orange;"></div>	
<div id="shownews">
 <!--  <div class="cat_title">
    <div class="wrapper">
      <h2><strong>NEWS</strong>新闻</h2>
      <p>最近正在折腾...<br/>
        Recently is to do ...</p>
    </div>
  </div> -->
  <div style="width: 80%;margin: 0 auto;text-align: center;">
  <div style="margin-top: 5px;">
   
        <font size="5px" >${oneEduDetail.edutitle}</font><br>
         <font > UPTATED:&nbsp;<fmt:formatDate value="${oneEduDetail.edutime}"
					pattern="yyyy-MM-dd" /></font>
	  
  </div>
 <br>
    <div> 
      
       <img alt="新闻图片" src="/files${oneEduDetail.eduurl}" style="width:700px; height: 400px;"/></div><br>
				<!-- style="max-width:1024px; height: 533px;" -->
			<div style="text-align: left;font-size:22px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${oneEduDetail.educontent}</div>
		</div>
  </div>
  
</div><br><br>
<jsp:include page="../footer.jsp" flush="true" />
   </body>
  </html>