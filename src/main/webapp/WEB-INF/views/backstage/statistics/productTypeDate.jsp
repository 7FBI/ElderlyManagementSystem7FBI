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
				<div class="col-md-6" style="padding: -5px;">
					<div style="width: 100%; height: 380px;" id="types"></div>
				</div>
				<div class="col-md-6" style="padding: -5px;">
					<div style="width: 100%; height: 380px;" id="types2"></div>
				</div>
			</div>
		</div>

	

			<div class="row" style="width: 100%;display: none;" id="typeIdsSuper">
				<div class="col-md-12">
					<h2 style="font-style: italic;">商品分类报表</h2>
				</div>
				<div class="col-md-12">
					<div class="col-md-12" style="padding: -5px;">
					<div style="width: 100%; height: 380px;" id="typeIds"></div>
				</div>
				</div>
			</div>

	
	</center>

	<script type="text/javascript"
		src="/resources/backstage/Js/statisticsProduct.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			typesDateViews();
		});
		function typesDateViews() {
			var titles = "本周不同商品类型销售量";
			var titles2 = "本季不同商品类销售量(点击可查看详情)";
			var legends = "销售量";
			var legends2 = "销售量";
			var documentsId = "types";
			var documentsId2 = "types2";
			var col = [ '#0E4ACC', '#F5460C' ];
			$.ajax({
				type : 'post',
				url : '/backstage/statistics/products/typeView',
				success : function(data) {
					var tips = getTids(data.quarter);
					var xnames = getPanmes(data.week);
					var numbers = getSumNum(data.week);
					setTypeOption('件', titles, legends, xnames, numbers,
							documentsId, col[0]);
					xnames = getPanmes(data.quarter);
					numbers = getSumNum(data.quarter);
					setTypeViewClickY('件', titles2, legends2, xnames, numbers,
							documentsId2, col[1], tips);
				},
				error : function() {
					alert("网络错误无法获取数据");
				}
			})
		}

		function setTypeViewClickY(xTy, titles, legends, xnames, numbers,
				documentsId, col, tid) {
			var myChart = echarts.init(document.getElementById(documentsId));
			var option = {
				color : [ col ],
				title : {
					text : titles,
					y : 'top',
					x : '100px'
				},
				toolbox : {
					show : true,
					feature : {
						magicType : {
							show : true,
							type : [ 'line', 'bar' ]
						},
						saveAsImage : {
							show : true
						}
					}
				},
				grid : {
					left : '5%',
					right : '4%',
					bottom : '3%',
					containLabel : true
				},
				tooltip : {
					show : true,
					trigger : 'item'
				},
				legend : {
					data : legends,
					y : '30px'
				},
				xAxis : {
					type : 'value',
					axisLabel : {
						formatter : '{value}' + xTy
					},
					boundaryGap : [ 0, 0.005 ],
					x : '30px',
					y : '30px'
				},
				yAxis : {
					data : xnames,
					x : '30px',
					y : '130px'
				},
				series : [ {
					name : legends,
					type : 'bar',
					data : numbers,
					barMaxWidth : '18px',

					markPoint : {
						symbol : 'emptypin',
						data : [ {
							type : 'max',
							name : '最大值'
						}, {
							type : 'min',
							name : '最小值'
						} ]
					},
					smooth : true,
					itemStyle : {
						normal : {
							barBorderRadius : [ 5, 5, 5, 5 ]
						}

					}
				},{
					name : legends,
					type : 'pie',
					data : getNameValues(xnames,numbers),
					radius : ['10%','20%'],
				    center: ['80%', '20%']
				}]
			};
			myChart.setOption(option);
			// 处理点击事件并且跳转到相应的百度搜索页面
			myChart.on('click', function(params) {
				//console.log(params);//控制台打印(不知道的时候看这个)
				var tt=$("#typeIdsSuper");
				if (tt.css("display")=='none') {
					tt.css("display", "block");
				}
				typeBytids(tid[params.dataIndex]);
			});
		}
		
		
		function getNameValues(xnames,numbers){
			var pnames=new Array();
			for ( var k in numbers) {
				var itmes={name:xnames[k].pname,value:numbers[k].sumNum}
				pnames[k] = itmes;
			}
			return pnames;
		}
		
		
		function typeBytids(tid) {
			var titles = "类型商品销售走情况";
			var legends = "销售量";
			var documentsId = "typeIds";
			var col = [ '#0E4ACC', '#F5460C' ];
			$.ajax({
				type : 'post',
				url : '/backstage/statistics/products/bytypeView?tid=' + tid,
				success : function(data) {
					var xnames = getDatesDay(data.quarter);
					var numbers = getSumNum(data.quarter);
					setTypeOptionX('件', titles, legends, xnames, numbers, documentsId, col[0]);
				}
			})
		}
	</script>

</body>
</html>