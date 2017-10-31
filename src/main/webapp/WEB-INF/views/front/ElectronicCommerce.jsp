<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/front/css/style.css"  type="text/css" media="all" />
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<!-- 查找最顶级栏目  -->
<!-- 查找最顶级栏目  -->
<section id="caseslist">
  <div class="cat_title">
    <div class="wrapper"><br><br>
      <h2><strong>Shooping</strong>商城</h2>
      <p>我们的作品，他们的故事<br/>
        Our work, their stories </p>
    </div>
  </div>
  <div id="filter">
    <div class="wrapper">
      <ul>
       
        
        <li><a href="/selectAllProductsByType?tid=1" >服装城</a></li>
        
        <li><a href="/selectAllProductsByType?tid=2">美食城</a></li>
        
        <li><a href="/selectAllProductsByType?tid=3">家居电器</a></li>
        
        <li><a href="/selectAllProductsByType?tid=4">运动健身</a></li>
        
        <li><a href="/selectAllProductsByType?tid=5">寻医问药</a></li>
        
      

      </ul>
      
    </div>
  </div>
  <ul class="cases wrapper">
  
  <li class="item1"> <img src="/resources/front/uploads/131102/1-131102210430T2.png"   width="240" height="152" alt="成都城市设计研究中心" />
      <!-- <p> <strong>成都城市设计研究中心</strong> <em>行业：学校政府<br/>
        UPTATED:2013/11/02</em>成都市城市设计研究中心（英文缩写：CDUDC）是以城市设计和研究为主要方向的研究性机构，提供以城市运营为着眼点的相关咨询服务。是整合各方设计、咨询、研究资源....<br/>
        <a href="/gotoFront/EC_index"  class="btn_blue">查看品牌故事</a><a href="javascript:if(confirm('http://www.cdudc.com/  点击这里给我发送临时消息'))window.location='http://www.cdudc.com/'" tppabs="http://www.cdudc.com/" target="_blank" class="openurl" rel="external nofollow">访问品牌网站</a> </p> -->
   <a href="/gotoFront/EC_index">走呀走呀前去看看去看看</a>
   
    </li><li class="item1"> <img src="/resources/front/uploads/131102/1-13110221023AO.jpg" tppabs="http://mc18.eatdou.com/uploads/131102/1-13110221023AO.jpg"  width="240" height="152" alt="中铁二局装饰装修工程有限公" /> <strong>中铁二局装饰装修工程有限公</strong> UPTATED:2013/11/02
      <p> <strong>中铁二局装饰装修工程有限公</strong> <em>行业：学校政府<br/>
        UPTATED:2013/11/02</em> 中铁二局集团装饰装修工程有限公司为中铁二局集团有限公司的全资公司，创建于1985年，国家建筑装饰装修施工壹级企业、甲级设计单位，注册资本金壹亿元，年生产能....<br/>
        <a href="gov/21.html" tppabs="http://mc18.eatdou.com/case/gov/21.html" class="btn_blue">查看品牌故事</a> <a href="javascript:if(confirm('http://www.ztzszx.com/  点击这里给我发送临时消息'))window.location='http://www.ztzszx.com/'" tppabs="http://www.ztzszx.com/" target="_blank" class="openurl" rel="external nofollow">访问品牌网站</a> </p>
    
    </li><li class="item1"> <img src="../uploads/131102/1-13110221000L92.png" tppabs="http://mc18.eatdou.com/uploads/131102/1-13110221000L92.png"  width="240" height="152" alt="优品道控股" /> <strong>优品道控股</strong> UPTATED:2013/11/02
      <p> <strong>优品道控股</strong> <em>行业：企业官网<br/>
        UPTATED:2013/11/02</em>优品道控股」是中国具有代表性的不动产投资、发展和经营企业，致力于中国优品生活的缔造，是城市区域价值的提升者。
