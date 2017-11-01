<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>查看类别</title>
</head>
<body>
 <table>
   <thead>
   <tr>
   <th>类别id</th>
   <th>类别名称</th>
   <tr>
   </thead>
   <tbody>
   <c:forEach items="${classifications }" var="classification">
   <tr>
   <td>${classification.id}</td>
   <td>${classification.classname}</td>
   <td><a href="${pageContext.request.contextPath }/Class/update_classification.action?id=${classification.id}">修改</a></td>
   </tr>
    </c:forEach> 
   </tbody>
 </table>
</body>
<a href="/gotoBackstage/jsp/Classification/InsertClassification">添加类别</a>
</html>