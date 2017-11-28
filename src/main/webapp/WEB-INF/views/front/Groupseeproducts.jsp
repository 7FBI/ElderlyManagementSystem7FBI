<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link rel="stylesheet" type="text/css" href="/resources/front/css/normalize.css"/>
<script type="text/javascript" src="/resources/front/js/jquery.1.8.2.min.js"></script>
<script src="/resources/front/js/common.js" type="text/javascript" charset="utf-8"></script>
 <script type="text/javascript">
 $(document).ready(function(){
	  var showproduct = {
		  "boxid":"showbox",
		  "sumid":"showsum",
		  "boxw":400,//宽度,该版本中请把宽高填写成一样
		  "boxh":400,//高度,该版本中请把宽高填写成一样
		  "sumw":60,//列表每个宽度,该版本中请把宽高填写成一样
		  "sumh":60,//列表每个高度,该版本中请把宽高填写成一样
		  "sumi":7,//列表间隔
		  "sums":5,//列表显示个数
		  "sumsel":"sel",
		  "sumborder":1,//列表边框，没有边框填写0，边框在css中修改
		  "lastid":"showlast",
		  "nextid":"shownext"
		  };//参数定义	  
	 $.ljsGlasses.pcGlasses(showproduct);//方法调用，务必在加载完后执行
 });
 </script>
