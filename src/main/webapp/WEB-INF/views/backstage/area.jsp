<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<script type="text/javascript"
	src="/resources/unity/jquery/jquery-3.2.0.js"></script>
<link rel="stylesheet" type="text/css"
	href="/resources/unity/bootstrap-3.3.7-dist/css/bootstrap.min.css" />
</head>
<body bgcolor="#fff">
	<center>
		<div style="width:100%;padding: 5px 5px 5px 5px;">
		<a style="float: left;" class="btn btn-lg btn-default" href="/gotoBackstage/index">返回首页>>></a>
		<hr/>
		</div>
		<table width="100%" class="table" style="table-layout:fixed;background-color: #fff">
			<tbody>
				<tr class="success">
					<td style="width: 120px">地域名称</td>
					<td style="width: 120px">前置</td>
					<td>简介</td>
					<td>操作</td>
				</tr>
			</tbody>
			<tfoot>
				<c:forEach items="${localArea}" var="localArea">
					<tr class="warning" align="left" class="d">
						<td style="width: 120px;">${localArea.provincename }</td>
						<td style="width: 60px;">${localArea.selftcityid }</td>
						<td>${localArea.localintroduce }</td>
						<td >
							<a class="btn btn-default" href="/backstage/localarea/selectInfo?id=${localArea.id }" >修改</a>
							<button id="deleteBtn" class="btn btn-default" value="/backstage/localarea/deleteInfo?id=${localArea.id }" >删除</button>
						</td>
					</tr>
				</c:forEach>
			</tfoot>
		</table>
	</center>
	
	<script type="text/javascript">
	$("#deleteBtn").click(function(){
		var b=$(this).val();
		$.ajax({
			type:'post',
			url:b,
			success:function(data){
				if(data.toString()=="true"){
					window.location.href="/backstage/localarea/findAllArea";
				}else{
					alert(data);
				}
			},
			error:function(){
				alert("网络错误!!");
			}
		})
	})
	</script>
</body>
</html>