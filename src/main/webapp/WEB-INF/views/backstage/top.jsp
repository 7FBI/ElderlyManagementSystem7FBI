<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="./Style/skin.css" />
    <script type="text/javascript">
        function logout(){
            if(window.confirm('您确定要退出吗？')) {
                //window.location.href="/exit/clearUser";
                top.location="/exit/backstage/clearUser";
            }
        }
    </script>
</head>
    <body>
       <!--  <table cellpadding="0" width="100%" height="150" background="/resources/backstage/Images/top_top_bg.gif"> -->
            <table cellpadding="0" width="100%" height="150" bgcolor="#87CEEB"> 
            <tr valign="top">
                <td width="70%"><a href="javascript:void(0)">
                <div style="background:url(/resources/upload/backstage/title.png);background-repeat: no-repeat;no-repeat: center fixed;
	              background-size: contain;background-size: 100% 100%;">
                <img style="border:none" src="../../../resources/backstage/Images/logo1.png" width="35%" height="70"/></div></a></td>
                <td width="24%" style="padding-top:13px;font:15px Arial,SimSun,sans-serif;color:#FFF">管理员：<b>
                <c:if test="${ManagerIndo!=null}">${ManagerIndo.realname}</c:if>
                <c:if test="${manager!=null}">${manager.mnane}</c:if>
                <c:if test="${ceoinfo!=null}">${ceoinfo.realname}</c:if>
                </b> 您好，感谢登陆使用！</td>
                <td style="padding-top:10px;" align="center"><a href="javascript:void(0)"><img style="border:none" src="/resources/backstage/Images/index.gif" /></a></td>
                <td style="padding-top:10px;" align="center"><a href="javascript:void(0)"><img style="border:none" src="/resources/backstage/Images/out.gif" onclick="logout();" /></td>
            </tr>
        </table>
    </body>
</html>