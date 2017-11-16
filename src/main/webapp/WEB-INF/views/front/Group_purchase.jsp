<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="/resources/front/css/common_dd94d7a.css" rel="stylesheet"  type="text/css">
 <script src="js/dc.js" async type="text/javascript"></script>
 <script src="js/jquery.js" type="text/javascript"></script>
 <script src="js/base_8aebc17.js" type="text/javascript"></script>
<title>团购商城</title>
</head>
<body>
<!-- header -->
<!-- main -->
<main id="main">
 <c:forEach items="${toali}" var="toalis">
	<div class="index-floor">
		<h2 class="index-floor-title">
			<i class="meishi"></i><a class="meishi" href="http://beijing.lashou.com/cate/meishi">${toalis.classname }</a>
		</h2>
	 <div class="index-goods-list cl">
		     <c:forEach items="${Groupbuyings}" var="Groupbuyings">	
		     <c:if test="${Groupbuyings.getProducts().tid==toalis.id}">	 
				<div class="index-goods"> 
				<a class="index-goods-img" href="" target="_blank">
					<img class="dynload"  src="${Groupbuyings.getProducts().producturl}" alt="${Groupbuyings.getProducts().pname}">
											<span class="index-goods-place">${Groupbuyings.getProducts().pname}</span>
										<span class="goods-mark">
																			<em class="merger iepng"></em>
																	</span>
				</a>
									<h3>
						<a class="index-goods-name" href="" target="_blank" title="${Groupbuyings.getProducts().pname}">${Groupbuyings.getProducts().pname}</a>
						<a class="index-goods-text" href="" target="_blank" title="${Groupbuyings.getProducts().pdescription}">${Groupbuyings.getProducts().pdescription}</a>
					</h3>
					<div class="index-goods-info">
							                        <span class="price"><em>¥</em>${Groupbuyings.getGroupbuying().groupprice}</span>
	                        <span class="money">¥<del>${Groupbuyings.getProducts().price}</del></span>
	                        <span class="number">团购人数<i>${Groupbuyings.getGroupbuying().grouppeople}</i></span>                        					</div>
							</div>
							</c:if> 	
			</c:forEach>			
	    </div>
	</div>
</c:forEach>
</main>
<!-- main end -->
<script src="js/ga_751f342.js" type="text/javascript"></script>
<script src="js/autocomplete_eb18b81.js" type="text/javascript"></script>
<script src="js/slider_f195ce1.js" type="text/javascript"></script>
<script src="js/catenav_454c784.js" type="text/javascript"></script>
<script src="js/common_26fc9e5.js" type="text/javascript"></script>
<script src="js/index_10b1345.js" type="text/javascript"></script>
<script src="js/countdown_96b1b14.js" type="text/javascript"></script>

<script type="text/javascript">
    $(function () {
        $('a[tracknum]').live('click', function () {
            var pos = $(this).attr('tracknum');
            if (pos) { document.cookie = "pos=" + pos + ";path=/;domain=.lashou.com"; }
        });
        $('input.filter-but[tracknum]').live('click', function () {
            var pos = $(this).attr('tracknum');
            if (pos) { document.cookie = "pos=" + pos + ";path=/;domain=.lashou.com"; }
        });
    });
</script>



<script type="text/javascript">
$(function() {
    var firstOrNo = '';
    if (firstOrNo == 1) {
        indexQrcodeDelay();
    } else{
        indexQrcode();
    }
});
</script>
</body>
</html>