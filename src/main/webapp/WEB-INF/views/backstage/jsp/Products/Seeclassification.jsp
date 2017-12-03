<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css"
	href="/resources/ManagerInfo_login/css/skin.css" />
<script type="text/javascript"
	src="/resources/unity/jquery/jquery-3.2.0.js"></script>
<script type="text/javascript" src="/resources/unity/js/echarts.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>测试页面</title>
<style>
*:focus {
	outline: none;
}

#baidu {
	height: 35px;
	margin-left: 340px;
}

#baidu .input {
	border: 1px solid #999999;
	height: 100%;
}

#baidu .input .clear {
	width: 30px;
	height: 35px;
	line-height: 30px;
	text-align: center;
	cursor: pointer;
	opacity: 0.8;
	color: gray;
}

#baidu input[type=text] {
	height: 86%;
	border: 0px;
	width: 250px;
}

#baidu div {
	float: left;
}

#baidu .ft {
	width: 100px;
	height: 35px;
	background: #3385ff;
	color: #fff;
	border: none;
}

.table_fit {
	width: 90%;
	height: 460px;
	margin: 20px auto;
	position: relative;
	border: 1px;
}

#tb {
	width: 1000px;
	border-collapse: collapse;
	border: 1px solid #EEE;
	font-size: 14px;
	margin: 10px auto;
}

#tb th {
	background: #EEE;
	border-bottom: 1px solid #CCC;
	padding: 4px;
}

