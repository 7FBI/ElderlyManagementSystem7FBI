<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="/resources/backstage/Style/skin.css" />
</head>
    <body>
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <!-- 头部开始 -->
            <tr>
                <td width="17" valign="top" background="./Images/mail_left_bg.gif">
                    <img src="./Images/left_top_right.gif" width="17" height="29" />
                </td>
                <td valign="top" background="./Images/content_bg.gif">
                    <table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" background="././Images/content_bg.gif">
                        <tr><td height="31"><div class="title">管理员添加活动</div></td></tr>
                    </table>
                </td>
                <td width="16" valign="top" background="./Images/mail_right_bg.gif"><img src="./Images/nav_right_bg.gif" width="16" height="29" /></td>
            </tr>
            <!-- 中间部分开始 -->
            <tr>
                <!--第一行左边框-->
                <td valign="middle" background="./Images/mail_left_bg.gif">&nbsp;</td>
                <!--第一行中间内容-->
                <td valign="top" bgcolor="#F7F8F9">
                    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <!-- 空白行-->
                        <tr><td colspan="2" valign="top">&nbsp;</td><td>&nbsp;</td><td valign="top">&nbsp;</td></tr>
                        <tr>
                            <td colspan="4">
                                <table>
                                    <tr>
                                        <td width="100" align="center"><img src="./Images/mime.gif" /></td>
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
                        <!-- 添加产品开始 -->
                        <tr>
                            <td width="2%">&nbsp;</td>
                            <td width="96%">
                                <table width="100%">
                                    <tr>
                                        <td colspan="2">
                                            <form action="" method="">
                                                <table width="100%"class="cont">
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td>活动编号：</td>
                                                        <td width="20%"><input class="text" type="text" name="cat_name" value="" /></td>
                                                        <td>设置活动编号，不填将自动创建!</td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td width="15%">活动标题：</td>
                                                        <td width="25%"><input class="text" type="text" name="activitytitle" value="" /></td>
                                                        <td>设置活动名称</td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td>活动图片：</td>
                                                        <td width="20%"><input type="file" name="cat_name" /></td>
                                                        <td>上传活动图片</td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>                                             
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td>活动价格：</td>
                                                        <td width="20%"><input class="text" style="width:100px;" type="text" name="activityprice" value="" /></td>
                                                        <td>填写活动价格</td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td>活动带队老师：</td>
                                                        <td>
                                                            <select>
                                                                <option selected="true">请选择...</option>
                                                                <option>老王</option>
                                                                <option>张三</option>
                                                            </select>
                                                        </td>
                                                        <td>设置带队老师</td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td>活动分类：</td>
                                                        <td>
                                                            <select>
                                                                <option selected="true">请选择...</option>
                                                                <option>室内活动</option>
                                                                <option>室外活动</option>
                                                                <option>室外活动和室外活动</option>
                                                            </select>
                                                        </td>
                                                        <td>设置产品分类</td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                                           
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td>描述(Description)：</td>
                                                        <td><textarea></textarea></td>
                                                        <td>活动简短描述</td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td width="15%">报名截至日期：</td>
                                                        <td width="25%"><input class="text" type="text" name="cat_name" value="" /></td>
                                                        <td>设置活动日期</td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td colspan="3"><input class="btn" type="submit" value="提交" /></td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                </table>
                                            </form>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td width="2%">&nbsp;</td>
                        </tr>
                        <!-- 添加活动结束 -->
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
                                <img src="./Images/icon_mail.gif" width="16" height="11"> 客户服务邮箱：rainman@foxmail.com<br />
                                <img src="./Images/icon_phone.gif" width="17" height="14"> 官方网站：<a href="http://h2design.taobao.com/" target="_blank">氢设计</a>
                            </td>
                            <td>&nbsp;</td><td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
                <td background="./Images/mail_right_bg.gif">&nbsp;</td>
            </tr>
            <!-- 底部部分 -->
            <tr>
                <td valign="bottom" background="./Images/mail_left_bg.gif">
                    <img src="./Images/buttom_left.gif" width="17" height="17" />
                </td>
                <td background="./Images/buttom_bgs.gif">
                    <img src="./Images/buttom_bgs.gif" width="17" height="17">
                </td>
                <td valign="bottom" background="./Images/mail_right_bg.gif">
                    <img src="./Images/buttom_right.gif" width="16" height="17" />
                </td>           
            </tr>
        </table>
    </body>

</html>