<%@ page language="java" contentType="text/html charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>结算页面</title>

<link href="/resources/front/css/self_exchange/cartstyle.css"
	rel="stylesheet" type="text/css" />

<link href="/resources/front/css/self_exchange/jsstyle.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="/resources/unity/layer/css/layui.css"
	media="all">
<!-- <script type="text/javascript"
	src="/resources/front/js/self_exchange/address.js"></script> -->
	
	
	<style>
		select{
			padding:5px 0;
			}
		.outer{
			width:400px;
			margin:20px auto;
			}
	</style>
	
</head>
<body>
	<!--顶部导航条 -->
	<jsp:include page="Self_header.jsp"></jsp:include>

	<div class="clear"></div>
	<div class="concent">
		<!--地址 -->
		<div class="paycont">
			<div class="address">
				<h3>确认收货地址</h3>
				<div class="control">
					<input type="button" id="secondsBtn" class="tc-btn createAddr theme-login am-btn am-btn-danger" value="使用新地址">
				</div>
				<div class="clear"></div>
				<ul id="profiles">
					<c:forEach items="${profiles}" var="profiles">
						<div class="per-border"></div>
						<li class="user-addresslist defaultAddr">

							<div class="address-left">
								<div class="user DefaultAddr">

									<span class="buy-address-detail"> <span class="buy-user">${profiles.signname }
									</span> <span class="buy-phone">${profiles.signtell }</span>
									</span>
								</div>
								<div class="default-address DefaultAddr">
									<span class="buy-line-title buy-line-title-type">收货地址：</span> <span
										class="buy--address-detail">
										${profiles.signaddress}
									</span> </span>
								</div>
								<ins class="deftip">默认地址</ins>
							</div>
							<div class="address-right">
								<a href="../person/address.html"> <span
									class="am-icon-angle-right am-icon-lg"></span></a>
							</div>
							<div class="clear"></div>
							<div class="new-addr-btn">
								<a href="#" class="hidden">设为默认</a> <span
									class="new-addr-bar hidden">|</span> <a href="#">编辑</a> <span
									class="new-addr-bar">|</span> <a href="/front/orders/deleteAddressByPrimarykeyAndByExchange?id=${profiles.id }" id="delBtn">删除</a>
							</div>

						</li>
					</c:forEach>
				</ul>

				<div class="clear"></div>
			</div>

		




			<!--支付方式-->
			<div class="logistics">
				<h3>选择支付方式</h3>
				<ul class="pay-list">
					<li class="pay card"><img
						src="/resources/front/images/self_img/wangyin.jpg" />银联<span></span></li>
					<li class="pay qq"><img
						src="/resources/front/images/self_img/weizhifu.jpg" />微信<span></span></li>
					<li class="pay taobao"><img
						src="/resources/front/images/self_img/zhifubao.jpg" />支付宝<span></span></li>
				</ul>
			</div>
			<div class="clear"></div>
			<br>
			<!--订单 -->
			<div class="concent">
				<div id="payTable">

					<h3>确认订单信息</h3>
					<div class="cart-table-th">
						<div class="wp">

							<div class="th th-item">
								<div class="td-inner">商品信息</div>
							</div>
							<div class="th th-price">
								<div class="td-inner">单价</div>
							</div>
							<div class="th th-amount">
								<div class="td-inner">数量</div>
							</div>
							<div class="th th-sum">
								<div class="td-inner">金额</div>
							</div>
							<div class="th th-oplist">
								<div class="td-inner">下单时间</div>
							</div>

						</div>
					</div>
					<div class="clear"></div>
				</div>
				<tr id="J_BundleList_s_1911116345_1" class="item-list" style="background: red;">
					<div id="J_Bundle_s_1911116345_1_0" class="bundle  bundle-last">
						<div class="bundle-main">
							<div
								style="float: left; width: 500px; height: 50px; line-height: 50px;">
								<label class="lables_d">订单编号:${orders.id}</label> <label
									class="lables_v" id="oids"></label>
							</div>

							<ul class="item-content clearfix">
								<c:forEach items="${orderdetails}" var="ord">
									<div class="pay-phone">
										<li class="td td-item">
											<div class="item-pic">
												<a href="#" class="J_MakePoint"> <img
													src="/files${ord.products.producturl }"
													class="itempic J_ItemImg"></a>
											</div>
											<div class="item-info">
												<div class="item-basic-info">
													<a href="#" target="_blank" title="美康粉黛醉美唇膏 持久保湿滋润防水不掉色"
														class="item-title J_MakePoint" data-point="tbcart.8.11">${ord.products.pname}</a>
												</div>
											</div>
										</li>
										<li class="td td-info">
											<div class="item-props">
												<span class="sku-line">商品类型：${ord.products.tid}</span>
												<!-- <span class="sku-line">包装：两支手袋装（送彩带）</span> -->
											</div>
										</li>
										<li class="td td-price">
											<div class="item-price price-promo-promo">
												<div class="price-content">
													<em class="J_Price price-now">${ord.products.price}</em>
												</div>
											</div>
										</li>
									</div>

									<li class="td td-amount">
										<div class="amount-wrapper ">
											<div class="item-amount ">
												<span class="phone-title">购买数量</span>
												<div class="sl" style="text-align: center;">
													<input class="min am-btn" name="" type="button" value="-"
														style="width: 40px; padding: 6px; line-heigt: 40px;" /><input
														class="text_box" name="" type="text"
														value="${ord.ordercount}"
														style="width: 40px; padding: 6px; line-heigt: 40px;" /><input
														class="add am-btn" name="" type="button" value="+"
														style="width: 40px; padding: 6px; line-heigt: 40px;" />
												</div>
											</div>
										</div>
									</li>
									<li class="td td-sum">
										<div class="td-inner">
											<em tabindex="0" class="J_ItemSum number">${orders.money}</em>
										</div>
									</li>
									<li class="td td-oplist">
										<div class="td-inner">
											<span class="phone-title">下单时间</span>
											<div class="pay-logis">
												<fmt:formatDate value="${orders.ordertime}"
													pattern="yyyy-MM-dd HH:mm:ss" />
											</div>
										</div>
									</li>
								</c:forEach>
							</ul>
							<div class="clear"></div>

						</div>
				</tr>
			</div>
			<div class="clear"></div>
			<div class="pay-total">
				<!--留言-->
				<div class="order-extra">
					<div class="order-user-info">
						<div id="holyshit257" class="memo">
							<label>买家留言：</label> <input type="text"
								title="选填,对本次交易的说明（建议填写已经和卖家达成一致的说明）"
								placeholder="选填,建议填写和卖家达成一致的说明"
								class="memo-input J_MakePoint c2c-text-default memo-close"
								style="width: 500px; height: 100px;">
							<div class="msg hidden J-msg">
								<p class="error">最多输入500个字符</p>
							</div>
						</div>
					</div>

				</div>
				<!--优惠券 -->
				<div class="buy-agio">
					<li class="td td-coupon"><span class="coupon-title">优惠券</span>
						<select data-am-selected>
							<option value="a">
								<div class="c-price">
									<strong>￥8</strong>
								</div>
								<div class="c-limit">【消费满95元可用】</div>
							</option>
							<option value="b" selected>
								<div class="c-price">
									<strong>￥3</strong>
								</div>
								<div class="c-limit">【无使用门槛】</div>
							</option>
					</select></li>

					<li class="td td-bonus"><span class="bonus-title">红包</span> <select
						data-am-selected>
							<option value="a">
								<div class="item-info">
									¥50.00<span>元</span>
								</div>
								<div class="item-remainderprice">
									<span>还剩</span>10.40<span>元</span>
								</div>
							</option>
							<option value="b" selected>
								<div class="item-info">
									¥50.00<span>元</span>
								</div>
								<div class="item-remainderprice">
									<span>还剩</span>50.00<span>元</span>
								</div>
							</option>
					</select></li>

				</div>
				<div class="clear"></div>
			</div>
			<!--含运费小计 -->
			<div class="buy-point-discharge ">
				<p class="price g_price ">
					合计（含运费） <span>¥</span><em class="pay-sum">244.00</em>
				</p>
			</div>

			<!--信息 -->
			<div class="order-go clearfix">
				<div class="pay-confirm clearfix">
					<div class="box">
						<div tabindex="0" id="holyshit267" class="realPay">
							<em class="t">实付款：</em> <span class="price g_price "> <span>¥</span>
								<em class="style-large-bold-red " id="J_ActualFee">244.00</em>
							</span>
						</div>

						<div id="holyshit268" class="pay-address">

							<p class="buy-footer-address">
								<span class="buy-line-title buy-line-title-type">寄送至：</span> <span
									class="buy--address-detail"> <span class="province">湖北</span>省
									<span class="city">武汉</span>市 <span class="dist">洪山</span>区 <span
									class="street">雄楚大道666号(中南财经政法大学)</span>
								</span> </span>
							</p>
							<p class="buy-footer-address">
								<span class="buy-line-title">收货人：</span> <span
									class="buy-address-detail"> <span class="buy-user">艾迪
								</span> <span class="buy-phone">15871145629</span>
								</span>
							</p>
						</div>
					</div>

					<div id="holyshit269" class="submitOrder">
						<div class="go-btn-wrap">
							<a id="overOrderBtn" vve="${orders.id }" class="btn-go"
								tabindex="0" title="点击此按钮，提交订单">提交订单</a>
						</div>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</div>

		<div class="clear"></div>
	</div>
	
	<div class="footer">
		<div class="footer-hd">
			<p>
				<a href="#">恒望科技</a> <b>|</b> <a href="#">商城首页</a> <b>|</b> <a
					href="#">支付宝</a> <b>|</b> <a href="#">物流</a>
			</p>
		</div>
		<div class="footer-bd">
			<p>
				<a href="#">关于恒望</a> <a href="#">合作伙伴</a> <a href="#">联系我们</a> <a
					href="#">网站地图</a> <em>© 2015-2025 Hengwang.com 版权所有. 更多模板 <a
					href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a>
					- Collect from <a href="http://www.cssmoban.com/" title="网页模板"
					target="_blank">网页模板</a></em>
			</p>
		</div>
	</div>
	
	
	
	<script src="/resources/unity/jquery/jquery-3.2.0.js"></script>
	<script src="/resources/unity/address/js/area.js"></script>
	
	<script type="text/javascript" src="/resources/unity/layer/layui.js"></script>
	
	<!-- <script src="/resources/unity/address/js/select.js"></script> -->
	<script type="text/javascript">

	
	
	
	layui.use('layer', function() {
				var $ = layui.jquery, layer = layui.layer;

	$(document).on('click',"#secondsBtn",function() {
					layer.open({
								type : 1,
								title : false //不显示标题栏
								,
								closeBtn : false,
								offset: [180,0],
								shade : 0.7,
								area : '580px',
								id : 'LAY_layuipro'
								,
								btnAlign : 'c',
								moveType : 1,
								content :'<div id="outInfos">'
									+'<div class="am-cf am-padding">'
									+'<div class="am-fl am-cf">'
									+'<strong class="am-text-danger am-text-lg">新增地址</strong> / <small>Add address</small>'
									+'</div></div><hr />'
									+'<div class="am-u-md-12" >'
									+'<form class="am-form am-form-horizontal" id="f" >'
									+'<input type="hidden" name="uid" value="${oldUsers.uid}">'
									+'<div class="am-form-group">'
									+'<label for="user-name" class="am-form-label">收货人</label>'
									+'<div class="am-form-content">'
									+'<input type="text" name="signname" id="signname" placeholder="收货人">'
									+'</div></div>'
									+'<div class="am-form-group">'
									+'<label for="user-phone" class="am-form-label">手机号码</label>'
									+'<div class="am-form-content">'
									+'<input name="signtell" id="signtell" placeholder="手机号必填" type="text"> </div></div>'
									+'<div class="am-form-group">'
									+'<label for="user-phone" class="am-form-label">所在地</label>'
									+'<div class="am-form-content address">'
									+'<div class="outer"><select name="province" id="province"> <option value="请选择">请选择</option> </select>' 
									+'<select name="city" id="city"> <option value="请选择">请选择</option> </select>' 
									+'<select name="town" id="town"> <option value="请选择">请选择</option> </select>'
									+'</div> </div></div>'
									+'<div class="am-form-group">'
									+'<label for="user-intro" class="am-form-label">详细地址</label>'
									+'<div class="am-form-content">'
									+'<textarea class="" rows="3" name="signaddress" id="signaddress" placeholder="输入详细地址"></textarea>'
									+'<small>100字以内写出你的详细地址...</small> </div></div>'
									+'<div class="am-form-group theme-poptit">'
									+'<div class="am-u-sm-9 am-u-sm-push-3">'
									+'<input type="button" class="am-btn am-btn-danger" id="savess" value="保存">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
									+'<input type="button" class="am-btn am-btn-danger close" id="closess" value="取消"></div></div> </form></div></div>',
								success : function(layero) {
									//var btn = layero.find('.layui-layer-btn');
									$(document).on("click","#savess",function(){
										var f=$("#f");
											 $.ajax({
												type:'post',
												url:'/front/oldUsers/insertProfileOrders',
												data:f.serialize(),
												success:function(data){
													layer.close(layer.index);
													 if (data==null) {
														window.location.href="/gotoFront/login";
													} else {
														addAddressHtml(data);
													}
												},error:function(){
												alert("网络错误,无法添加新地址");
												}
											}) 
									});
									 $(document).on("click","#closess",function(){
										layer.close(layer.index);
										});
									 
									 
									 var province=$("#province"),city=$("#city"),town=$("#town");
										for(var i=0;i<provinceList.length;i++){
										    addEle(province,provinceList[i].name);
										}
										function addEle(ele,value){
										    var optionStr="";
										    optionStr="<option value="+value+">"+value+"</option>";
										    ele.append(optionStr);
										}
										function removeEle(ele){
										    ele.find("option").remove();
										    var optionStar="<option value="+"请选择"+">"+"请选择"+"</option>";
										    ele.append(optionStar);
										}
										var provinceText,cityText,cityItem;
										province.on("change",function(){
										    provinceText=$(this).val();
										    $.each(provinceList,function(i,item){
										        if(provinceText == item.name){
										            cityItem=i;
										            return cityItem
										        }
										    });
										    removeEle(city);
										    removeEle(town);
										    $.each(provinceList[cityItem].cityList,function(i,item){
										        addEle(city,item.name)
										    })
										});
										city.on("change",function(){
										    cityText=$(this).val();
										    removeEle(town);
										    $.each(provinceList,function(i,item){
										        if(provinceText == item.name){
										            cityItem=i;
										            return cityItem
										        }
										    });
										    $.each(provinceList[cityItem].cityList,function(i,item){
										        if(cityText == item.name){
										            for(var n=0;n<item.areaList.length;n++){
										                addEle(town,item.areaList[n])
										            }
										        }
										    });
										});
								}
							});
				})
				
			})
	
	
	 /*  $('#delBtn').click(function() {

           location.reload();

    }); */
	
	$("#overOrderBtn").click(function() {
			var o = $(this);
			$.ajax({
				type : 'post',
				url : '/front/orders/overOrders?id=' + o.attr("vve"),
				success : function(data) {
					switch (data) {
					case "login":
						window.location.href = "/gotoFront/login";
						break;
					case "balance":
						layer.msg("余额不足", {
							tiem : 2000
						}, {
							icon : 2
						});
						break;
					default:
						window.location.href = "/gotoFront/Pay_Success";
						break;
					}
				},
				error : function() {
					alert("网络错误");
				}
			})
		});
	
	
	
	
		

