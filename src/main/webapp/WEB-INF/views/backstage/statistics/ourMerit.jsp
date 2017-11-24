<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
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
				<h2 style="font-style: italic;">我们的家园<label style="font-size: 24px;color: #333">Our Merit</label></h2>
			</div>
			<div class="col-md-12">
				<div class="col-md-12" style="padding: -5px;">
					<div style="width: 100%; height: 480px;" id="ourMerit"></div>
				</div>
			</div>
		</div>
		
		<!-- 消费详情 -->
		<div class="row" style="width: 100%;display: none;" id="moneyViews">
			<div class="col-md-12">
				<h2 style="font-style: italic;">我们的成绩<label style="font-size: 24px;color: #333">Our Merit</label></h2>
			</div>
			<div class="col-md-12">
				<div class="col-md-12" style="padding: -5px;">
					<div style="width: 100%; height: 380px;" id="userMoneyViews"></div>
				</div>
			</div>
		</div>

	</center><!-- //getscript -->
	<script src="http://api.map.baidu.com/getscript?v=2.0&ak=VuwMTzu9gM8SxnY16p2BDLHxnvLYtYpk"type="text/javascript"></script>
	
	<script type="text/javascript"
		src="/resources/backstage/Js/statisticsProduct.js"></script>
		<script type="text/javascript" src="/resources/unity/js/bmap.min.js"></script>
	<script type="text/javascript" src="/resources/unity/js/china.js"></script>
	<script type="text/javascript" src="/resources/unity/js/ourMerit.js"></script>
	
	<script type="text/javascript">
		
	$(document).ready(function () {
		ourMeritMap();
	})
	
		function ourMeritMap() {
		
			var titles = "我们的家园";
			var legends = "人口数";
			var documentsId = "ourMerit";
			var col = [ '#0E4ACC', '#F5460C' ];
			$.ajax({
				type:'post',
				url:'/localareaviews/mapViews',
				success:function(data){
					var ids = getIds(data.ourMerit);
					var dataMap=setMapValuesSumNum(data.ourMerit);
					ourMeritMapViews(titles, legends, dataMap, documentsId, col[0],ids);
				},
				error : function() {
					alert("网络错误无法获取数据");
				}
			})
		}
		
		function setMapValuesSumNum(data) {
			var mapdata=new Array();
			for ( var k in data) {
				var items={name:data[k].pname.toString(),value:parseInt(data[k].sumNum)};
				mapdata[k]=items;
			}
			return mapdata;
		}
	
	</script>

</body>
</html>