</head>
<body>
 <!-- 头部 -->
 <jsp:include page="Self_header.jsp" />
 <!-- 主要内容 -->
 <div class="showall">
                    <!--left -->
	                <div class="showbot">
                    <div id="showbox">
                    
                        <img src="${product.producturl}" width="400" height="400" />
                        <c:forEach items="${photoUrl}" var="Urlphotos">
                        <img src="${Urlphotos}" width="400" height="400" />
                        </c:forEach> 
                    </div><!--展示图片盒子-->
                        <div id="showsum">
                        	<!--展示图片里边-->
                        </div>
                        <p class="showpage">
                            <a href="javascript:void(0);" id="showlast"> < </a>
                            <a href="javascript:void(0);" id="shownext"> > </a>
                        </p>
                        </div>
                 <!--content -->
                        <div class="tb-property">
                        	<div class="tr-nobdr">
                        		<h3>${product.pname}</h3>
                        	</div>
                        		<div class="txt">
                        			<span class="nowprice">￥<a href="">${groupbuying.groupprice}</a></span>
                        			<div class="cumulative">
                        				<span class="number ty1">累计售出<br /><em id="add_sell_num_363">370</em></span>
                        				<span class="number tyu">累计评价<br /><em id="add_sell_num_363">25</em></span>
                        			</div>
                        		</div>
                        	<div class="txt-h">
                        		<span class="tex-o">分类</span>
                        		<ul class="glist" id="glist" data-monitor="goodsdetails_fenlei_click">
                        			<li><a title="${product.productscolor}" href="">${product.productscolor}</a></li>
                        			 <li><a title="${product.size}" href="">${product.size}</a></li>
                        		     <!--<li><a title="红色36g" href="">红色36g</a></li>
                        			<li><a title="蓝色16g" href="">红色36g</a></li>-->
                        		</ul>
                        	</div>
                        	<script>
                        	$(document).ready(function(){
                        	 
                          	var t = $("#text_box");
                        	 
                        	$('#min').attr('disabled',true);
                             
                            	$("#add").click(function(){    
                               	 t.val(parseInt(t.val())+1)
                               	 if (parseInt(t.val())!=1){
                                   	 $('#min').attr('disabled',false);
                                	}
      
                           	 }) 
                            	//�������ٲ���
                            	$("#min").click(function(){
                                	t.val(parseInt(t.val())-1);
                                	if (parseInt(t.val())==1){
                                   	 $('#min').attr('disabled',true);
                                	}
      
                            	})  
                        	});
                        	</script>  
                        	<div class="gcIpt">
                        		<span class="guT">数量</span>
                        		<input id="min" name="" type="button" value="-" />  
                        		<input id="text_box" name="" type="text" value="1"style="width:30px; text-align: center; color: #0F0F0F;"/>  
                        		<input id="add" name="" type="button" value="+" />
                        		<span class="Hgt">库存（${product.count}）</span>
                        	</div>
                        	<div class="nobdr-btns">
                        		<button class="addcart hu"><img src="/resources/front/images/ht.png" width="25" height="25"/>参与团购</button>
                        		<c:if test="${groupbuying.grouppeople>=10}">
                        		<button class="addcart .yh">立即购买</button>
                        		</c:if>
                        		<c:if test="${groupbuying.grouppeople<10}">
                        		<button class="addcart hui">立即购买</button>
                        		</c:if>
                        	</div>
                        	<div class="guarantee">
                        		<span>邮费：包邮&nbsp;&nbsp;不支持货到付款 <a href=""><img src="/resources/front/images/me.png"/></a></span>
                        	</div>
                        </div>
                 <!-- right -->
                 <div class="extInfo">
                 <div class="baty_logo">
                 <p>有<font style="color:red;">25</font>位用户正在团购该商品</p>
                 <div class="butt">
                 <p>商品团截止时间</p>
                 <span><fmt:formatDate value="${groupbuying.groupstoptime}" pattern="yyyy-MM-dd HH:mm:ss"/></span>
                 </div>
                 </div>
                 </div>
 </div>
 <!-- 推荐搭配 -->
  <div class="gdetail">
                	<div class="dp_wrap_title">
                		折扣爆款
                	</div>
                	<div class="dp_wrap">
                		<!-- 结算 -->
                		<div class="dq_total_wrap">
                			<div class="icon_equal">
                				=
                			</div>
                			<div class="dp_num">
                			    <p class="num_pp">已经选择<span>1</span>个折扣</p>
                				<p class="dq_price">总计<span>￥${discountone.discountprice}</span>元</p>
                				<button class="get">加入购物车</button>
                			</div>
                		</div>
                		<!-- 搭配1 -->
                		<div class="dq_ori">
                			<a class="dq_ori_prd" href=""><img src="${discountone.producturl}"/></a>
                			<a class="ori_prd" href="">${discountone.pname}（${discountone.productscolor}）</a>
                			<p class="ori_prd dp_wrap_pprice_ori">￥<span class="dp_wrap_pprice">${discountone.discountprice}</span></p>
                		</div>
                		<div class="scroll_wrap">
                			<!-- 搭配2 -->
                			 <c:forEach items="${discount}" var="discounts">
                			 <div class="dp_prd">
                				<div class="icon_plus">+</div>
                				<div class="dp_p_wrap">
                					<a class="dp_wrap_pimg" href="" target="_blank"><img src="${discounts.producturl}"/></a>
                					<a class="dp_wrap_pname" href="" target="_blank">${discounts.pname}&nbsp${discounts.productscolor}</a>
                					<p class="dp_wrap_pprice">
                					<label>
                					<input class="chexkbox" type="checkbox" name="checkbox+${discounts.id}" data-price="${discounts.discountprice}" value="${discounts.pid}">
                					￥<span>${discounts.discountprice}</span>
                					</label>
                					</p>
                				</div>
                			</div>
                			</c:forEach>
                			<!--搭配3
                			<div class="dp_prd">
                				<div class="icon_plus">+</div>
                				<div class="dp_p_wrap">
                					<a class="dp_wrap_pimg" href="" target="_blank"><img src="images/hdy_09.png"/></a>
                					<a class="dp_wrap_pname" href="" target="_blank">亿连方控-智能安全驾驶控制器 时尚版</a>
                					<p class="dp_wrap_pprice">
                					<label>
                					<input type="checkbox" data-price="199" data-item="570b1b2f5efb114c378b4575">
                					￥199
                					</label>
                					</p>
                				</div>
                			</div>
                			搭配4
                			<div class="dp_prd">
                				<div class="icon_plus">+</div>
                				<div class="dp_p_wrap">
                					<a class="dp_wrap_pimg" href="" target="_blank"><img src="images/list_03.jpg"/></a>
                					<a class="dp_wrap_pname" href="" target="_blank">O2+车载空气净化器DM2</a>
                					<p class="dp_wrap_pprice">
                					<label>
                					<input type="checkbox" data-price="199" data-item="570b1b2f5efb114c378b4575">
                					￥365
                					</label>
                					</p>
                				</div>
                			</div> -->
                			<!-- 产品结束 -->
                		</div>
                	</div>
                </div> 
                    
                <!-- 商品介紹 -->                
                <div class="gdetail">
                	<!-- left -->
                	<div class="aside">
                		  <h3>看了还看<span></span></h3>
                		  <dl class="ac-mod-list">
                		  	<dt><a href=""><img src="images/hdy_09.png"/></a></dt>
                		  	<dd>
                		  		  O2+车载空气净化器DM2
                		  		  <span>￥99</span>
                		  	</dd>
                		  </dl>
                		  <dl class="ac-mod-list">
                		  	<dt><a href=""><img src="images/hdy_07.png"/></a></dt>
                		  	<dd>
                		  		  O2+车载空气净化器DM2
                		  		  <span>￥99</span>
                		  	</dd>
                		  </dl>
                		  <dl class="ac-mod-list">
                		  	<dt><a href=""><img src="images/hdy_11.jpg"/></a></dt>
                		  	<dd>
                		  		  O2+车载空气净化器DM2
                		  		  <span>￥99</span>
                		  	</dd>
                		  </dl>
                	</div>
                	<!-- right -->
                	<script>
                	var detail = document.querySelector('.detail');
