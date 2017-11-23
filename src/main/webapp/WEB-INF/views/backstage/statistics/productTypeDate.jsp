<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="/resources/unity/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<script type="text/javascript"
	src="/resources/unity/jquery/jquery-3.2.0.js"></script>
<script src="/resources/unity/js/echarts.min.js"></script>
</head>
<body>
	<div style="width: 100%; height: 30px">
		<a class="btn btn-default" href="/gotoBackstage/index">返回首页</a>
	</div>
	<center>
		<div class="row" style="width: 100%;">
			<div class="col-md-12">
				<h2 style="font-style: italic;">商品分类报表</h2>
			</div>
			<div class="col-md-12">
				<div class="col-md-12" style="padding: -5px;">
					<div style="width: 100%; height: 380px;" id="types"></div>
				</div>
				<br/>
				<div class="col-md-12" style="padding: -5px;">
					<div style="width: 100%; height: 380px;" id="types2"></div>
				</div>
			</div>
		</div>
	</center>

<script type="text/javascript" src="/resources/backstage/Js/statisticsProduct.js"></script>
	<script type="text/javascript">
		$(document).ready(function () {
			typesDateViews();
		});
		function typesDateViews() {
			var titles = "每类商品本周销售量";
			var titles2 = "每类商品本季销售量";
			var legends = "销售量";
			var legends2 = "销售量";
			var documentsId = "types";
			var documentsId2 = "types2";
			var col=['#0E4ACC','#F5460C'];
			$.ajax({
				type : 'post',
				url : '/backstage/statistics/products/typeDateView',
				success : function(data) {
					var xnames = getPanmes(data.week);
					var numbers = getSumNum(data.week);
					setTypeOptionX('件',titles, legends, xnames, numbers,
							documentsId,col[0]);
					xnames = getPanmes(data.quarter);
					numbers=getSumNum(data.quarter);
					setTypeOptionX('件',titles2, legends2, xnames, numbers,
							documentsId2,col[1]);
				},
				error : function() {
					alert("网络错误无法获取数据");
				}
			})
		}
	</script>

</body>
</html>