<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link rel="stylesheet" type="text/css" href="/resources/ManagerInfo_login/css/skin.css" />
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<title>待处理订单</title>
</head>
<body>
  <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <!-- 头部开始 -->
            <tr>
                <td width="17" valign="top" background="/resources/backstage/Images/mail_left_bg.gif">
                    <img src="/resources/backstage/Images/left_top_right.gif" width="17" height="29" />
                </td>
                <td valign="top" background="/resources/backstage/Images/content_bg.gif">
                    <table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" background="/resources/backstage/Images/content_bg.gif">
                        <tr><td height="31"><div class="title">添加栏目</div></td></tr>
                    </table>
                </td>
                <td width="16" valign="top" background="/resources/backstage/Images/mail_right_bg.gif"><img src="/resources/backstage/Images/nav_right_bg.gif" width="16" height="29" /></td>
            </tr>
            <!-- 中间部分开始 -->
            <tr>
                <!--第一行左边框-->
                <td valign="middle" background="/resources/backstage/Images/mail_left_bg.gif">&nbsp;</td>
                <!--第一行中间内容-->
                <td valign="top" bgcolor="#F7F8F9">
                    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <!-- 空白行-->
                        <tr><td colspan="2" valign="top">&nbsp;</td><td>&nbsp;</td><td valign="top">&nbsp;</td></tr>
                        <tr>
                            <td colspan="4">
                                <table>
                                    <tr>
                                        <td width="100" align="center"><img src="/resources/backstage/Images/mime.gif" /></td>
                                        <td valign="bottom"><h3 style="letter-spacing:1px;">在这里，您可以根据您的需求，填写网站参数！</h3></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <!-- 一条线 -->
                        <tr>
                            <td height="40" colspan="4">
                                <table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
                                    <tr><td></td></tr>
                                </table>
                            </td>
                        </tr>
                        <!-- 产品列表开始 -->
                        <tr>
                            <td width="2%">&nbsp;</td>
                            <td width="96%">
                                <table width="100%">
                                    <tr>
                                        <td colspan="2">
                                            <form action="" method="">
                                                <table width="100%"  class="cont tr_color">
                                                    <tr>
                                                        <th>选中</th>
                                                        <th>用户id</th>
                                                        <th>下单时间</th>
                                                        <th>订单状态</th>
                                                        <th>支付方式</th>
                                                        <th>订单地址</th>
                                                        <th>买家留言</th>
                                                    </tr>
                                                    <c:forEach items="${Orders }" var="Orders">
                                                    <tr align="center" class="d">
                                                        <td><input type="checkbox" value="" /></td>
                                                       <td>${Orders.uid }</td>
                                                       <td>${Orders.ordertime }</td>
                                                       <td>${Orders.orderstatus }</td>
                                                       <td>${Orders.payment }</td>
                                                       <td>${Orders.orderaddress }</td>
                                                       <td>${Orders.remarks }</td>
                                                    </tr>
                                                   </c:forEach> 
                                                </table>
                                            </form>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td width="2%">&nbsp;</td>
                        </tr>
                        <!-- 产品列表结束 -->
                        <tr>
                            <td height="40" colspan="4">
                                <table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
                                    <tr><td></td></tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td width="2%">&nbsp;</td>
                            <td width="51%" class="left_txt">
                                <img src="/resources/backstage/Images/icon_mail.gif" width="16" height="11"> 客户服务邮箱：rainman@foxmail.com<br />
                                <img src="/resources/backstage/Images/icon_phone.gif" width="17" height="14"> 官方网站：<a href="http://h2design.taobao.com/" target="_blank">氢设计</a>
                            </td>
                            <td>&nbsp;</td><td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
                <td background="/resources/backstage/Images/mail_right_bg.gif">&nbsp;</td>
            </tr>
            <!-- 底部部分 -->
            <tr>
                <td valign="bottom" background="/resources/backstage/Images/mail_left_bg.gif">
                    <img src="/resources/backstage/Images/buttom_left.gif" width="17" height="17" />
                </td>
                <td background="/resources/backstage/Images/buttom_bgs.gif">
                    <img src="/resources/backstage/Images/buttom_bgs.gif" width="17" height="17">
                </td>
                <td valign="bottom" background="/resources/backstage/Images/mail_right_bg.gif">
                    <img src="/resources/backstage/Images/buttom_right.gif" width="16" height="17" />
                </td>           
            </tr>
        </table>
</body>
</html>