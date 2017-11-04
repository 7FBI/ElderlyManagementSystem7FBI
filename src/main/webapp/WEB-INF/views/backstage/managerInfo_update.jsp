<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加管理员</title>
<link href="/resources/unity/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<script type="text/javascript"
	src="/resources/unity/jquery/jquery-3.2.0.js"></script>
</head>
<body>
	<div style="width: 100%; height: 30px">
		<a class="btn btn-default" href="/gotoBackstage/main">返回首页</a>
	</div>
	<center>
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-10">
				<div class="col-md-4"></div>
				<div class="col-md-6">
					<form id="f" action="/backstage/user/updateInfoValue?id=${managerInfo.id }"
						method="post" class="form-inline">
						<div class="form-group">
							<label for="exampleInputName2">姓名:</label> <input
								style="width: 360px; height: 40px" NoNull="" type="text"
								class="form-control" name="realname"
								value="${managerInfo.realname }" placeholder="请输入">
						</div>
						<br /> <br />
						<div class="form-group">
							<label for="exampleInputName2">帐号:</label> <input
								style="width: 360px; height: 40px" NoNull="" type="text"
								class="form-control" name="name" value="${managerInfo.name }"
								placeholder="请输入">
						</div>
						<br /> <br />
						<div class="form-group">
							<label for="exampleInputName2">证件:</label> <input
								style="width: 360px; height: 40px" NoNull="" type="text"
								class="form-control" name="identity"
								value="${managerInfo.identity }" placeholder="请输入">
						</div>
						<br /> <br />
						<div class="form-group">
							<label for="exampleInputName2">电话:</label> <input
								style="width: 360px; height: 40px" NoNull="" type="text"
								class="form-control" name="tell" value="${managerInfo.tell }"
								placeholder="请输入">
						</div>
						<br /> <br />
						<div class="form-group">
							<label for="exampleInputName2">类型:</label> <select
								class="form-control" style="width: 360px; height: 40px"
								name="type">
								<option
									value="${managerInfo.type }" selected="selected">${m.type==0?'商城系统管理员':m.type==1?'编辑人员':'教育系统管理员'}</option>
									<hr/>
								<option value="0">商城管理员</option>
								<option value="1">编辑管理员</option>
								<option value="2">教育管理员</option>
							</select>
						</div>
						<br /> <br />
						<div class="form-group">
							<button type="button" id="sbmit" class="btn btn-success">修改</button>
							<button type="reset" class="btn btn-warning">重置</button>
						</div>
					</form>
				</div>
				<div class="col-md-2"></div>
			</div>
			<div class="col-md-1"></div>
		</div>
	</center>

	<script type="text/javascript" src="/resources/unity/js/formNonull.js"></script>
	<script type="text/javascript">
		$("#sbmit").click(function() {
			if (formInputNoNull() & formTextNoNull()) {
				$("#f").submit();
			} else {
				rmvErr();
			}
		})
	</script>
</body>
</html>