#tb td {
	border: 1px solid #EEE;
	padding: 4px;
}
</style>
</head>
<body>

	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<!-- 头部开始 -->
		<tr>
			<td width="17" valign="top"
				background="resources/backstage/Images/mail_left_bg.gif"><img
				src="/resources/backstage/Images/left_top_right.gif" width="17"
				height="29" /></td>
			<td valign="top"
				background="/resources/backstage/Images/content_bg.gif">
				<table width="100%" height="31" border="0" cellpadding="0"
					cellspacing="0"
					background="resources/backstage/Images/content_bg.gif">
					<tr>
						<td height="31"><div class="title">添加栏目</div></td>
					</tr>
				</table>
			</td>
			<td width="16" valign="top"
				background="/resources/backstage/Images/mail_right_bg.gif"><img
				src="resources/backstage/Images/nav_right_bg.gif" width="16"
				height="29" /></td>
		</tr>
		<!-- 中间部分开始 -->
		<tr>
			<!--第一行左边框-->
			<td valign="middle"
				background="/resources/backstage/Images/mail_left_bg.gif">&nbsp;</td>
			<!--第一行中间内容-->
			<td valign="top" bgcolor="#F7F8F9">
				<table width="100%" border="0" align="center" cellpadding="0"
					cellspacing="0">
					<!-- 空白行-->
					<tr>
						<td colspan="2" valign="top">&nbsp;</td>
						<td>&nbsp;</td>
						<td valign="top">&nbsp;</td>
					</tr>
					<tr>
						<td colspan="4">
							<table>
								<tr>
									<td width="100" align="center"><img
										src="/resources/backstage/Images/mime.gif" /></td>
									<td valign="bottom"><h3 style="letter-spacing: 1px;">在这里，您可以根据您的需求，填写网站参数！</h3></td>
								</tr>
							</table>
						</td>
					</tr>
					<!-- 一条线 -->
					<tr>
						<td height="40" colspan="4">
							<table width="100%" height="1" border="0" cellpadding="0"
								cellspacing="0" bgcolor="#CCCCCC">
								<tr>
									<td></td>
								</tr>
							</table>
						</td>
					</tr>
					<!-- 添加栏目开始 -->
					<tr>
						<td height="40" colspan="4">
							<table width="100%" height="40px;" border="0" cellpadding="0"
								cellspacing="0">
								<tbody>
									<tr>
										<div id="baidu">
											<div class="input">
												<form
													action="${pageContext.request.contextPath }/backstage/Store/init.do"
													method="post">
													<input type="text" class="span2" id="search"
														name="queryCondition" value="${page.queryCondition}">
													<span class="clear" id="cls">X</span> <input type="submit"
														value="查询商品名" class="ft">
												</form>
											</div>
										</div>
									</tr>
								</tbody>
							</table>
						</td>
					</tr>
					<tr>
						<td width="2%">&nbsp;</td>
						<td width="96%">
							<table width="100%">
								<tr>
									<td colspan="2">
										<form action="" method="">
											<table width="100%" class="cont tr_color">
												<tr>
													<th width="10%">商品名</th>
													<th>大小</th>
													<th>颜色</th>
													<th>商品其它属性1</th>
													<th>商品其它属性2</th>
													<th>价格</th>
													<th>余量</th>
													<th>类别</th>
													<th width="10%">描述</th>
													<th width="10%">编辑</th>
												</tr>
												<c:forEach items="${InvList }" var="Invlist">
													<tr align="center" class="d" p=${Invlist.id }>
														<td>${Invlist.pname}</td>
														<td>${Invlist.size}</td>
														<td>${Invlist.productscolor}</td>
														<td>${Invlist.productstype1}</td>
														<td>${Invlist.productstype2}</td>
														<td>${Invlist.price}</td>
														<td>${Invlist.count}</td>
														<td>${Invlist.tid}</td>
														<td>${Invlist.pdescription}</td>
														<td><a
															href="${pageContext.request.contextPath}/backstage/Store/delectByid.action?id=${Invlist.id}">删除</a>

															<a
															href="${pageContext.request.contextPath}/backstage/Store/update.action?id=${Invlist.id}">修改</a>
														</td>
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
					<!-- 添加栏目结束 -->
					<tr>
						<td height="40" colspan="4">
							<table width="100%" height="40px" border="0" cellpadding="0"
								cellspacing="0">
								<tbody>
									<tr>
										<td width="25%"></td>
										<td><label>第${page.currentPage}/${page.totalPage}页
												共${page.totalRows}条</label></td>
										<td><a href="/backstage/Store/init.do?currentPage=0">首页</a>
											<a
											href="/backstage/Store/init.do?currentPage=${page.currentPage-1}"
											onclick="return checkFirst()">上一页</a> <a
											href="/backstage/Store/init.do?currentPage=${page.currentPage+1}"
											onclick="return checkNext()">下一页</a></td>
										<td><a
											href="/backstage/Store/init.do?currentPage=${page.totalPage}">尾页</a>
											跳转到: <input type="text" style="width: 30px" id="turnPage" />页
											<input type="button" onclick="startTurn()" value="跳转" /></td>
										<td width="25%"></td>
									</tr>
								</tbody>
							</table>
						</td>
					</tr>
					<tr>
						<td height="40" colspan="4">
							<table width="100%" height="1" border="0" cellpadding="0"
								cellspacing="0" bgcolor="#CCCCCC">
								<tr>
									<td></td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td width="2%">&nbsp;</td>
						<td width="51%" class="left_txt"><img
							src="/resources/backstage/Images/icon_mail.gif" width="16"
							height="11"> 客户服务邮箱：rainman@foxmail.com<br /> <img
							src="/resources/backstage/Images/icon_phone.gif" width="17"
							height="14"> 官方网站：<a href="http://h2design.taobao.com/"
							target="_blank">氢设计</a></td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
				</table>
			</td>
			<td background="/resources/backstage/Images/mail_right_bg.gif">&nbsp;</td>
		</tr>
		<!-- 底部部分 -->
		<tr>
			<td valign="bottom"
				background="/resources/backstage/Images/mail_left_bg.gif"><img
				src="/resources/backstage/Images/buttom_left.gif" width="17"
				height="17" /></td>
			<td background="/resources/backstage/Images/buttom_bgs.gif"><img
				src="/resources/backstage/Images/buttom_bgs.gif" width="17"
				height="17"></td>
			<td valign="bottom"
				background="/resources/backstage/Images/mail_right_bg.gif"><img
				src="/resources/backstage/Images/buttom_right.gif" width="16"
				height="17" /></td>
		</tr>
	</table>

	<center>
		<div style="width: 100%; height: 250px;" id="pviews"></div>
	</center>

	<script type="text/javascript" src="/resources/backstage/Js/statisticsProduct.js"></script>
	<script type="text/javascript">
     
     $(document).on('click',".d",function(){
    	 var trId=$(this);
    	 var trHtmls='';
    	 var titles = '商品编号为:'+trId.attr("p")+'的商品销售情况';
			var legends = "销售量";
			var documentsId = 'pviews';
			var col='#0E4ACC';
			$.ajax({
				type:"get",
				url:'/backstage/statistics/products/pViewInfo?id='+trId.attr("p"),
				success:function(data){
					//返回数据
					var xnames = getDates(data.pViewInfo);
					var numbers = getSumNum(data.pViewInfo);
					setTypeOptionX('件',titles, legends, xnames, numbers,documentsId,col);
				},
				error : function() {
					alert("网络错误无法获取数据");
				}
			})
     })
     
     
     
     
     
     
    function checkFirst(){
         if(${page.currentPage>1}){
           return true;
         }
         alert("已到页首,无法加载更多");
        
       return false;
    }
    
    function checkNext(){
    if(${page.currentPage<page.totalPage}){
      return true;
    }
    alert("已到页尾，无法加载更多页");
    return false;
    }
     
    function startTurn(){
    var turnPage=document.getElementById("turnPage").value;
    if(turnPage>${page.totalPage}){
      alert("对不起已超过最大页数");
      return false;
    }
    var shref="init.do?currentPage="+turnPage; 
    window.location.href=shref;
 } 
