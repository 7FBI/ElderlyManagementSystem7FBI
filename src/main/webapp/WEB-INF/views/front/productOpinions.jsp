<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/unity/layer/css/layui.css"
	media="all">
	<link rel="stylesheet" href="/resources/front/css/style.css"
	type="text/css" media="all" />
<style type="text/css">

#star {
	position: relative;
	width: 600px;
	margin: 20px auto;
	height: 24px;
}

#star ul, #star span {
	float: left;
	display: inline;
	height: 19px;
	line-height: 19px;
}

#star ul {
	margin: 0 10px;
}

#star li {
	float: left;
	width: 24px;
	cursor: pointer;
	text-indent: -9999px;
	background: url(/resources/front/images/star.png) no-repeat;
}

#star strong {
	color: #f60;
	padding-left: 10px;
}

#star li.on {
	background-position: 0 -28px;
}

#star p {
	position: absolute;
	top: 20px;
	width: 159px;
	height: 60px;
	display: none;
	background: url(/resources/front/images/icon.gif) no-repeat;
	padding: 7px 10px 0;
}

#star p em {
	color: #f60;
	display: block;
	font-style: normal;
}

</style>
</head>
<body>
<jsp:include page="header.jsp" flush="true" />

	<div class="layui-container" style="height: 635px;margin-top: 30px;" >
	
		<div class="layui-row">
			<div class="layui-col-md2"></div>
			<div class="layui-col-md8" style="background: #f2f2f2">
				<div class="layui-row grid-demo">
					<div class="layui-col-md12" style="background: #fff;" >
						<label style="font-size: 48px;font-family: monospace;">评价</label>
					</div>
					<div class="layui-col-md3" style="background: #f2f2f2;margin-top: 10px;">
						<div class="layui-row grid-demo">
							<div class="layui-col-md12">
								<div class="layui-col-md12" style="margin-top: 17px; margin-left:48px; padding: -5px;">
									<img alt="dasdasd"
										src="/files/front/oldUsers/image/oldusers.jpg" width="90px;"
										height="90px;" />
								</div>
								<div class="layui-col-md12" style="padding: 5px;text-align: center;"><a href="/front/products/selectProductDetailByPrimaryKey?id=${products.id}">${products.pname}</a></div>
								<div class="layui-col-md12" style="padding: 5px;text-align: center;"><label style="color: red;">￥</label><label style="color: #00bbff;">${nowMoney}</label></div>
							</div>
						</div>
					</div>
					<div class="layui-col-md9" style="margin-top: 10px;">
						<div id="star" style="margin-left: 10px;">
							<span>请对我们的服务进行评价:</span>
							<ul>
								<li><a href="javascript:;">1</a></li>
								<li><a href="javascript:;">2</a></li>
								<li><a href="javascript:;">3</a></li>
								<li><a href="javascript:;">4</a></li>
								<li><a href="javascript:;">5</a></li>
							</ul>
							<span></span>
							<p></p>
						</div>
						<form id="formOp" action="/front/opinions/addProductOpinions?pid=${products.id }" method="post">
						<div style="margin-left: 10px;">
						<label style="float: left;">吐槽内容:</label>
							<input type="hidden" name="star" id="starNum" value="-1" />
							<textarea name="content" style="width: 320px;height: 80px;float: left;" class="layui-input"></textarea>
						</div>
						</form>
					</div>
				</div>
			</div>
			<div class="layui-col-md2" align="center">
				<div style="margin-top: 130px;">
					<button type="button" id="buttonOp" class="layui-btn layui-btn-small layui-btn-danger"><i class="layui-icon" style="font-size: 18px; margin-top: 2px;">&#xe611;</i>吐槽</button>
				</div>
			</div>
		</div>
		
		
	</div>
	
	<script type="text/javascript" src="/resources/unity/jquery/jquery-3.2.0.js"></script>
	<script type="text/javascript" src="/resources/front/js/star.js"></script>
	
	<script type="text/javascript">
	
	$("#buttonOp").click(function() {
		if (getStarNuum()) {
			$("#formOp").submit();
		}else {
			remErr();
		}
	})
	
	
	function getStarNum() {
		var x=$("#starNum");
		if (x.val()==-1) {
			alert("请先打赏星级");
			return false;
		}else {
			if ($("textarea[naem='content']").val() != undefined ) {
				return true;
			}else {
				$("textarea[naem='content']").focus();
				$("textarea[naem='content']").after('<lable id="textErr" style="color:red;">必填项</lable>');
				return false;
			}
		}
	}
	
	function remErr() {
		var x=3;
		var interval = setInterval(function() {
			if (x <= 0) {
				$("#textErr").remove();
			}
			x--;
		}, 1000)
	}
	</script>
	
<jsp:include page="footer.jsp" flush="true" />