「优品道控股」品牌蕴含 “思于优，行由品，....<br/>
        <a href="qiye/20.html" tppabs="http://mc18.eatdou.com/case/qiye/20.html" class="btn_blue">查看品牌故事</a> <a href="javascript:if(confirm('http://www.yopindo.com/  点击这里给我发送临时消息'))window.location='http://www.yopindo.com/'" tppabs="http://www.yopindo.com/" target="_blank" class="openurl" rel="external nofollow">访问品牌网站</a> </p>
    
    </li><li class="item1"> <img src="../uploads/131102/1-131102205530Q6.png" tppabs="http://mc18.eatdou.com/uploads/131102/1-131102205530Q6.png"  width="240" height="152" alt="新象集团官方网站" /> <strong>新象集团官方网站</strong> UPTATED:2013/11/02
      <p> <strong>新象集团官方网站</strong> <em>行业：电子商务<br/>
        UPTATED:2013/11/02</em>新象建材有限公司是一家集木地板、室内装饰木门等系列装饰材料的研发设计、物流营销、售后服务为一体的专业制造商。公司始建于1999年，先后投资3.5亿元，在物质资....<br/>
        <a href="shangwu/19.html" tppabs="http://mc18.eatdou.com/case/shangwu/19.html" class="btn_blue">查看品牌故事</a> <a href="javascript:if(confirm('http://www.xxwood.com/  点击这里给我发送临时消息'))window.location='http://www.xxwood.com/'" tppabs="http://www.xxwood.com/" target="_blank" class="openurl" rel="external nofollow">访问品牌网站</a> </p>
    
    </li><li class="item1"> <img src="../uploads/131102/1-131102202025522.png" tppabs="http://mc18.eatdou.com/uploads/131102/1-131102202025522.png"  width="240" height="152" alt="成都朗鲲商务服务顾问有限公" /> <strong>成都朗鲲商务服务顾问有限公</strong> UPTATED:2013/11/02
      <p> <strong>成都朗鲲商务服务顾问有限公</strong> <em>行业：电子商务<br/>
        UPTATED:2013/11/02</em>朗鲲作为MICE的专门服务机构，自创立以来凭借专业的技能、丰富的经验、对市场敏锐的触觉及对客户需求的了解, 以最前沿的设计理念和高度的敬业精神跻身于最具竞争力....<br/>
        <a href="shangwu/18.html" tppabs="http://mc18.eatdou.com/case/shangwu/18.html" class="btn_blue">查看品牌故事</a> <a href="javascript:if(confirm('http://www.lang-kun.com/  点击这里给我发送临时消息'))window.location='http://www.lang-kun.com/'" tppabs="http://www.lang-kun.com/" target="_blank" class="openurl" rel="external nofollow">访问品牌网站</a> </p>
   
    </li><li class="item1"> <img src="../uploads/131102/1-131102201300426.png" tppabs="http://mc18.eatdou.com/uploads/131102/1-131102201300426.png"  width="240" height="152" alt="雷迪波尔" /> <strong>雷迪波尔</strong> UPTATED:2013/11/02
      <p> <strong>雷迪波尔</strong> <em>行业：企业官网<br/>
        UPTATED:2013/11/02</em>雷迪波尔企业,作为具有国际化运营与全球市场的时尚多品牌运营商，致力于向由消费者、合作伙伴、员工等组成的利益相关方及全社会,以立体整合运营模式提供品牌服饰....<br/>
        <a href="qiye/17.html" tppabs="http://mc18.eatdou.com/case/qiye/17.html" class="btn_blue">查看品牌故事</a> <a href="javascript:if(confirm('http://www.unn114.com/  点击这里给我发送临时消息'))window.location='http://www.unn114.com/'" tppabs="http://www.unn114.com/" target="_blank" class="openurl" rel="external nofollow">访问品牌网站</a> </p>
    
    </li><li class="item1"> <img src="../uploads/131102/1-131102201031320.png" tppabs="http://mc18.eatdou.com/uploads/131102/1-131102201031320.png"  width="240" height="152" alt="龙城国际" /> <strong>龙城国际</strong> UPTATED:2013/11/02
      <p> <strong>龙城国际</strong> <em>行业：企业官网<br/>
        UPTATED:2013/11/02</em>龙城国际项目位于郫县红光新城红光广场斜对面，紧邻成青快铁红光站口，今日润园别墅的北面。龙城国际项目总占地约200亩，总建筑面积达60万平米，是个 大型综合体城....<br/>
        <a href="qiye/16.html" tppabs="http://mc18.eatdou.com/case/qiye/16.html" class="btn_blue">查看品牌故事</a> <a href="javascript:if(confirm('http://www.baidu.com/  点击这里给我发送临时消息'))window.location='http://www.baidu.com/'" tppabs="http://www.baidu.com/" target="_blank" class="openurl" rel="external nofollow">访问品牌网站</a> </p>
    
    </li><li class="item1"> <img src="../uploads/131102/131102/1-131102193U1Q4.png" tppabs="http://mc18.eatdou.com/uploads/131102/131102/1-131102193U1Q4.png"  width="240" height="152" alt="建筑电气30周年" /> <strong>建筑电气30周年</strong> UPTATED:2013/11/02
      <p> <strong>建筑电气30周年</strong> <em>行业：企业官网<br/>
        UPTATED:2013/11/02</em>建筑电气杂志是经中华人民共和国新闻出版总署和中华人民共和国科学技术部（原国家科委）批准创办的全国性科技期刊，国内外公开发行，是全国建筑行业唯一推荐的综....<br/>
        <a href="qiye/15.html" tppabs="http://mc18.eatdou.com/case/qiye/15.html" class="btn_blue">查看品牌故事</a> <a href="javascript:if(confirm('http://www.jzdq.net.cn/30th/  点击这里给我发送临时消息'))window.location='http://www.jzdq.net.cn/30th/'" tppabs="http://www.jzdq.net.cn/30th/" target="_blank" class="openurl" rel="external nofollow">访问品牌网站</a> </p>
   
    </li><li class="item1"> <img src="../uploads/allimg/131102/1-1311021Z103-lp.png" tppabs="http://mc18.eatdou.com/uploads/allimg/131102/1-1311021Z103-lp.png"  width="240" height="152" alt="SK中铁" /> <strong>SK中铁</strong> UPTATED:2013/11/02
      <p> <strong>SK中铁</strong> <em>行业：学校政府<br/>
        UPTATED:2013/11/02</em>SK中铁（空间）智能化管理有限公司成立于2010年9月1日，是由韩国SK电讯与中铁二局共同投资7750万元人民币在成都成立的合资公司。智能公司官网由网页设计、成都网站制....<br/>
        <a href="gov/14.html" tppabs="http://mc18.eatdou.com/case/gov/14.html" class="btn_blue">查看品牌故事</a> <a href="javascript:if(confirm('http://www.skcregc.com/  点击这里给我发送临时消息'))window.location='http://www.skcregc.com/'" tppabs="http://www.skcregc.com/" target="_blank" class="openurl" rel="external nofollow">访问品牌网站</a> </p>
   
    </li><li class="item1"> <img src="../uploads/131102/1-1311021U52E46.png" tppabs="http://mc18.eatdou.com/uploads/131102/1-1311021U52E46.png"  width="240" height="152" alt="华商暖通" /> <strong>华商暖通</strong> UPTATED:2013/11/02
      <p> <strong>华商暖通</strong> <em>行业：企业官网<br/>
        UPTATED:2013/11/02</em>成都华商暖通设备工程有限公司成立于1998年，是西南地区最早进入暖通行业的公司之一，专业为客户提供“采暖、净水、空调、新风”四大系统集成服务。经过15年的长足....<br/>
        <a href="qiye/13.html" tppabs="http://mc18.eatdou.com/case/qiye/13.html" class="btn_blue">查看品牌故事</a> <a href="javascript:if(confirm('http://www.cdhsnt.com/  点击这里给我发送临时消息'))window.location='http://www.cdhsnt.com/'" tppabs="http://www.cdhsnt.com/" target="_blank" class="openurl" rel="external nofollow">访问品牌网站</a> </p>
    
    </li><li class="item1"> <img src="../uploads/131102/1-1311021SZNS.png" tppabs="http://mc18.eatdou.com/uploads/131102/1-1311021SZNS.png"  width="240" height="152" alt="西南财经大学" /> <strong>西南财经大学</strong> UPTATED:2013/11/02
      <p> <strong>西南财经大学</strong> <em>行业：学校政府<br/>
        UPTATED:2013/11/02</em>西南财经大学是教育部直属的国家“211工程”和“985工程”优势学科创新平台建设的全国重点大学，也是国家教育体制改革试点高校。学校始于1925年创建的上海光华大学....<br/>
        <a href="gov/10.html" tppabs="http://mc18.eatdou.com/case/gov/10.html" class="btn_blue">查看品牌故事</a> <a href="javascript:if(confirm('http://oiec.swufe.edu.cn/  点击这里给我发送临时消息'))window.location='http://oiec.swufe.edu.cn/'" tppabs="http://oiec.swufe.edu.cn/" target="_blank" class="openurl" rel="external nofollow">访问品牌网站</a> </p>
    
    </li><li class="item1"> <img src="../uploads/131102/1-1311021T604P2.png" tppabs="http://mc18.eatdou.com/uploads/131102/1-1311021T604P2.png"  width="240" height="152" alt="翡翠国际社区" /> <strong>翡翠国际社区</strong> UPTATED:2013/11/02
      <p> <strong>翡翠国际社区</strong> <em>行业：其他<br/>
        UPTATED:2013/11/02</em>劲力置业隶属于中国企业500强之一的川威集团，具有二级开发资质。 作为城市生活的建设者，劲力置业以“进化人居理想，创建人居范本”为理念。 在省内主要城市展开....<br/>
        <a href="qita/11.html" tppabs="http://mc18.eatdou.com/case/qita/11.html" class="btn_blue">查看品牌故事</a> <a href="javascript:if(confirm('http://www.fcgjsq.com/  点击这里给我发送临时消息'))window.location='http://www.fcgjsq.com/'" tppabs="http://www.fcgjsq.com/" target="_blank" class="openurl" rel="external nofollow">访问品牌网站</a> </p>
   
    </li><li class="item1"> <img src="../uploads/131102/1-1311021TZ9347.png" tppabs="http://mc18.eatdou.com/uploads/131102/1-1311021TZ9347.png"  width="240" height="152" alt="三盛·都会城" /> <strong>三盛·都会城</strong> UPTATED:2013/11/02
      <p> <strong>三盛·都会城</strong> <em>行业：企业官网<br/>
        UPTATED:2013/11/02</em>三盛地产挟强大资金实力与多年开发经验，入主龙泉经开区，全力打造三盛·都会城项目。
