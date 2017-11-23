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
	<div class="col-md-12"><h2 style="font-style: italic;">商品前排统计报表</h2></div>
		<div class="col-md-12">
			<div class="col-md-6" style="padding: -5px;">
				<div style="width: 100%; height: 380px;"
					id="types"></div>
			</div>
			<div class="col-md-6" style="padding: -5px;">
				<div style="width: 100%; height: 380px;"
					id="types2"></div>
			</div>
		</div>
	</div>
	<br/>
	<div class="row" style="width: 100%;">
	<div class="col-md-12"><h2 style="font-style: italic;">本季商品销售报表</h2></div>
		<div class="col-md-12">
			<div class="col-md-6" style="padding: -5px;">
				<div style="width: 100%; height: 380px; background: #00bbff"
					id="season"></div>
			</div>
			<div class="col-md-6" style="padding: -5px;">
				<div style="width: 100%; height: 380px; background: #00bbff"
					id="season2"></div>
			</div>
		</div>
	</div>
</center>

<script type="text/javascript" src="/resources/backstage/Js/statisticsProduct.js"></script>
	<script type="text/javascript">
		$(document).ready(function () {
					collectionsSales();
					seasonViews();
				});
		function collectionsSales() {
			var titles = "查询被收藏排名前十的商品";
			var titles2 = "查询销售量排名前十的商品";
			var legends = "商品收藏排名";
			var legends2 = "商品销售排名";
			var documentsId = "types";
			var documentsId2 = "types2";
			var col=['#0E4ACC','#F5460C'];
			$.ajax({
				type : 'post',
				url : '/backstage/statistics/products/maxOne',
				success : function(data) {
					var xnames = getPanmes(data.collections);
					var numbers = getSumNum(data.collections);
					setTypeOption('量',titles, legends, xnames, numbers,
							documentsId,col[0]);
					xnames = getPanmes(data.sales);
					numbers=getSumNum(data.sales);
					setTypeOption('件',titles2, legends2, xnames, numbers,
							documentsId2,col[1]);
				},
				error : function() {
					alert("网络错误无法获取数据");
				}
			})
		}
		
		
		function seasonViews() {
			var titles = "本季的销售额";
			var titles2 = "本季的商品销售量";
			var legends = ["团购","无折扣","打折"];
			var legends2 = ["团购","无折扣","打折"];
			var documentsId = "season";
			var documentsId2 = "season2";
			var col=['#0E4ACC','#F5460C','#FFFB00'];
			
			$.ajax({
				type : 'post',
				url : '/backstage/statistics/products/seasonInfo',
				success : function(data) {
					var xnames = ["团购","无折扣","打折"];
					var numbers = new Array();
					var sumMoneys= new Array();
					
					numbers[0] =getSumNumCount(data.season1);
					sumMoneys[0] =getSumMoneyCount(data.season1);
					
					numbers[1] = getSumNumCount(data.season2);
					sumMoneys[1] =getSumMoneyCount(data.season2);
					
					numbers[2] = getSumNumCount(data.season3);
					sumMoneys[2] =getSumMoneyCount(data.season3);
					setTypeOptionThree('元',titles, titles, xnames, sumMoneys,
							documentsId,col);
					setTypeOptionThree('件',titles2, titles2, xnames, numbers,
							documentsId2,col);
					
				},
				error : function() {
					alert("网络错误无法获取数据");
				}
			})
		}
			
			

		

		
	</script>
</body>
</html>