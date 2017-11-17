<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/resources/front/css/Cart.css">
<title>购物车</title>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link type="text/css" rel="stylesheet" href="/resources/front/css/mystyle.css">
<script type="text/javascript" src="/resources/front/js/demo.js"></script>
</head>
<body>
<div class="catbox">
	<table id="cartTable">
		<thead>
			<tr>
				<th><label><input class="check-all check" type="checkbox"/>&nbsp;全选</label></th>
				<th>商品</th>
				<th>单价</th>
				<th>数量</th>
				<th>小计</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
		 <c:forEach items="${products }" var="product">
			<tr>
				<td class="checkbox"><input class="check-one check" type="checkbox"/></td>
				<td class="goods"><img src="/resources/front/images/mfrr.gif" alt=""/><span>Casio/卡西欧 EX-TR350</span>
				</td>
				<td class="price">5999.88</td>
				<td class="count"><span class="reduce"></span><input class="count-input" type="text" value="1"/><span class="add">+</span></td>
				<td class="subtotal">5999.88</td>
				<td class="operation"><span class="delete">删除</span>
				<input class="pid" type="hidden" type="hidden" value="1">
				</td>
			</tr>
		 </c:forEach>
			<!-- <tr>
				<td class="checkbox"><input class="check-one check" type="checkbox"/></td>
				<td class="goods"><img src="images/2.jpg" alt=""/><span>Canon/佳能 PowerShot SX50 HS</span></td>
				<td class="price">3888.50</td>
				<td class="count"><span class="reduce"></span><input class="count-input" type="text" value="1"/><span class="add">+</span></td>
				<td class="subtotal">3888.50</td>
				<td class="operation"><span class="delete">删除</span></td>
			</tr>
			<tr>
				<td class="checkbox"><input class="check-one check" type="checkbox"/></td>
				<td class="goods"><img src="images/3.jpg" alt=""/><span>Sony/索尼 DSC-WX300</span></td>
				<td class="price">1428.50</td>
				<td class="count"><span class="reduce"></span><input class="count-input" type="text" value="1"/><span class="add">+</span></td>
				<td class="subtotal">1428.50</td>
				<td class="operation"><span class="delete">删除</span></td>
			</tr>
			<tr>
				<td class="checkbox"><input class="check-one check" type="checkbox"/></td>
				<td class="goods"><img src="images/4.jpg" alt=""/><span>Fujifilm/富士 instax mini 25</span></td>
				<td class="price">640.60</td>
				<td class="count"><span class="reduce"></span><input class="count-input" type="text" value="1"/><span class="add">+</span></td>
				<td class="subtotal">640.60</td>
				<td class="operation"><span class="delete">删除</span></td>
			</tr> -->
		</tbody>
	</table>
	
	<div class="foot" id="foot">
		<label class="fl select-all"><input type="checkbox" class="check-all check"/>&nbsp;全选</label>
		<a class="fl delete" id="deleteAll" href="javascript:;">删除</a>
		<div class="fr closing">结 算</div>
		<div class="fr total">合计：￥<span id="priceTotal">0.00</span></div>
		<div class="fr selected" id="selected">已选商品<span id="selectedTotal">0</span>件<span class="arrow up">︽</span><span class="arrow down">︾</span></div>
		<div class="selected-view">
			<div id="selectedViewList" class="clearfix">
				<div><img src="images/1.jpg"><span>取消选择</span></div>
			</div>
			<span class="arrow">◆<span>◆</span></span>
		</div>
	</div>

 </div> 
</body>
<script type="text/javascript" src="/resources/front/oldman/jquery.min.js"></script>
<script type="text/javascript">
 $(document).on('click','.closing',function(){
	 var products_id=[];
	 var products_num=[];
	/*  获取所有的tr */
	 var tr=$("tr")
	 for(var i=1;i<tr.length;i++){
		   if(tr.eq(i).attr('class')=="on"){
			 alert("建立了")
			 var hui=tr.eq(i).find(".pid").val();
			  
			 var find=tr.eq(i).children(".count");
			 var yui=find.children(".count-input").val();
			 var xxxx=hui;             /*  商品id  */      
			 var yyyy=yui;            /*  商品数量 */
			 products_id.push(xxxx);    
			 products_num.push(yyyy);    
		 }  
	 }
	 var toprice=$("#priceTotal").text();
	 if(products_id.length>1){
		 window.location.href="/front/orders/addOrder?pid="+products_id+"&num="+products_num+"&price"+toprice;
	 }
	 else if(products_id.length==1){
		 window.location.href="/front/orders/addOneOrder?pid="+products_id+"&num="+products_num+"&price"+toprice;
	 }
	 else{
		 alert("你没有选择你想购买的商品!")
	 }     
 })

</script>
</html>
 