/* $(function(){ 
  $('#savess').click(function(){//点击按钮提交                                        
            $.ajax({
                 url:"/front/oldUsers/insertProfileByUid.action",
                 data:$("#addBtn").serialize(),       //要提交的表单id为form1
                 type:"post",
                 success:function(data){//ajax返回的数据
                 }
            });     
        });
 
 
}); */
	


function addAddressHtml(profiles) {
	var uls=$("#profiles");
	var ahtmls='<div class="per-border"></div>'
		+'<li class="user-addresslist defaultAddr">'
		+'<div class="address-left">'
		+'<div class="user DefaultAddr">'
		+'<span class="buy-address-detail"> <span class="buy-user">'+profiles.signname
		+'</span> <span class="buy-phone">'+profiles.signtell +'</span></span></div>'
		+'<div class="default-address DefaultAddr">'
		+'<span class="buy-line-title buy-line-title-type">收货地址：</span> <span'
		+'class="buy--address-detail">'+profiles.signaddress+'</span> </span></div>'
		+'<ins class="deftip">默认地址</ins></div>'
		+'<div class="address-right">'
		+'<a href="../person/address.html"> <span'
		+'class="am-icon-angle-right am-icon-lg"></span></a></div>'
		+'<div class="clear"></div>'
		+'<div class="new-addr-btn">'
		+'<a href="#" class="hidden">设为默认</a> <span'
		+'class="new-addr-bar hidden">|</span> <a href="#">编辑</a> <span'
		+'class="new-addr-bar">|</span> '
		+'<a href="/front/orders/deleteAddressByPrimarykeyAndByExchange?id=${profiles.id }" id="delBtn">删除</a>'
		+'</div></li>';
	uls.append(ahtmls);
}

 
       
</script>
	

</body>
</html>