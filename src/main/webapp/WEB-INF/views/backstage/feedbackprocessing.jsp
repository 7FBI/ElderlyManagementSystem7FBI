<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/resources/backstage/Style/skin.css" rel="stylesheet" type="text/css">
<title>反馈处理</title>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style type="text/css">
a{text-decoration:none;color:black;}
a:visited{
   color:#000;
}
a:active{color:red;font-size:14px;}
 
*{
    margin: 0;
    padding: 0;
    font-family: Arial,"Arial Black","微软雅黑","宋体";
 }
 body{
    font-size: 12px;
    color: #000;
   }
 table{border-collapse:collapse;}
 .title {
    margin: 0 5px;
    width: 85px;
    line-height: 26px;
    font-weight: bold;
    background: url(/resources/backstage/Images/top_bt.jpg) no-repeat;
    display: block;
    text-indent: 15px;
    padding-top: 5px;
    float: left;
}
.nont{display:none;}
</style>
</head>
<body>
     <table width="100%" cellspacing="0" cellpadding="0" border="0">
     <tbody>
     <tr>
     <td width="17" valign="top" background="/resources/backstage/Images/mail_left_bg.gif">
     <img src="/resources/backstage/Images/left_top_right.gif" width="17" height="29">
     </td>
     <td valign="top" background="/resources/backstage/Images/content_bg.gif">
     <table width="100%" height="31" cellspacing="0" cellpadding="0" cellpadding="0" border="0" background="/resources/backstage/Images/content_bg.gif">
     <tbody> 
     <tr><td height="31" width="60px;">
       <div class="title"><a href="#first" class="#first">未处理反馈 </a></div>
     </td>
     <td height="31" style="magin-left:0;">
       <div class="title"><a href="#second" class="#second">已处理反馈 </a></div>
     </td>
     </tr>
     </tbody>
     </table>
     </td>
     <td width="16" valign="top" background="/resources/backstage/Images/mail_right_bg.gif">
     <img src="/resources/backstage/Images/nav_right_bg.gif" width="16" height="29">
     </td>
     </tr>
     <tr class="first" >
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
                                                        <th>排序</th>
                                                        <th>用户账号</th>
                                                        <th>用户姓名</th>
                                                        <th>联系方式</th>
                                                        <th>反馈时间</th>
                                                        <th>反馈内容</th>
                                                        <th>操作</th>
                                                    </tr>
                                                    <c:forEach items="${feedback1 }" var="feedback1">
                                                    <tr align="center" class="d">
                                                        <td><input type="checkbox" value="1" /></td>
                                                        <td>1</td>
                                                        <td>${feedback1.uid}</td>
                                                        <td>${feedback1.username}</td>
                                                        <td>${feedback1.tell}</td>
                                                        <td>${feedback1.speaktime}</td>
                                                        <td>${feedback1.content}</td>
                                                        <td>删除 权限</td>
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
                                <img src="/resources/backstage/Images/icon_phone.gif" width="17" height="14"> 官方网站：<a href="http://www.rain-man.cn">http://www.rain-man.cn</a>
                            </td>
                            <td>&nbsp;</td><td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
                <td background="/resources/backstage/Images/mail_right_bg.gif">&nbsp;</td>
         </tr>
      
     <tr class="second nont">
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
                                                        <th>排序</th>
                                                        <th>用户名</th>
                                                        <th>真实姓名</th>
                                                        <th>上次登陆 IP</th>
                                                        <th>上次登陆时间</th>
                                                        <th>添加时间</th>
                                                        <th>操作</th>
                                                    </tr>
                                                    <tr align="center" class="d">
                                                        <td><input type="checkbox" value="" /></td>
                                                        <td>1</td>
                                                        <td>Admin</td>
                                                        <td>瑞曼</td>
                                                        <td>127.0.0.1</td>
                                                        <td>2013-01-22</td>
                                                        <td>2013-01-22</td>
                                                        <td>删除 权限</td>
                                                    </tr>
                                                    <tr align="center" class="d">
                                                        <td><input type="checkbox" value="" /></td>
                                                        <td>1</td>
                                                        <td>Admin</td>
                                                        <td>瑞曼</td>
                                                        <td>127.0.0.1</td>
                                                        <td>2013-01-22</td>
                                                        <td>2013-01-22</td>
                                                        <td>删除 权限</td>
                                                    </tr>
                                                    <tr align="center" class="d">
                                                        <td><input type="checkbox" value="" /></td>
                                                        <td>1</td>
                                                        <td>Admin</td>
                                                        <td>瑞曼</td>
                                                        <td>127.0.0.1</td>
                                                        <td>2013-01-22</td>
                                                        <td>2013-01-22</td>
                                                        <td>删除 权限</td>
                                                    </tr>
                                                    <tr align="center" class="d">
                                                        <td><input type="checkbox" value="" /></td>
                                                        <td>1</td>
                                                        <td>Admin</td>
                                                        <td>瑞曼</td>
                                                        <td>127.0.0.1</td>
                                                        <td>2013-01-22</td>
                                                        <td>2013-01-22</td>
                                                        <td>删除 权限</td>
                                                    </tr>
                                                    <tr align="center" class="d">
                                                        <td><input type="checkbox" value="" /></td>
                                                        <td>1</td>
                                                        <td>Admin</td>
                                                        <td>瑞曼</td>
                                                        <td>127.0.0.1</td>
                                                        <td>2013-01-22</td>
                                                        <td>2013-01-22</td>
                                                        <td>删除 权限</td>
                                                    </tr>
                                                    <tr align="center" class="d">
                                                        <td><input type="checkbox" value="" /></td>
                                                        <td>1</td>
                                                        <td>Admin</td>
                                                        <td>瑞曼</td>
                                                        <td>127.0.0.1</td>
                                                        <td>2013-01-22</td>
                                                        <td>2013-01-22</td>
                                                        <td>删除 权限</td>
                                                    </tr>
                                                    <tr align="center" class="d">
                                                        <td><input type="checkbox" value="" /></td>
                                                        <td>1</td>
                                                        <td>Admin</td>
                                                        <td>瑞曼</td>
                                                        <td>127.0.0.1</td>
                                                        <td>2013-01-22</td>
                                                        <td>2013-01-22</td>
                                                        <td>删除 权限</td>
                                                    </tr>
                                                    <tr align="center" class="d">
                                                        <td><input type="checkbox" value="" /></td>
                                                        <td>1</td>
                                                        <td>Admin</td>
                                                        <td>瑞曼</td>
                                                        <td>127.0.0.1</td>
                                                        <td>2013-01-22</td>
                                                        <td>2013-01-22</td>
                                                        <td>删除 权限</td>
                                                    </tr>
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
                                <img src="/resources/backstage/Images/icon_phone.gif" width="17" height="14"> 官方网站：<a href="http://www.rain-man.cn">http://www.rain-man.cn</a>
                            </td>
                            <td>&nbsp;</td><td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
                <td background="/resources/backstage/Images/mail_right_bg.gif">&nbsp;</td>
       </tr>
      <!-- 底部部分 -->
            <tr>
                <td valign="bottom" background="./Images/mail_left_bg.gif">
                    <img src="/resources/backstage/Images/buttom_left.gif" width="17" height="17" />
                </td>
                <td background="/resources/backstage/Images/buttom_bgs.gif">
                    <img src="/resources/backstage/Images/buttom_bgs.gif" width="17" height="17">
                </td>
                <td valign="bottom" background="/resources/backstage/Images/mail_right_bg.gif">
                    <img src="/resources/backstage/Images/buttom_right.gif" width="16" height="17" />
                </td>           
            </tr>
     </tbody>
     </table>
</body>
<script src="/resources/front/js/self_exchange/jquery.min.js"></script>
<script type="text/javascript">
$(document).on('click',".title",function(){
	  var hui=$(this);
	  var first=$(".first");
	  var second=$(".second");
	  if(hui.children().attr('class')=="#first"){
		  if(first.attr('class')=="first nont"){
			  second.addClass("nont");
			  first.removeClass("nont"); 
		  }
	  }else if(hui.children().attr('class')=="#second"){
		  if(second.attr('class')=="second nont"){
			  first.addClass("nont");
			  second.removeClass("nont");
		  } 
	  }
})
</script>
</html>