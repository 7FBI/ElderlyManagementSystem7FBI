<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link rel="stylesheet" type="text/css"
	href="/resources/front/css/normalize.css" />
	<link rel="stylesheet" href="/resources/front/css/shouye.css">
	
<script type="text/javascript" src="/resources/front/js/jquery.1.8.2.min.js"></script>
<script src="/resources/front/js/common.js" type="text/javascript"
	charset="utf-8"></script>
<script type="text/javascript">
	$(document).ready(function() {
		var showproduct = {
			"boxid" : "showbox",
			"sumid" : "showsum",
			"boxw" : 400,//宽度,该版本中请把宽高填写成一样
			"boxh" : 400,//高度,该版本中请把宽高填写成一样
			"sumw" : 60,//列表每个宽度,该版本中请把宽高填写成一样
			"sumh" : 60,//列表每个高度,该版本中请把宽高填写成一样
			"sumi" : 7,//列表间隔
			"sums" : 5,//列表显示个数
			"sumsel" : "sel",
			"sumborder" : 1,//列表边框，没有边框填写0，边框在css中修改
			"lastid" : "showlast",
			"nextid" : "shownext"
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

				<img src="/fbiImage${product.producturl}" width="400" height="400" />
				<c:forEach items="${photoUrl}" var="Urlphotos">
					<img src="/fbiImage${Urlphotos}" width="400" height="400" />
				</c:forEach>
			</div>
			<!--展示图片盒子-->
			<div id="showsum">
				<!--展示图片里边-->
			</div>
			<p class="showpage">
				<a href="javascript:void(0);" id="showlast"> < </a> <a
					href="javascript:void(0);" id="shownext"> > </a>
			</p>
		</div>
		<!--content -->
		<div class="tb-property">
			<div class="tr-nobdr">
				<h3>${product.pname}</h3>
			</div>
			<div class="txt">
				<span class="nowprice">￥<a href="">${groupbuying.groupprice*product.price}</a></span>
				<div class="cumulative">
					<span class="number ty1">累计售出<br /> 
					<em id="add_sell_num_363">${shoppingcart}</em></span> <span
						class="number tyu">累计评价<br /> <em id="countOp">0</em></span>
				</div>
			</div>
			<div class="txt-h">
				<span class="tex-o">分类</span>
				<ul class="glist" id="glist"
					data-monitor="goodsdetails_fenlei_click">
					<li><a title="${product.productscolor}" href="">${product.productscolor}</a></li>
					<li><a title="${product.size}" href="">${product.size}</a></li>
					<!--<li><a title="红色36g" href="">红色36g</a></li>
                        			<li><a title="蓝色16g" href="">红色36g</a></li>-->
				</ul>
			</div>
			<script>
				$(document).ready(function() {

					var t = $("#text_box");

					$('#min').attr('disabled', true);

					$("#add").click(function() {
						t.val(parseInt(t.val()) + 1)
						if (parseInt(t.val()) != 1) {
							$('#min').attr('disabled', false);
						}

					})
					$("#min").click(function() {
						t.val(parseInt(t.val()) - 1);
						if (parseInt(t.val()) == 1) {
							$('#min').attr('disabled', true);
						}

					})
				});
			</script>
			<div class="gcIpt">
				<span class="guT">数量</span> 
				<input id="min" name="" type="button" value="-" /> 
				<input type="hidden" value="${product.id }" id="nowpids" />
					<input id="text_box" name="" type="text" value="1" style="width: 30px; text-align: center; color: #0F0F0F;" /> 
					<input id="add" name="" type="button" value="+" /> <span class="Hgt">库存（${product.count}）</span>
			</div>
			<div class="nobdr-btns">
				<button class="addcart hu">
					<img src="/resources/front/images/ht.png" width="25" height="25" />参与团购
				</button>
				<!-- 加上判断 -->
				<c:if test="${groupbuying.grouppeople<total}">
					<button id="shopadd" class="addcart yhtyu">立即购买</button>
				</c:if>
				<c:if test="${groupbuying.grouppeople>=total}">
					<button id="shopadd" class="addcart hui">立即购买</button>
				</c:if>
			</div>
			<div class="guarantee">
				<span>邮费：包邮&nbsp;&nbsp;支持货到付款 <a href=""><img
						src="/resources/front/images/me.png" /></a></span>
			</div>
		</div>
		<!-- right -->
		<div class="extInfo">
			<div class="baty_logo">
				<p>
					有<font style="color: red;" id="hasuser">${total}</font>位用户正在团购该商品
				</p>
				<div class="butt">
					<p>商品团截止时间</p>
					<span><fmt:formatDate value="${groupbuying.groupstoptime}"
							pattern="yyyy-MM-dd HH:mm:ss" /></span>
				</div>
			</div>
		</div>
	</div>
	<!-- 参加团购提示 -->
	<div id="confirmDouble" class="mod_layer"
		style="margin-top: -99px; margin-left: -180px;">
		<div class="mod_layer_hd">
			<i class="close_ico" data-mpopup-close=""></i>
		</div>
		<div class="mod_layer_bd">
			<i class="js_hinter_ico suc_ico"></i>
			<div class="prompt_txt J_get_status">参与成功</div>
		</div>
		<div class="mod_layer_ft">
			<a class="layer_btn J_close_text" href="#">继续浏览</a>
		</div>
	</div>
	<div id="confirmBuy" class="mod_layer"
		style="margin-top: -99px; margin-left: -180px;">
		<div class="mod_layer_hd">
			<i class="close_ico" data-mpopup-close=""></i>
		</div>
		<div class="mod_layer_bd">
			<i class="fail_ico js_hinter_ico "></i>
			<div class="prompt_txt J_get_status">参与失败</div>
			<div class=""
				style="text-align: center; margin-left: 30px; color: red; margin-top: 20px;">你可能已经参与了该商品的团购</div>
		</div>
		<div class="mod_layer_ft">
			<a class="layer_btn J_close_text" href="#">继续浏览</a>
		</div>
	</div>
	<!-- 推荐搭配 -->
	<div class="gdetail">
		<div class="dp_wrap_title">折扣爆款</div>
		<div class="dp_wrap">
			<!-- 结算 -->
			<div class="dq_total_wrap">
				<div class="icon_equal">=</div>
				<div class="dp_num">
					<p class="num_pp">
						已经选择<span id="discountNum">0</span>个折扣
					</p>
					<p class="dq_price">
						总计:￥<span id="discountMoney">${discountone.discountprice*product.price}</span>元
					</p>
					<button class="get">加入购物车</button>
				</div>
			</div>
			<!-- 搭配1 -->
			<div class="dq_ori">
				<a class="dq_ori_prd" href="#">
				<input id="firstP" type="hidden" value="${discountone.pid}" />
				<img src="/fbiImage${discountone.producturl}" /></a> <a class="ori_prd" href="#">${discountone.pname}（${discountone.productscolor}）</a>
				<p class="ori_prd dp_wrap_pprice_ori">
					￥<span class="dp_wrap_pprice">${discountone.discountprice*discountone.price}</span>
				</p>
			</div>
			<div class="scroll_wrap">
				<!-- 搭配2 -->
				<c:forEach items="${discount}" var="discounts">
					<div class="dp_prd">
						<div class="icon_plus">+</div>
						<div class="dp_p_wrap">
							<a class="dp_wrap_pimg" href="" target="_blank"><img
								src="/fbiImage${discounts.producturl}" /></a> <a class="dp_wrap_pname"
								href="" target="_blank">${discounts.pname}&nbsp${discounts.productscolor}</a>
							<p class="dp_wrap_pprice">
								<label> 
								<input class="chexkbox" type="checkbox" name="checkbox${discounts.id}" data-price="${discounts.discountprice}"
									value="${discounts.pid}"><span>${discounts.discountprice*discounts.price}</span>享${discounts.discountprice*10}折优惠价
								</label>
							</p>
						</div>
					</div>
				</c:forEach>
				<!-- 产品结束 -->
			</div>
		</div>
	</div>

	<!-- 商品介紹 -->
	<div class="gdetail">
		<!-- left -->
		<div class="aside">
			<h3>
				看了还看<span></span>
			</h3>
			<c:forEach items="${commoditys}" var="commoditys">
				<dl class="ac-mod-list">
					<dt>
						<a href="/front/products/selectProductDetailByPrimaryKey?id=${commoditys.id}"><img
							src="${commoditys.producturl}" /></a>
					</dt>
					<dd>
						${commoditys.productstype2}+${commoditys.pname} <span>￥${commoditys.price}</span>
					</dd>
				</dl>
			</c:forEach>
			
		</div>
		<!-- right -->
		<script>
			var detail = document.querySelector('.detail');
			var origOffsetY = detail.offsetTop;
			function onScroll(e) {
				window.scrollY >= origOffsetY ? detail.classList.add('sticky'): detail.classList.remove('sticky');
			}
			document.addEventListener('scroll', onScroll);
		</script>
		<div class="detail">
			<div class="active_tab" id="outer">
				<ul class="act_title_left" id="tab">
					<li class="act_active"><a href="#">规格参数</a></li>
					<li><a href="#">商品介绍</a></li>
					<li><a href="#">商品评价</a></li>
					<li><a href="#">售后保障</a></li>
				</ul>
				<div class="clear"></div>
			</div>
			<div id="content" class="active_list">
				<!--0-->
				<div id="ui-a" class="ui-a">
					<ul style="display: block;">
						<li>商品名称：${product.pname}</li>
						<li>商品编号：</li>
						<li>品牌</li>
						<li>上架时间：</li>
						<li>商品毛重：</li>
						<li>库存：${product.count}</li>
						<c:forEach items="${photoUrl}" var="Urlphotos">
							<li><img src="${Urlphotos}" /></li>
						</c:forEach>
					</ul>
				</div>
				<!--商品规格-->
				<div id="bit" class="bit">
					<ul style="display: none;">
						<li>商品名称：${product.pname}</li>
						<li>商品大小(尺寸)：${product.pname}</li>
						<li>商品颜色：${product.productscolor}</li>
						<li>商品品牌：${product.productstype1}</li>
						<li>商品：${product.productstype2}</li>
						<li>商品库存：${product.count}</li>
						<li><img src="${product.producturl}" /></li>
					</ul>
				</div>

				<!--商品评价-->
				<div id="ui-c" class="tabs_content evaluate_wrap cur">
					<ul class="evaluate_tab_content" style="display: none;">
						<div class="evaluate_inner">
							<div class="J_comment_main">
								<div class="evaluate_score_box">
									<h4>总体评分</h4>
									<div class="score_box">
										<div class="star_box" style="margin-top: 12px;">
											<div id="scoreBox" class="star_box_light"
												style="width: 23.2px;"></div>
										</div>
										<div class="comment_tip" style="margin-top: 10px;">
											评分:<label style="color: red;" id="stars">3</label>分
										</div>
									</div>
								</div>

								<div class="comment_tip">
									<!-- 总评价量:<input id="countOp" style="border: none;" value="0" /> -->
									|总页数:<input id="pageCountOp" style="border: none;" value="0" />
								</div>
							</div>
							<div id="commentList" class="evaluate_list_box">

								<div class="list_box" style="background: #F2F2F2"
									id="opinionsDiv"></div>
							</div>
							<!-- 评论分页 -->
							<div class="rate_page" style="margin-bottom: 40px;">
								<!-- 翻页功能 -->
								<div class="pagination">
									<div class="pagination_inner">
										<div class="paginator">
											<button id="addOpinoinsBtn" value="0" class="page-start"
												style="width: 480px">获取更多评论</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</ul>

				</div>


				<!--售后保障-->
				<div id="uic" class="uic">
					<ul style="display: none;">
						<p>商品名称：仙人指路道镜前后双录智能后视镜导航仪行车记录仪后视预警一体机</p>
						<p>商品编号：ECS001983</p>
						<p>品牌:威力马哈国产</p>
						<p>上架时间：2016-05-24</p>
						<span><img src="" /></span>
						<span><img src="" /></span>
					</ul>
				</div>
			</div>
			<script>
				$(function() {
					window.onload = function() {
						var $li = $('#tab li');
						var $ul = $('#content ul');

						$li.mouseover(function() {
							var $this = $(this);
							var $t = $this.index();
							$li.removeClass();
							$this.addClass('act_active');
							$ul.css('display', 'none');
							$ul.eq($t).css('display', 'block');
						});
					}
				});
			</script>
		</div>
	</div>
	<script type="text/javascript">
		$(document).on('click', '.chexkbox', function() {
			var chekbox = $(this);
			var dp_num = $('.num_pp').find("span");
			var numprice = $(".dq_price").find("span");
			var price = numprice.text();
			var kiu = price.substring(1, price.length);
			if (chekbox.attr("checked")) {
				dp_num.text(parseInt(dp_num.text()) + 1);
				var gui = parseFloat(kiu) + parseFloat(chekbox.next().text());
				numprice.text("￥" + gui.toFixed(2));
			} else {
				dp_num.text(parseInt(dp_num.text()) - 1);
				var gui = kiu - chekbox.next().text();
				numprice.text("￥" + gui.toFixed(2));
			}
		})
		$(document).on('click', '.close_ico', function() {
			var ico = $(this);
			var prent = ico.parent().parent();
			prent.removeClass('showtime');
		})
		$(document).on('click', '.layer_btn', function() {
			var ico = $(this);
			var prent = ico.parent().parent();
			prent.removeClass('showtime');
		})
		$(document).on('click', '.hui', function() {
			alert("亲 团购人数不足 无法购买")
		})
		/*  参与团购 */
		$('.hu').on('click',function() {
								$.ajax({
										type : 'post',
										url : '/front/groupbuying/insertGroupbuyings.action?gid=${groupbuying.id}',
										success : function(data) {
											if (data == "ture") {
												var sucess = $('#confirmDouble');
												var conutIt = $(".baty_logo").find("font");
												conutIt.text(Number(conutIt.text()) + 1);
												sucess.addClass('showtime');
												var users=$("#hasuser");
												var ut=users.text();
												users.text(parseInt(ut)+1);
											} else if (data == "false") {
												alert("亲 没有登录不了参与团购！");
												window.location.href="/gotoFront/login";
											} else if (data == "again") {
												var hsiba = $('#confirmBuy')
												hsiba.addClass("showtime");
											}
										},
										error : function() {
											alert("网络错误")
										}

									})

						})
		/*立即购买 */
		$(document).on('click','.yhtyu',function() {
							var mun = $('#text_box').val();
							var product = '${product.id}';
							var price = '${groupbuying.groupprice}';
							if (hui != null) {
								window.location.href = "/front/orders/addGroupOrders?pid="+product+"&num="+mun;
										
							} else if (hui == null) {
								alert("亲 还没有登录呢？")
							}
						});
		
		
		
		
		
		
		
		
		
		/* 评论addOpinoinsBtn */

		$(document).ready(function() {
			getOpinionsAjax();
		})

		$("#addOpinoinsBtn").mouseenter(function() {
			var v = $("#addOpinoinsBtn");
			//alert(parseInt(v.val())+1);
			var pag = $("#pageCountOp").val();
			if (v.val() < pag) {
				getOpinionsAjaxPage(parseInt(v.val()) + 1);
				v.val(parseInt(v.val()) + 1);
			} else {
				v.text("已经没有跟多了");
			}
		})

		//有page
		function getOpinionsAjaxPage(page) {
			var x = $("#scoreBox");
			var p = $("#nowpids").val();
			var st = $("#stars");
			$.ajax({
						type : 'get',
						url : '/front/opinions/opinionsList?pid=' + p
								+ '&page=' + page,
						success : function(data) {
							var avgs = data.avg;
							x.css("width", avgs * 23.2 + "px");
							st.text(avgs);
							if (data.opinions != null) {
								var opdiv = $("#opinionsDiv");
								var dop = data.opinions;
								for ( var k in dop) {
									var opids = dop[k].id;
									var ophtmls = '<div class="list_box_center"><div class="comment_wrap"><p name="opinionsCount" style="margin-left: 5PX;font-size:18px;" class="list_comment">'
											+ dop[k].content
											+ '</p><div id="op'+dop[k].id+'"  style="padding: 5px" class="service_section" ></div></div></div><div class="list_box_right"><div class="comment_name">'
											+ dop[k].oldUsers.uid
											+ '评星:'
											+ dop[k].star
											+ '星</div><div class="comment_time">'
											+ dop[k].opinionstime
											+ '</div></div>';
									opdiv.append(ophtmls);
									imagesOP(dop[k].id);
								}
							}
						},
						error : function() {
							alert("网络错误,无法获取评论信息");
						}
					})
		}

		//无page
		function getOpinionsAjax() {
			var x = $("#scoreBox");
			var p = $("#nowpids").val();
			var st = $("#stars");
			$.ajax({
						type : 'get',
						url : '/front/opinions/opinionsList?pid=' + p,
						success : function(data) {
							var avgs = data.avg;
							x.css("width", avgs * 23.2 + "px");
							st.text(avgs);
							$("#countOp").text(data.counts);
							$("#pageCountOp").val(data.count);
							if (data.opinions != null) {
								var opdiv = $("#opinionsDiv");
								var dop = data.opinions;
								for ( var k in dop) {
									var opids = dop[k].id;
									var ophtmls = '<div class="list_box_center"><div class="comment_wrap"><p name="opinionsCount" style="margin-left: 5PX;font-size:18px;" class="list_comment">'
											+ dop[k].content
											+ '</p><div id="op'+dop[k].id+'"  style="padding: 5px" class="service_section" ></div></div></div><div class="list_box_right"><div class="comment_name">'
											+ dop[k].oldUsers.uid
											+ '评星:'
											+ dop[k].star
											+ '星</div><div class="comment_time">'
											+ dop[k].opinionstime
											+ '</div></div><br/>';
									opdiv.append(ophtmls);
									imagesOP(dop[k].id);
								}
							}
						},
						error : function() {
							alert("网络错误,无法获取评论信息");
						}
					})
		}

		function imagesOP(opids) {
			$
					.ajax({
						url : '/front/opinions/remarkList?opid=' + opids,
						success : function(rms) {
							if (rms != null) {
								for ( var i in rms) {
									$('#op' + opids)
											.append(
													'&nbsp;<img width="90px;" height="90px;" src="/fbiImage'+rms[i].remarkurl+'"/>');
								}
							}
						}
					});
		}
		
		
		
		$(document).on('change',".get",function(){
			var carts=getCkbox();
			$.ajax({
				type:'post',
				url:'/front/shoppingCart/addCart',
				dataType:"json",
				contentType : "application/json;charset=UTF-8",
				data:JSON.stringify(products),
				success:function(data){
					if (data=="true") {
						window.location.href="/front/shoppingCart/selectproducts.action";
					} else {
						window.location.href="/gotoFront/login";
					}
				},
				error:function(){
					alert("网络错误,无法添加到购物车");
				}
			})
			
		});
		
		function getCkbox() {
			var ckbox=$("input[type='checkbox']");
			var fp=$("#firstP");
			var carts=new Array();
			carts[0]={
					pid:fp.val(),
					cartcount:1
			};
			var x=1;
			ckbox.each(function (i,e) {
				if ($(e).is(":checked")) {
					/* $(e).prop("checked",true); */
					var p=$(e).val();
					carts[x]={
							pid:p,
							cartcount:1
					};
					x++;
				}
			});
			return carts;
		}
		
		
		
	</script>
</body>
</html>