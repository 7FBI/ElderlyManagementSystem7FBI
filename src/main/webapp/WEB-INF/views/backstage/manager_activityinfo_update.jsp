<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>修改页面</title>
</head>
<body>
<form action="${pageContext.request.contextPath }/manager/update" method="post"  enctype="multipart/form-data">
<input type="hidden" name="id" value="${activitydetailinfo.id}" />
活动名称<input type="text" name="activitytitle" value="${activitydetailinfo.activitytitle}"/> 修改主题<br/>
活动联系人<input type="text" name="activityteacher" value="${activitydetailinfo.activityteacher}"/>修改带队老师<br/>
活动价格 <input type="text"  name="activityprice" value="${activitydetailinfo.activityprice}"/>修改报名价格<br/>
活动地址<input type="text"  name="activitylocation" value="${activitydetailinfo.activitylocation}"/>修改举办地址<br/>
开始时间<input type="text" name="activitystarttime" value="${activitydetailinfo.activitystarttime}"/>修改开始时间 <br/>
结束时间<input type="text" name="iactivitystoptimed" value=" ${activitydetailinfo.activitystoptime}"/>修改结束时间<br/>
活动图片：<br/>
<c:forEach  items="${list}" var="item">
<img src="/files${item.activeimageurl}"  height="100" width="100" />

</c:forEach><br/>
活动图片<input type="file" name="files" multiple="multiple" />上传活动图片<br/>
<button type="submit">提交</button>
</form>
</body>
</html>