</script>

	<script type="text/javascript">
    var data = [];
    for(var i=0;i<100;i++)
    {
        data[i] = {id:i+1,name:"jason"+(i+1),gender:"男",age:i+1,other:"备注"+i};
    }

    var cs = new table({
        "tableId":"cs_table",    //必须 表格id
        "headers":["序号","姓名","性别","年龄","备注"],   //必须 thead表头
        "data":data,         //必须 tbody 数据展示
        "displayNum": 10,    //必须   默认 10  每页显示行数
        "groupDataNum":1,     //可选    默认 10  组数
        "display_tfoot":true, // true/false  是否显示tfoot --- 默认false
        "bindContentTr":function(){ //可选 给tbody 每行绑定事件回调
            this.tableObj.find("tbody").on("click",'tr',function(e){
                return false;
                var tr_index = $(this).data("tr_index");        // tr行号  从0开始
                var data_index = $(this).data("data_index");   //数据行号  从0开始
            })
        },
        sort:true,    // 点击表头是否排序 true/false  --- 默认false
        sortContent:[
            {
                index:0,//表头序号
                compareCallBack:function(a,b){ //排序比较的回调函数
                    var a=parseInt(a.id,10);
                    var b=parseInt(b.id,10);
                    if(a < b)
                        return -1;
                    else if(a == b)
                        return 0;
                    else
                        return 1;
                }
            },
            {
                index:3,//表头序号
                compareCallBack:function(a,b){ //排序比较的回调函数
                    var a=parseInt(a.age,5);
                    var b=parseInt(b.age,5);
                    if(a < b)
                        return -1;
                    else if(a == b)
                        return 0;
                    else
                        return 1;
                }
            }
    ],
        specialRows:[
            {
                row:4,
                cssText:{
                     "color":"#FFCF17"
                }
            }
        ],
        search:true   // 默认为false 没有搜索
    });	
</script>





	<script type="text/javascript">
 var obj=document.getElementById("tb");
 for(var i=0;i<obj.rows.length;i++){  //循环表格行设置鼠标事件：丁学 http://www.cnblogs.com/dingxue
   obj.rows[i].onmouseover=function(){this.style.background="#0EF";}
   obj.rows[i].onmouseout=function(){this.style.background="";}
 }
</script>

	<script type="text/javascript">
  document.getElementById("search").addEventListener("keyup",function(){
	if(this.value.length>0)
	{
		document.getElementById("cls").style.visibility="visible";
		document.getElementById("cls").onclick=function()
		{
			document.getElementById("search").value="";
		}
	}else
	{
		document.getElementById("cls").style.visibility="hidden";
	}
});
</script>
</body>
</html>