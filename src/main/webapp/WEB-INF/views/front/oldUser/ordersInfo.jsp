<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="/resources/unity/layer/css/layui.css"
	media="all">
<link rel="stylesheet" href="/resources/front/css/style.css"
	type="text/css" media="all" />

<style type="text/css">
.lables_d {
	width: auto;
	margin-left: 1px;
	float: left;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 13px;
	color: #5f5f5f;
	font-weight: bold;
	text-transform: uppercase;
	width: 60px;
	font-family: Arial, Helvetica, sans-serif;
}

.lables_v {
	font-family: Arial, Helvetica, sans-serif;
	line-height: 20px;
	font-size: 10px;
	text-transform: uppercase;
	width: 120px;
	margin-left: 8px;
	width: 120px;
}
}
</style>
</head>
<body>
	<%@ include file="../header.jsp"%>
	<!-- 查找最顶级栏目  -->
	<div style="height: 80px"></div>

	<section id="news">
	<div class="cat_title wrapper">
		<h2>
			待付款订单详情<strong>order</strong>
		</h2>
		<p>
			感谢您的支持<br /> thank you for your support
		</p>
		<a href="news/index.htm" class="more">MORE+</a>
	</div>
	<div class="newsdata">
		<ul style="width: 90%;">
			<li style="height: 60px; width: 100%;">
				<div class="layui-row layui-col-space1">
					<div class="layui-col-md1"></div>
					<div class="layui-col-md8">
						<div style="width: 100%; float: left;">
							<div style="float: left; width: 200px;">
								<label class="lables_d">订单编号:</label> <label class="lables_v">xxxxxx</label>
							</div>
							<div style="float: left; width: 200px;">
								<label class="lables_d">支付方式:</label> <label class="lables_v">余额支付</label>
							</div>
							<div style="float: left; width: 150px;">
								<label class="lables_d">订单状态:</label> <label class="lables_v">代付款</label>
							</div>
						</div>
						<div style="width: 100%; float: left;">
							<div class="layui-input-item" style="float: left; width: 200px;">
								<label class="lables_d">收货地址:</label> 
								<select id="selectAddress" style="height: 20px; width: 120px; border: none;"
									class="layui-input" name="">
									<option selected="selected" value="0">你家里啊高端峰会的杠杆收购</option>
									<option value="1">他家里</option>
									<option value="2">我家里</option>
									<option value="" disabled>————————</option>
									<option value="-1" style="border-top: 12px; border-top-color: #999;">添加新地址</option>
								</select>
							</div>
							<div style="float: left; width: 200px;">
								<label class="lables_d">下单时间:</label> <label class="lables_v">2017-11-01</label>
							</div>
							<div style="float: left; width: 150px">
								<label class="lables_d">订单总价:</label> <label class="lables_v">
								<span style="color: red;">￥</span>88.5</label>
							</div>
						</div>

						<div style="width: 100%; float: left;">
							<div style="float: left; width: 800px">
								<label class="lables_d">用户备注:</label> <input
									style="height: 20px; width: 450px;" name="" class="layui-input" />
							</div>
						</div>

					</div>
					<div class="layui-col-md3"></div>
				</div>
			</li>
			<!-- 分割 -->
			<li style="height: 90px; width: 100%;">
				<div class="layui-row layui-col-space1">
					<div class="layui-col-md1"></div>
					<div class="layui-col-md2" style="background: red;">
						<img style="margin-left: 28px" alt="花果山"
							src="/files/front/oldUsers/image/oldusers.jpg" width="90px"
							height="90px">
					</div>
					<div class="layui-col-md1"></div>
					<div class="layui-col-md6">
						<div style="background: float: left; width: 500px;">
							<label class="lables_d" style="width: 60px;">商品名称:</label> <label
								class="lables_d" style="width: 420px; margin-left: 3px;"><a
								href="#">黄金啊司法所路口附近阿斯利康附近阿斯科利发送砍伐森林</a></label>
						</div>
						<div style="float: left; width: 500px;">
							<label class="lables_d" style="width: 60px;">购买数量:</label> <input
								type="text" style="height: 20px; width: 38px;" value="3"
								readonly="readonly" name="" class="layui-input" /> <label
								class="lables_d" style="width: 60px;">商品单价:</label> <label
								class="lables_v"><span style="color: red;">￥</span>18.5</label>
							<!-- <div style="width: 120px;float: left;">
								减少
								<a href="#" num="down" style="float: left;"><i class="layui-icon" style="font-size: 20px;">&#xe625;</i></a> 
								<input value="1" class="layui-input" style="width: 40px; height: 20px; float: left;" /> 
								添加
								<a href="#" num="up" style="float: left;"><i class="layui-icon" style="font-size: 20px;">&#xe654;</i></a>
							</div>
							删除
							<div style="width: 100px;float: left;">
								<a href="#" del="del" style="float: left;"><i class="layui-icon" style="font-size: 20px;">&#xe640;</i></a>
							</div> -->
						</div>
						<div style="float: left; width: 500px;">
							<label class="lables_d" style="width: 60px;">商品类型:</label> 
							<label class="lables_v" style="width: 100px;"><a href="#">大保健</a></label>
						</div>
					</div>
					<div class="layui-col-md2"></div>
				</div>
			</li>
		</ul>
	</div>
	</section>

	<jsp:include page="../footer.jsp" flush="true" />

	<script type="text/javascript" src="/resources/unity/layer/layui.js"></script>
	<script type="text/javascript" src="/resources/unity/js/formNonull.js"></script>

	<script type="text/javascript">
		layui.use('layer', function() {
			var $ = layui.jquery, layer = layui.layer;
			$("#selectAddress").change(function(){
				var s=$(this);
				if (s.val()==-1) {
					layer.open({
						type : 1,
						title : false //不显示标题栏
						,
						closeBtn : false,
						offset: [180,0],
						shade : 0.8,
						id : 'LAY_layuipro' //设定一个id，防止重复弹出
						,
						btn : [ '取消'], 
						btnAlign : 'c',
						moveType : 1 //拖拽模式，0或者1
						,
						content : '<fieldset class="layui-elem-field layui-field-title" style="margin-top: 10px;">'
							    +'<legend>用户帐号</legend></fieldset>'
							    +'<form style="margin-top: 25px; padding: 0 15px;" id="f" class="layui-form layui-form-pane" action="">'
								+ '<div class="layui-form-item" style="width: 500px;"><label class="layui-form-label" style="width: 110px">帐号:</label><div class="layui-input-block" style="width: 270px;"><input NoNull="" type="text" name="username" autocomplete="off" placeholder="请输入帐号" class="layui-input" style="width: 200px;float: left;"></div></div>'
								+ '<div class="layui-form-item" style="width: 500px;"><label class="layui-form-label" style="width: 110px">密码:</label><div class="layui-input-block" style="width: 270px;"><input NoNull="" type="password" name="password" autocomplete="off" placeholder="请输入密码" class="layui-input" style="width: 200px;float: left;"></div></div>'
								+ '<div class="layui-form-item" style="width: 500px;"><img code="" class="layui-form-label" src="/code/front/getCode" style="width: 110px" /><div class="layui-input-block" style="width: 270px;"><input NoNull="" type="text" name="code" autocomplete="off" placeholder="请输入验证码" class="layui-input" style="width: 200px;float: left;"></div></div>'
								+ '<div class="layui-form-item" style="width: 500px;"><a href="/gotoFront/register">未有帐号?</a></div>'
								+ '<div class="layui-form-item"><div class="layui-input-block"><button id="loginBtn" type="button" class="layui-btn layui-btn-primary layui-btn-small" >登录</button></div></div>'
								+'</form>',
						success : function(layero) {
							//var btn = layero.find('.layui-layer-btn');
							$(document).on("click","#loginBtn",function(){
								if(formInputNoNull()){
									$.ajax({
										type:'post',
										url:'/front/oldUsers/login',
										data:$("#f").serialize(),
										success:function(data){
											if (data=="true") {
												location.reload()
											}else{
												alert(data);
											}
										}
									})
									
								}else{
									rmvErr()
								}
									
							})
							
								
						}
					});
				}
			})
			/* $(document).on('click',"a[num='down']",function(){
				var i=$(this).next();
				if (i.val()<=1) {
					return false;
				}else {
					var ii=i.val()-1;
					i.val(ii);
				}
			})
			$(document).on('click',"a[num='up']",function(){
				
			}) */
		})
	</script>
</body>
</html>