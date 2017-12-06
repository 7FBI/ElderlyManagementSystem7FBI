<%@ page language="java" contentType="text/html charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<title>付款成功页面</title>
<!-- <link href="../basic/css/demo.css" rel="stylesheet" type="text/css" --> />

<link href="/resources/front/css/self_exchange/sustyle.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/resources/front/js/self_exchange/jquery-1.7.min.js"></script>

</head>

<body>


<!--顶部导航条 -->

<jsp:include page="Self_header.jsp"></jsp:include>

<div class="take-delivery">
 <div class="status">
   <h2>您已成功付款</h2>
   <div class="successInfo">
     <ul>
       <li>付款金额¥<em>${orders.money }</em></li>
       <div class="user-info">
         <p>收货人：${orders.orderman }</p>
         <p>联系电话：${orders.tell }</p>
         <p>收货地址：${orders.orderaddress }</p>
       </div>
             		请认真核对您的收货信息，如有错误请联系客服
     </ul>
     <div class="option">
       <span class="info">您可以</span>
        <a href="/front/orders/allOrdersList?status=2" class="J_MakePoint">查看<span>已买到的宝贝</span></a>
        <a href="/front/orders/ordersOverInfoByExchange?id=${orders.id }" class="J_MakePoint">查看<span>交易详情</span></a>
     </div>
    </div>
  </div>
</div>


<div class="footer" >
 <div class="footer-hd">
 <p>
 <a href="#">恒望科技</a>
 <b>|</b>
 <a href="#">商城首页</a>
 <b>|</b>
 <a href="#">支付宝</a>
 <b>|</b>
 <a href="#">物流</a>
 </p>
 </div>
 <div class="footer-bd">
 <p>
 <a href="#">关于恒望</a>
 <a href="#">合作伙伴</a>
 <a href="#">联系我们</a>
 <a href="#">网站地图</a>
 <em>© 2015-2025 Hengwang.com 版权所有. 更多模板 <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></em>
 </p>
 </div>
</div>


</body>
</html>
