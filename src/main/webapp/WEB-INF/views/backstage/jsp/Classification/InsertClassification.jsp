<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加商品类</title>
</head>
<body>
   <form action="${pageContext.request.contextPath }/backstage/Class/insertClassification.action" method="post" class="test">
     <h6>输入添加的id:</h6><input type="text" name="id" value=""/>
     <h6>输入添加的id:</h6><input type="text" name="classname" value="" />
     <input type="submit" value="添加">
   </form>
</body>
</html>