作为三盛地产在成都的全资开发项目，承载三盛地产在成都建立品牌的任务，....<br/>
        <a href="qiye/12.html" tppabs="http://mc18.eatdou.com/case/qiye/12.html" class="btn_blue">查看品牌故事</a> <a href="javascript:if(confirm('http://www.mix-town.com/  点击这里给我发送临时消息'))window.location='http://www.mix-town.com/'" tppabs="http://www.mix-town.com/" target="_blank" class="openurl" rel="external nofollow">访问品牌网站</a> </p>
   
    </li><li class="item1"> <img src="../uploads/131030/1-13103023093A15.png" tppabs="http://mc18.eatdou.com/uploads/131030/1-13103023093A15.png"  width="240" height="152" alt="通威食品" /> <strong>通威食品</strong> UPTATED:2013/11/01
      <p> <strong>通威食品</strong> <em>行业：其他<br/>
        UPTATED:2013/11/01</em>通威食品是大型科技型上市公司通威股份重点打造的食品产业。企业网站由四川锐狐网络建设，旗下涵盖成都新太丰农业、成都春源食品、成都水产食品、海南水产食品、....<br/>
        <a href="qita/6.html" tppabs="http://mc18.eatdou.com/case/qita/6.html" class="btn_blue">查看品牌故事</a> <a href="javascript:if(confirm('http://www.tongweifood.cn/  点击这里给我发送临时消息'))window.location='http://www.tongweifood.cn/'" tppabs="http://www.tongweifood.cn/" target="_blank" class="openurl" rel="external nofollow">访问品牌网站</a> </p>
    
    </li><li class="item1"> <img src="../uploads/131029/1-13102922154B20.png" tppabs="http://mc18.eatdou.com/uploads/131029/1-13102922154B20.png"  width="240" height="152" alt="金沙源" /> <strong>金沙源</strong> UPTATED:2013/10/30
      <p> <strong>金沙源</strong> <em>行业：企业官网<br/>
        UPTATED:2013/10/30</em>金沙源公司拥有20多年食品饮料研发、生产经验，一流的自动化生产线以及先进的食品饮料研发检测仪器，聘请了国内饮料行业的资深专家进行技术支持，科研实力一流，....<br/>
        <a href="qiye/1.html" tppabs="http://mc18.eatdou.com/case/qiye/1.html" class="btn_blue">查看品牌故事</a> <a href="javascript:if(confirm('http://www.scjsy.com/  点击这里给我发送临时消息'))window.location='http://www.scjsy.com/'" tppabs="http://www.scjsy.com/" target="_blank" class="openurl" rel="external nofollow">访问品牌网站</a> </p>
    </li>
   
  </ul>
 <div class="dede_pages">
			<ul class="pagelist">
             <li><span class="pageinfo">共 <strong>1</strong>页<strong>15</strong>条记录</span></li>

			</ul>
		</div><!-- /pages --> 
  
</section>


<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>