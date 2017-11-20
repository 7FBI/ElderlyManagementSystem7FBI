<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <link type="text/css" rel="stylesheet" href="/resources/front/css/shopping-mall-index.css">
 <script type="text/javascript" src="/resources/front/js/zhonglin.js"></script>
 <script type="text/javascript" src="/resources/front/js/self_exchange/jquery.js"></script>
<title>用于测试</title>
</head>
<body>
<!-- 头部 -->
<jsp:include page="Self_header.jsp"/>
    <!--内容开始-->
    <div class="integral w1200">
    	<div class="integral-left f-l">
    	<!-- 用户信息及积分 -->
        	<dl>
            	<dt>
                	<a href=""><img src="${user.userurl}" /></a>            
                </dt>
                <dd>
                	<h3 style="color:red;font-size:16px;">我的团购</h3>
                    <p style="font-size:12px;">团购记录:</p>    
                </dd>
                <div style="clear:both;"></div>
            </dl>
        <!-- 类别 -->
            <ul>
             <c:forEach items="${toali}" var="toalis" >
            	<li class="int-current" tid=""><a href="#">${toalis.classname}</a><span>></span></li>
             </c:forEach>
            </ul>
        </div>
    	<div class="integral-right f-r">
        	<div class="int-r-top">
            	<p class="p1">排序：<span>默认</span></p>
            	<p class="p2">积分<span>↓</span></p>
            	<p class="p2">优惠力度<span>↓</span></p>
            </div>
            <div class="int-r-con">
            <c:forEach items="${toali}" var="toalis">
            	<ul class="int-con-ul1" id="products" style="display:block;">
            <c:forEach items="${Groupbuyings}" var="Groupbuyings">
            <c:if test="${Groupbuyings.getProducts().tid==toalis.id}">
                <li>
                    	<a href=""><img src="${Groupbuyings.getProducts().producturl}"/></a>
                        <h3><a href="#">${Groupbuyings.getProducts().pname}</a></h3>
                        <p class="p1">${Groupbuyings.getProducts().productstype1}</p>
                        <p class="p3">团购价：<span>${Groupbuyings.getGroupbuying().groupprice}</span></p>
                        <p class="p4">商城价：¥ ${Groupbuyings.getProducts().price}
                        </p>
                        <p class="p11"><em>${Groupbuyings.getGroupbuying().grouppeople}</em>人开团</p>
                        <span class="p10"><a>去团购</a></span> 
                 </li>
               </c:if> 
               </c:forEach>
                    <div style="clear:both;"></div>
                </ul>
               </c:forEach>
        <div style="clear:both;"></div>
    </div>  
</html>