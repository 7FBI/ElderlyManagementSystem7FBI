<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员列表</title>
<link href="/resources/unity/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<script type="text/javascript"
	src="/resources/unity/jquery/jquery-3.2.0.js"></script>
</head>
<body>
	<div style="width: 100%; height: 30px">
		<a class="btn btn-default" href="/gotoBackstage/main">返回首页</a>
		<a style="margin-left: 60px" class="btn btn-primary" href="/gotoBackstage/managerInfo_add">添加管理员</a>
	</div>
	<center>
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-10">
				<table width="100%" class="table  table-hover">
					<tbody>
						<tr class="success">
							<td>帐号</td>
							<td>姓名</td>
							<td>身份证</td>
							<td>电话</td>
							<td>类型</td>
							<td>操作</td>
						</tr>
					</tbody>
					<tfoot>
						<c:forEach items="${managerInfo}" var="m" varStatus="i">
							<tr>
								<td>${m.name}</td>
								<td>${m.realname}</td>
								<td>${m.identity}</td>
								<td>${m.tell}</td>
								<td>${m.type==0?'商城系统管理员':m.type==1?'编辑人员':'教育系统管理员'}</td>
								<td><a href="/backstage/user/updateView?id=${m.id }" class="btn btn-default">修改</a>&nbsp;<a href="/backstage/user/deleteManager?id=${m.id }" class="btn btn-default">删除</a></td>
							</tr>
						</c:forEach>
					</tfoot>
				</table>
				<table class="table">
					<tr>
						<td class="form-inline">
							<button page="page" value="0" class="btn btn-default">首页</button>&nbsp;
							<button page="page" class="btn btn-default" value="${page-1}">上一页</button>&nbsp;
							<button page="page" class="btn btn-default" value="${page}">${page+1}</button>&nbsp;
							<button page="page" class="btn btn-default" value="${page+1}">下一页</button>&nbsp;
							<button page="page" class="btn btn-default" value="${counts}">尾页(${counts+1})</button>
							<div class="form-group">
								<label for="exampleInputName2">跳到:</label><input page="page"
									style="width: 60px" type="text" class="form-control"><label
									for="exampleInputName2">&nbsp;页</label>
							</div>
							<button id="jumpBtn" class="btn btn-default">跳转</button>&nbsp;
						</td>
					</tr>
				</table>
			</div>
			<div class="col-md-1"></div>
		</div>


	</center>

	<script type="text/javascript">
	$("#jumpBtn").click(function(){
		var b = $("input[page='page']").val();
		window.location.href = "/backstage/user/selectAlls?page=" + b;
	})
		$("button[page='page']").click(function() {
				var b = $(this).val();
				window.location.href = "/backstage/user/selectAlls?page="+ b;
		})
	</script>
</body>
</html>