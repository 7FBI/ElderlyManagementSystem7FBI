<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>查看商品分类</title>  
<link rel="stylesheet" type="text/css" href="resources/ProductsAdmin/css/king-table.css">
<script type="text/javascript" src="resources/ProductsAdmin/js/jquery-1.7.2.min.js"></script> 
<script type="text/javascript" src="/resources/ProductsAdmin/js/king-table.js"></script> 
<style>
 *:focus {outline:none; }
 #baidu{height:35px;margin-top:18px;margin-left:20px;}
#baidu .input{border:1px solid #999999;height:100%;}
#baidu .input .clear{width: 30px;height: 35px;line-height: 30px;text-align: center;cursor: pointer;opacity: 0.8;color:gray;}
#baidu input[type=text]{height:86%;border:0px;width: 250px;}
#baidu div{float: left;}
#baidu .ft{width: 100px;height: 35px;background: #3385ff;color: #fff;border: none;}
.table_fit{width:90%;height:460px;margin:20px auto;position:relative;border:1px;}
 #tb{width:1000px;border-collapse:collapse;border:1px solid #EEE;font-size:14px;margin:10px auto;} 
 #tb th{background:#EEE;border-bottom:1px solid #CCC;padding:4px;}
 #tb td{border:1px solid #EEE;padding:4px;}
  
</style>
 
</head>
<body>
 <div id="baidu">
  <div class="input">
  <form action="${pageContext.request.contextPath }/Store/QuertByname.action" method="post" >
  <input type="text" class="span2" id="search" name="pname">
  <span class="clear" id="cls">X</span>
  <input type="submit" value="查询商品名" class="ft"> 
 </form>
  </div>
  </div>
 

 <table id="tb"  >
   <thead>
  <tr> 
  <th>产品名称</th>
  <th>产品尺寸 </th>
  <th>产品颜色 </th>
  <th>产品价格 </th>
  <th>产品余量 </th>
  <th>产品描述 </th>
  </tr>
  </thead>
  <tbody>
 <c:forEach items="${products1 }" var="products1">
 <tr>
  <td>${products1.pname}</td>
  <td>${products1.size}</td>
  <td>${products1.productscolor}</td>
  <td>${products1.price}</td>
  <td>${products1.count}</td>
  <td>${products1.pdescription}</td>
  <td><a href="${pageContext.request.contextPath}/Store/delectByid.action?id=${products1.id}">删除</a></td>
  <td><a href="${pageContext.request.contextPath}/Store/update.action?id=${products1.id}">修改</a></td>
  </tr>
 </c:forEach> 
 </tbody>
 <tfoot>
 <tr>
 <td colspan="7" class="paging">
 <span>公  多少条数据</span>
 <span>第1页/10页</span>
 <a href="#1">首页</a>
 <a href="#2">下一页</a>
 <a href="#">尾页</a>
 <input type="text" class="search-txt">
 <input type="button" value="搜索" class="search-btn">
 </td>
 </tr>
 </tfoot>
 </table>
<hr>
<table id="cs_table2" class="data-table"></table>
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