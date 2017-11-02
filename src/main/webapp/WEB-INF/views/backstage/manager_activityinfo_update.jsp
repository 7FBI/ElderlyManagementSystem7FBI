<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>修改页面</title>
</head>
<body align="center">
<h1>修改活动</h1>

<form action="${pageContext.request.contextPath }/backstage/manager/update" method="post"  enctype="multipart/form-data">
<input type="hidden" name="mid" value="${activitydetailinfo.mid}" />
<table width="100%" border="1">
	<tr>
		<td>活动序号</td>
		<td><input type="text" name="id" value="${activitydetailinfo.id}"/></td>
	</tr>
	<tr>
		<td>活动名称</td>
		<td><input type="text" name="activitytitle" value="${activitydetailinfo.activitytitle}"/></td>
	</tr>
	<tr>
		<td>活动老师</td>
		<td><input type="text" name="activityteacher" value="${activitydetailinfo.activityteacher}"/></td>
	</tr>
	<tr>
		<td>活动价格</td>
		<td><input type="text" name="activityprice" value="${activitydetailinfo.activityprice}"/></td>
	</tr>
	<tr>
		<td>活动内容</td>
		<td><input type="text" name="activitycontent" value="${activitydetailinfo.activitycontent}"/></td>
	</tr>
	
	<tr>
		<td>活动地址</td>
		<td><input type="text" name="activitylocation" value="${activitydetailinfo.activitylocation}"/></td>
	</tr>
	<tr>
		<td>开始时间</td>
		<td><input type="text" name="activitystarttime" value="${activitydetailinfo.activitystarttime}"/></td>
	</tr>
	<tr>
		<td>截止时间</td>
		<td><input type="text" name="actitvityendtime" value="${activitydetailinfo.actitvityendtime}"/></td>
	</tr>
	<tr>
		<td>结束时间</td>
		<td><input type="text" name="activitystoptime" value="${activitydetailinfo.activitystoptime}"/></td>
	</tr>
	<tr>
		<td>活动图片</td>
		<td>
			<c:forEach  items="${list}" var="item">
				<img src="/files${item.activeimageurl}"  height="100" width="100" />
			</c:forEach>
		</td>
	</tr>
	<tr>
		<td>修改活动图片</td>
		<td><input type="file" name="files" multiple="multiple" /></td>
</table>
<button type="submit">提交</button>
<a href="${pageContext.request.contextPath }/manager/showactivitydetailinfo.action?mid=${activitydetailinfoList.mid}">返回</a>
</form>


</body>
</html>