<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>验证手机号</title>
<link rel="stylesheet" href="/resources/unity/layer/css/layui.css">
<link href="/resources/front/css/self_exchange/stepstyle.css"
	rel="stylesheet" type="text/css">
<script type="text/javascript"
	src="/resources/front/js/self_exchange/jquery-1.7.2.min.js"></script>
<script src="/resources/front/js/self_exchange/amazeui.js"></script>

</head>
<body>

	<!--头 -->
	<jsp:include page="../Self_header.jsp"></jsp:include>

	<div class="center">
		<div class="col-main">
			<div class="main-wrap">

				<div class="am-cf am-padding">
					<div class="am-fl am-cf">
						<strong class="am-text-danger am-text-lg">验证手机号</strong> / <small>Phone</small>
					</div>
				</div>
				<hr />
				<!--进度条-->
				<div class="m-progress">
					<div class="m-progress-list">
						<span class="step-1 step"> <em class="u-progress-stage-bg"></em>
							<i class="u-stage-icon-inner">1<em class="bg"></em></i>
							<p class="stage-name">验证手机号</p>
						</span> <span class="step-2 step"> <em class="u-progress-stage-bg"></em>
							<i class="u-stage-icon-inner">2<em class="bg"></em></i>
							<p class="stage-name">完成</p>
						</span> <span class="u-progress-placeholder"></span>
					</div>
					<div class="u-progress-bar total-steps-2">
						<div class="u-progress-bar-inner"></div>
					</div>
				</div>
				<form class="am-form am-form-horizontal" id="f">
					<div class="am-form-group">
						<label for="user-email" class="am-form-label">手机号</label>
						<div class="am-form-content">
							<input type="email" id="user-email" name="codeTell"
								placeholder="请输入电话号码" >
						</div>
					</div>
					<div class="am-form-group code">
						<label for="user-code" class="am-form-label">验证码</label>
						<div class="am-form-content">
							<input type="tel" id="user-code" style="width: 380px;" name="codePhone"
								placeholder="验证码">
						</div>
						<a class="btn" id="sendMobileCode"><!--  disabled="disabled" -->
							<button class="am-btn am-btn-danger" style="height: 32px;" type="button" id="seconds" >获取验证码</button>
						</a>
					</div>
					<!-- /gotoFront/Find_Password_SetNewPassword----findPassword -->
					<div class="info-btn">
						<div class="am-btn am-btn-danger" id="findP">
							提交
						</div>
					</div>

				</form>

			</div>
			<!--底部-->

		</div>
	</div>

	<script src="/resources/unity/layer/layui.js" type="text/javascript"></script>
	<script type="text/javascript">
		layui.use('layer', function() {
			var $ = layui.jquery, layer = layui.layer;
			$("#seconds").click(function(){
				if ($.trim($("#user-email").val())=="" ) {
					layer.msg("手机号不能为空",{time:2000})
				}else{
					if(!isPhones()){
						layer.msg("手机号格式不正确",{time:2000});
					}else{
						
						$.ajax({
							type:'get',
							url:'/code/front/emailCode',
							success:function(){
								$.ajax({
									type:'get',
									url:'/front/oldUsers/getPaswdCode?codeTell='+$("#user-email").val(),
									success:function(data){
										if(data="true"){
											$("#user-email").attr("disabled","disabled");
											layer.msg("短信以发送，请注意查收",{time:2000});
											var x = 59;
											var datadiv = $("#seconds");
											var valtext=datadiv.text();
											datadiv.attr("disabled","disabled");
											var interval = setInterval(function() {
												if (x <= 0) {
													datadiv.text("重新"+valtext)
													datadiv.removeAttr("disabled");
													clearInterval(interval);
												}else{
													datadiv.text(valtext+'('+x+')');
												}
												x--;
											}, 1000);
										}
										
									},error:function(){
										layer.msg("网络错误",{time:2000});
									}
								})
							},
							error:function(){
								layer.msg("网络错误",{time:2000});
							}
						})
					}
				}
			})
			$("#findP").on("click",function(){
				if ($.trim($("#user-code").val())=="") {
					layer.msg("验证码不能为空",{time:2000});
				}
				else {
					var forms=$("#f");
					$.ajax({
						type:'get',
						url:'/front/oldUsers/findPassword',
						data:forms.serialize(),
						success:function(data){
							if(data="true"){
								window.location.href="/gotoFront/oldUser/Find_Password_SetNewPassword";
							}else{
								layer.msg(data,{time:2000})
							}
						},error:function(){
							layer.msg("网络错误",{time:2000})
						}
					})
				}
			});
			
			
		})
		
		
		
// 电话验证
function isPhones() {
	var pattern = /^1[34578]\d{9}$/;
	var p = $("#user-email");
	var tgl = false;
	tgl=pattern.test(p.val());
	return tgl;
}
		
	</script>
</body>
</html>