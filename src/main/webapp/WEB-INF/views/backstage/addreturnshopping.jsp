
<%
	request.setCharacterEncoding("UTF-8");
%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My JSP 'register.jsp'</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="/resources/unity/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link href="/resources/css/register.css" rel="stylesheet"
	type="text/css">
<script type="text/javascript"
	src="/resources/unity/jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="/resources/unity/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>


<!-- 验证 -->
 <script type="text/javascript" language="javascript" src="/resources/js/registercheck.js">
 
</script> 
<script type="text/javascript">
function addcount(){
	alert("eggrtht");
	var count = document.getElementById("pcount").value;
	if(count<=10){
	document.getElementById("pcount").value = Number(count)+1;
	}else{
	document.getElementById("pcount").value = count;
	}
	
}
function subcount(){
	var count = document.getElementById("pcount").value;
	if(count>=1){
		document.getElementById("pcount").value = count-1;
	}else{
		document.getElementById("pcount").value = count;
	}
	
}
</script>
</head>

<body>
	<a
		href="${pageContext.request.contextPath}/returnshopping/querys.action?returnid=${returnid}&&uid=${uid}"><font
		color="blue"> <span class="glyphicon glyphicon-backward"
			aria-hidden="true"></span>&nbsp;返回
	</font></a>
	<br>
	<form class="form-horizontal col-md-offset-2"
		action="/returnshopping/add.action" method="post"
		enctype="multipart/form-data">

		<label class="register_title"> <strong> <span
				class="glyphicon glyphicon-user" aria-hidden="true"> </span>&nbsp;添加回访记录
		</strong></label>
			<div class="form-group col-md-offset-3">
				<label for="pname" class="col-sm-2 control-label">商品名称</label>
			<div class="col-sm-3">
				<select class="form-control" name="pid" >
					<c:forEach items="${listProducts}" var="listProduct" varStatus="var">
					<option value="${listProduct.id}">${listProduct.pname}</option>
					</c:forEach>					
				</select>
				
			</div>
				<div class="pleft">
				<font color="red"><span id="error5"></span></font> <font color="green"><span
							id="success5"></span></font>
				</div>
				<c:if test="${!empty error}">
					<div>
						<span style="color: red">${err}</span>
					</div>
				</c:if>
			</div>			
					<input type="hidden" class="form-control" name="returnid"
						value="${returnid}" >
						<input type="hidden" class="form-control" name="uid"
						value="${uid}" >
			<div class="form-group col-md-offset-3">
				<label for="birthday" class="col-sm-2 control-label">购买数量</label>
				<div class="col-sm-3 am-datepicker-date">
					<button type="button" style="width:40px ;height:30px ; border-radius:3px;font-size:16px;" id="sub" onclick="subcount()">－</button>&nbsp;&nbsp;
					<input style="width:50px ;height:30px ;text-align:right;" id="pcount" name="shoppingcount" value="0"/>&nbsp;&nbsp;
					<button type="button" style="width:40px ;height:30px ; border-radius:3px; font-size:16px;" id="add" onclick="addcount()">+</button>
				</div>
				<div class="pleft">
					<font color="red"><p id="error9"></p></font> <font color="green">
					<p id="success9"></p></font>
				</div>
			</div>

			<!-- 按钮 -->
			<div class="row">
				<div class="col-sm-offset-3 col-md-3">
					<br>
					<button type="submit" class="btn btn-success">提交</button>
					<button type="reset" class="btn btn-warning">重置</button>
				</div>
			</div>
	</form>

</body>
</html>
