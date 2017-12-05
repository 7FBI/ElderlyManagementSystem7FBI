<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link rel="stylesheet" type="text/css" href="/resources/backstage/Style/skt1.css"/>
 <script type="text/javascript" src="/resources/unity/jquery/jquery-3.2.0.js"></script>
<title>商品团购</title>
<style type="text/css">
 input{
  dispaly:inline-block;
  border:2px soild #0094ea;
}
.input-group2{
  float:left;
 }
 .input-group{
  float:left;
 }
.repItem_ctl00_Group .input-group .btns{
	display:inline-block;
	padding:6px 12px;
	background-color:#0094ea;
	font-size:16px;
    margin-bottom: 0;
    float:left;
    font-weight: normal;
    line-height:1.428571429;
    text-align: center;
    white-space: nowrap;
    margin:0 25px 0 0;
    vertical-align: middle;
    cursor:pointer;
    color:white;
    background-image:none;
    border:1px solid transparent;
    border-radius:10px;
   -moz-user-select: none;
}
.searchTxt {
    border-right: 0;
    height: 30px;
    line-height: 40px;
}
.form-control{
 display: block;
 width:200px;
 padding: 6px 12px;
 font-size: 14px;
 color: #555;
 margin:auto 20px;
 vertical-align: middle;
background-color: #fff;
background-image: none;
border: 1px solid #ccc;
box-shadow: inset 0 1px 1px rgba(0,0,0,0.075);
transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
float:left;
}

</style>
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
                        <tr><td height="31"><div class="title" style="100px;">商品打折</div></td></tr>
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
                                        <td valign="bottom">
                                        <div class="repItem_ctl00_Group">
                                        <div class="input-group2">
                                        <input class="form-control searchTxt" type="text" placeholder="商品搜索">
                                        </div>
                                        <div class="input-group">
                                        <button id="btn_1" class="btns" type="button" url="uio" title="索引搜索">ID搜索</button>
                                        <button id="btn_2" class="btns" type="button" url="uio" title="索引搜索">商品名称</button>
                                        </div>
                                        </div>
                                        </td>
                                        <td style="margin-left:30px;color:red;font-size:16px;">该页面只能对一种商品进行操作!</td>
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
                        <!-- 添加栏目开始 -->
                        <tr>
                            <td width="2%">&nbsp;</td>
                            <td width="96%">
                                <table width="100%">
                                    <tr>
                                        <td colspan="2">
                                                <table width="100%" class="cont">
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td>商品名称：</td>
                                                        <td width="20%"><span>${product.pname}</span></td>
                                                         <td width="40%"></td>
                                                        <td width="20%"></td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                     <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td>商品品牌：</td>
                                                        <td width="20%"><span>${product.productstype2}</span></td>
                                                        <td width="40%"></td>
                                                        <td width="20%"></td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td>商品原价：</td>
                                                        <td width="20%"><span>${product.price}</span></td>
                                                        <td width="40%"></td>
                                                        <td width="20%"></td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                       <form id="fromSubmin">
                                                        <input value="${product.id}" name="pid" type="hidden">
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td>商品折扣：</td>
                                                        <td width="20%"><input id="textprice" class="text" type="text" name="discountprice" value=""/></td>
                                                        <td width="40%"></td>
                                                        <td width="20%"></td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                     <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td>商品折扣价格：</td>
                                                        <td width="20%"><input id="endprice" class="text" type="text" name="endprice" value=""/></td>
                                                        <td width="40%"></td>
                                                        <td width="20%"></td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                     <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td>商品折扣截止时间：</td>
                                                        <td width="20%"><input id="date" class="text" type="text" name="discountstoptime" value=""/></td>
                                                        <td width="40%"></td>
                                                        <td width="20%"></td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td colspan="3"><input class="btn" type="button" value="提交" /></td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                     </form>
                                                </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td width="2%">&nbsp;</td>
                        </tr>
                        <!-- 添加栏目结束 -->
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
<script src="/resources/unity/layer/layui.js"></script>
<!-- 改成你的路径 -->
	<script>
		//执行一个laydate实例
		layui.use('laydate', function() {
			var laydate = layui.laydate;

			//执行一个laydate实例
			laydate.render({
				elem : '#date' //指定元素
			});
		});
	</script>
<script type="text/javascript">
$("button[url]").on('click',function(){
	 var values=$(".form-control").val();
	 var yi=$(this).attr("id");
	 if(yi=="btn_1"){
		if(values!=null){
			window.location.href="/backstage/Store/DiscountSelect.action?pname=null&id="+values;
		}else{
			alert("你没有输入查询id或者商品名称");
		}  
	 }else if(yi=="btn_2"){
		 if(values!=null){
			  window.location.href="/backstage/Store/DiscountSelect.action?id=0&pname="+values;
			}else{
				alert("你没有输入查询id或者商品名称")
			}
	 }  
})

$(".btn").click(function(){
	var f=$("#fromSubmin")
	var time=$("#date")
	var tosy=time.val().split("-");
	var mydate=new Date();
	if(tosy[0]<mydate.getFullYear()){
		alert("团购截止时间年份不能早于当前时间")
	}
	if(tosy[0]==mydate.getFullYear()&&tosy[1]<mydate.getMonth()){
		alert("团购截止时间年份不能早于当前时间")
	} 
	if(tosy[0]==mydate.getFullYear()&&tosy[1]==mydate.getMonth()&&tosy[2]<=mydate.getDate()){
		alert("团购截止时间年份不能早于当前时间")
	}else{
		$.ajax({
			type : 'post',
			url :"/backstage/discount/insertDiscountProduct",
			data : f.serialize(),
			success : function(data) {
				if(data=="ture"){
					alert("折扣商品录入成功")
				}else if(data=="again"){
					alert("不能重复录入");
				}else if(data=="false"){
					alert("折扣商品录入失败")
				}	
			},
			error :function() {
				alert("网络请求错误")
			}
		})
	}
})
$("#textprice").blur(function(){
	var thisc=$(this)
	var price='${product.price}';
	var endprice=$("#endprice")
	if(price!=0&&thisc.val()>0){
		endprice.val(parseFloat(price*thisc.val()).toFixed(2) )
	}
	
})
</script>
</html>