var origOffsetY = detail.offsetTop;
function onScroll(e) {
window.scrollY >= origOffsetY ? detail.classList.add('sticky') :
detail.classList.remove('sticky');
}
document.addEventListener('scroll', onScroll); 
</script>
                	<div class="detail">
                		<div class="active_tab" id="outer">
													<ul class="act_title_left" id="tab">
														<li class="act_active">
															<a href="#">规格参数</a>
														</li>
														<li>
															<a href="#">商品介绍</a>
														</li>
														<li>
															<a href="#">商品评价</a>
														</li>
														<li>
															<a href="#">售后保障</a>
														</li>
													</ul>
													<!-- <ul class="act_title_right">
														<li class="mui">  
															<a id="mui-a" href="#">扫手机下单+</a>
														</li>
														<li class="mui-ac">
															<a href="#">加入购物车</a>
														</li>
													</ul> -->
													<div class="clear"></div>
												</div>
												<div id="content" class="active_list"> 
													<!--0-->
													<div id="ui-a" class="ui-a">
												        <ul style="display:block;">
												        <li>商品名称：${product.pname}</li>
												        <li>商品编号：</li>
												        <li>品牌</li>
												        <li>上架时间：</li>
												        <li>商品毛重：</li>
												        <li>库存：${product.count} </li>
												        <c:forEach items="${photoUrl}" var="Urlphotos">
												        <li><img src="${Urlphotos}"/></li>
												        </c:forEach>
												        </ul>
												   </div>
												   <!--商品规格-->
												    	<div id="bit" class="bit">
												        <ul style="display:none;">
												            <li>商品名称：${product.pname}</li>
												            <li>商品大小(尺寸)：${product.pname}</li>
												            <li>商品颜色：${product.productscolor}</li>
												            <li>商品品牌：${product.productstype1}</li>
												            <li>商品：${product.productstype2}</li>
												            <li>商品库存：${product.count}</li>
												            <li><img src="${product.producturl}"/></li>  
												       </ul>
												       </div>
												       
												 <!--商品评价-->      
												   
												    <div id="ui-c" class="ui-c">
												         <ul style="display:none;">
												         	
												         </ul>
												    </div>
												 <!--售后保障-->
												 <div id="uic" class="uic">
												         <ul style="display:none;">
												         	<p>商品名称：仙人指路道镜前后双录智能后视镜导航仪行车记录仪后视预警一体机</p>
												         	<p>商品编号：ECS001983</p>
												         	<p>品牌:威力马哈国产</p>
												         	<p>上架时间：2016-05-24</p>
												         	<span><img src=""/></span>
												            <span><img src=""/></span>
												         </ul>
												    </div>
												</div>
												<script>
													$(function(){
														window.onload = function()
														{
															var $li = $('#tab li');
															var $ul = $('#content ul');
																		
															$li.mouseover(function(){
																var $this = $(this);
																var $t = $this.index();
																$li.removeClass();
																$this.addClass('act_active');
																$ul.css('display','none');
																$ul.eq($t).css('display','block');
															})
														}
													});  
												</script>
                	             </div>
                               </div> 
<script type="text/javascript">
$(document).on('click','.chexkbox',function(){
	 var chekbox=$(this);
	 var dp_num=$('.num_pp').find("span");
	 var numprice=$(".dq_price").find("span");
	 var price=numprice.text();
	 var kiu=price.substring(1,price.length);
	 if(chekbox.attr("checked")){
		 dp_num.text(parseInt(dp_num.text())+1); 
		 var gui= parseFloat(kiu)+parseFloat(chekbox.next().text());
		  numprice.text("￥"+gui.toFixed(2));
	 }
	 else{
		 dp_num.text(parseInt(dp_num.text())-1);
		 var gui=kiu-chekbox.next().text();
		 numprice.text("￥"+gui.toFixed(2));
	 }	 
})
</script>
</body>
</html>