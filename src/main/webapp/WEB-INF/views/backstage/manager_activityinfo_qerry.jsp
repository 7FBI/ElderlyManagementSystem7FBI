<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>详情页面</title>
</head>
<body align="center">
<form action="${pageContext.request.contextPath }/manager/showactivitydetailinfo.action" method="post">
<input type="hidden" name="mid" value="${activitydetailinfo.mid}" />
活动序号：${activitydetailinfo.id}<br/>
活动名称:${activitydetailinfo.activitytitle} <br/>
活动老师:${activitydetailinfo.activityteacher}<br/>
活动价格:${activitydetailinfo.activityprice}<br/>
活动内容:${activitydetailinfo.activitycontent} <br/>
责任编号:${activitydetailinfo.mid} <br/>
活动地址:${activitydetailinfo.activitylocation}<br/>
开始时间:${activitydetailinfo.activitystarttime} <br/>
截止时间：${activitydetailinfo.actitvityendtime} <br/>
结束时间:${activitydetailinfo.activitystoptime}<br/>
活动图片：<br/>
<c:forEach  items="${list}" var="item">
<img src="/files${item.activeimageurl}"  height="100" width="100" />

</c:forEach><br/>
<a href="${pageContext.request.contextPath }/manager/showactivitydetailinfo.action?mid=${activitydetailinfoList.mid}">返回</a>
</form>
</body>
</html>