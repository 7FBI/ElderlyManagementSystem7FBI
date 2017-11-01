<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>订单展示</title>
</head>
<body>
<table>
  <thead>
  <tr>
  <th>订单用户</th>
  <th>订单时间</th>
  <th>地址</th>
  <th>订单状态</th>
  <th>支付方式</th>
  <th>买家留言</th>
  </tr>
  </thead>
  <c:forEach items="${Orders }" var="Orders">
  <tbody>
  <tr>
  <th>${Orders.uid }</th>
  <th>${Orders.ordertime }</th>
  <th>${Orders.orderstatus }</th>
  <th>${Orders.orderstatus }</th>
  <th>${Orders.payment }</th>
  <th>${Orders.remarks }</th>
  </tr>
  </tbody>
  </c:forEach> 
</table>

</body>
</html>