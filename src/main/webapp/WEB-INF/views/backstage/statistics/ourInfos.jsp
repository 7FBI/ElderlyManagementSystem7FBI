<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>关于我们</title>
<!-- BOOTSTRAP STYLES-->
<link href="/resources/unity/assets/css/bootstrap.css" rel="stylesheet" />
<!-- FONTAWESOME STYLES-->
<link href="/resources/unity/assets/css/font-awesome.css"
	rel="stylesheet" />
<!-- MORRIS CHART STYLES-->
<!-- CUSTOM STYLES-->
<link href="/resources/unity/assets/css/custom.css" rel="stylesheet" />
<link href="/resources/unity/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<script type="text/javascript"
	src="/resources/unity/jquery/jquery-3.2.0.js"></script>
<script src="/resources/unity/js/echarts.min.js"></script>
</head>
<body>
	<div id="page-wrapper">
		<div id="page-inner">
		
	<!-- /. ROW  -->
			<hr />
			<div class="row">
				<div class="col-md-4 col-sm-6 col-xs-6">
					<div class="panel panel-back noti-box">
						<span class="icon-box bg-color-red set-icon"> <i
							class="fa fa-user" style="line-height: 75px;"></i>
						</span>
						<div class="text-box">
							<c:forEach items="${usersNums }" var="numbs">
								<c:if test="${numbs.type==0 }">
									<p class="main-text">老人人数:${numbs.sumNum}</p>
								</c:if>
								<c:if test="${numbs.type!=0 }">
									<p class="text-muted">游客人数:${numbs.type}</p>
								</c:if>
							</c:forEach>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-6">
					<div class="panel panel-back noti-box">
						<span class="icon-box bg-color-green set-icon"> <i
							class="fa fa-home" style="line-height: 75px;"></i>
						</span>
						<div class="text-box">
							<c:forEach items="${managers }" var="numbs">
									<p class="main-text">分店数量:${numbs.sumNum}</p>
									<p class="text-muted">店长总数:${numbs.type}</p>
							</c:forEach>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-6">
					<div class="panel panel-back noti-box">
						<span class="icon-box bg-color-blue set-icon"> <i
							class="fa fa-shopping-cart" style="line-height: 75px;"></i>
						</span>
						<div class="text-box">
							<c:forEach items="${products }" var="numbs">
									<p class="main-text">商品总量:${numbs.sumNum} 件</p>
									<p class="text-muted">仓库存货:${numbs.type}</p>
							</c:forEach>
						</div>
					</div>
				</div>

			</div>
			<!-- /. PAGE INNER  -->
		</div>
		<!-- /. PAGE WRAPPER  -->
	</div>
			
			<center>
		<div class="row" style="width: 100%;">
		<div  class="row" style="width: 100%;"  id="lmaps">
			<div class="col-md-12">
				<h2 style="font-style: italic;">我们的家园<label style="font-size: 24px;color: #333">Our Merit</label></h2>
			</div>
			<div class="col-md-12">
				<div class="col-md-12" style="padding: -5px;">
					<div style="width: 70%; height: 480px;" id="ourMerit"></div>
				</div>
			</div>
			</div>
			<!-- 消费详情 -->
		<div class="row" style="width: 48%;display: none;" id="moneyViews">
			<div class="col-md-12">
				<h2 style="font-style: italic;">我们的成绩<label style="font-size: 24px;color: #333">Our Merit</label></h2>
			</div>
			<div class="col-md-12">
				<div class="col-md-12" style="padding: -5px;">
					<div style="width: 100%; height: 480px;" id="userMoneyViews"></div>
				</div>
			</div>
		</div>
			
		</div>
		
		

	</center>
			
			

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