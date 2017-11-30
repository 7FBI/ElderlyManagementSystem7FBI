<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'indexactivity.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<SCRIPT>
  var dir=1;//每步移动像素，大＝快
  var speed=10;//循环周期（毫秒）大＝慢
  var MyMar=null;
  function Marquee(){//正常移动
   var demo = document.getElementById("demo");
   var demo2 = document.getElementById("demo2");
   if (dir>0  && (demo2.offsetWidth-demo.scrollLeft)<=0)
   {
    demo.scrollLeft=0;
   }
   if (dir<0 &&(demo.scrollLeft<=0))
   {
    demo.scrollLeft=demo2.offsetWidth;
   }
   demo.scrollLeft+=dir;
  }
  function onmouseoverMy() {
   window.clearInterval(MyMar);
  }//暂停移动
  function onmouseoutMy() {
   MyMar=setInterval(Marquee,speed);
  }//继续移动
  function r_left()
  {
   if (dir==-1)
    dir=1;
  }//换向左移
  function r_right()
  {
   if (dir==1)
    dir=-1;
  }//换向右移
 
  function IsIE()
  {
   var browser=navigator.appName
   if ((browser=="Netscape"))
   {
    return false;
   }
   else if(browser=="Microsoft Internet Explorer")
   {
    return true;
   }
   else
   {
    return null;
   }
  }
  
  var _IsIE = IsIE();
  var _MousePX = 0;
  var _MousePY = 0;
  var _DivLeft = 0;
  var _DivRight = 0;
  var _AllDivWidth = 0;
  var _AllDivHeight = 0;
  function MoveDiv(e){
   var obj = document.getElementById("demo");
     _MousePX = _IsIE ? (document.body.scrollLeft + event.clientX) : e.pageX;
    _MousePY = _IsIE ? (document.body.scrollTop + event.clientY) : e.pageY;
   //Opera Browser Can Support ''window.event'' and ''e.pageX''
   var obj1 = null;
   if(obj.getBoundingClientRect)
   {
    //IE
    obj1 = document.getElementById("demo").getBoundingClientRect();
    _DivLeft = obj1.left;
    _DivRight = obj1.right;
    _AllDivWidth = _DivRight - _DivLeft;
   }
   else if(document.getBoxObjectFor)
   {
    //FireFox
    obj1 = document.getBoxObjectFor(obj); 
    var borderwidth = (obj.style.borderLeftWidth != null && obj.style.borderLeftWidth != "") ? parseInt(obj.style.borderLeftWidth) : 0;
    _DivLeft = parseInt(obj1.x) - parseInt(borderwidth);
    _AllDivWidth = Cut_Px(obj.style.width);
    _DivRight = _DivLeft + _AllDivWidth;
   }
   else
   {
    //Other Browser(Opera)
    _DivLeft = obj.offsetLeft;
    _AllDivWidth = Cut_Px(obj.style.width);
    var parent = obj.offsetParent;
    if(parent != obj)
    {
     while (parent) {  
      _DivLeft += parent.offsetLeft; 
      parent = parent.offsetParent;
     }
    }
    _DivRight = _DivLeft + _AllDivWidth;
   }
 
   var pos1,pos2;
   pos1 = parseInt(_AllDivWidth * 0.4) + _DivLeft;
   pos2 = parseInt(_AllDivWidth * 0.6) + _DivLeft;
 
   if(_MousePX > _DivLeft && _MousePX < _DivRight)
   {
    if(_MousePX > _DivLeft && _MousePX < pos1)//Move left
    {
     r_left();
    }
    else if(_MousePX < _DivRight && _MousePX > pos2)//Move right
    {
     r_right();
    }
	
    if(_MousePX > pos1 && _MousePX < pos2)//Stop
    {
     onmouseoverMy();
     MyMar=null;
    }else if(_MousePX < pos1 || _MousePX > pos2)
    {
     if(MyMar==null)
     {
      MyMar=setInterval(Marquee,speed);
     }
    }
   }
  }
 
  function Cut_Px(cswidth)
  {
   cswidth = cswidth.toLowerCase();
   if(cswidth.indexOf("px") != -1)
   {
    cswidth.replace("px","");
    cswidth = parseInt(cswidth);
   }
   return cswidth;
  }
 
  function MoveOutDiv()
  {
   if(MyMar == null)
   {
    MyMar=setInterval(Marquee,speed);
   }
  }

 </SCRIPT>





<style type="text/css">
* { padding:0; margin:0;}       /*设置所有对像的内边距为0*/
body { text-align:center;}      /*设置页面居中对齐*/
#photo-list {
/* 6张图片的宽度（包含宽度、padding、border、图片间的留白）
计算：6*(100+2*2+1*2+9) - 9 
之所以减去9是第6张图片的右边留白 */
   width:681px;  
/* 图片的宽度（包含高度、padding、border）
   计算：100+2*2+1*2  */ 
    height:106px;  
    margin:50px auto; 
 overflow:hidden;     /*溢出部份将被隐藏*/ 
    border:1px dashed #ccc;  
}  
#photo-list ul { list-style:none;}  
#photo-list li { float:left; padding-right:9px;}  
#photo-list img { border:1px solid #ddd; background:#fff; padding:2px;}
</style>
<script type="text/javascript">
		var id = function(el) {
				return document.getElementById(el);
			},
			c = id('photo-list');
		if (c) {
			var ul = id('scroll'),
				lis = ul.getElementsByTagName('li'),
				itemCount = lis.length,
				width = lis[0].offsetWidth, //获得每个img容器的宽度
				marquee = function() {
					c.scrollLeft += 2;
					if (c.scrollLeft % width <= 1) { //当 c.scrollLeft 和 width 相等时，把第一个img追加到最后面
						ul.appendChild(ul.getElementsByTagName('li')[0]);
						c.scrollLeft = 0;
					}
					;
				},
				speed = 50; //数值越大越慢
			ul.style.width = width * itemCount + 'px'; //加载完后设置容器长度        
			var timer = setInterval(marquee, speed);
			c.onmouseover = function() {
				clearInterval(timer);
			};
			c.onmouseout = function() {
				timer = setInterval(marquee, speed);
			};
		}
		;
	</script>
  </head>
  
  <body>
  <div id="photo-list"> 
	 <ul id="scroll">  
			<li><a href="#"><img
					src="../../../resources/upload/front/ad5.jpg" width="100px"
					height="100px" alt="" /></a></li>
			<li><a href="#"><img
					src="../../../resources/upload/front/ad4.jpg" width="100px"
					height="100px" alt="" /></a></li>
			<li><a href="#"><img
					src="../../../resources/upload/front/ad3.jpg" width="100px"
					height="100px" alt="" /></a></li>
			<li><a href="#"><img
					src="../../../resources/upload/front/ad2.jpg" width="100px"
					height="100px" alt="" /></a></li>
			<li><a href="#"><img
					src="../../../resources/upload/front/ad1.jpg" width="100px"
					height="100px" alt="" /></a></li>
			<li><a href="#"><img
					src="../../../resources/upload/front/ad5.jpg" width="100px"
					height="100px" alt="" /></a></li>
		</ul>
	</div>
	
	
	<div style="width:100%;text-align:left">
<DIV id="demo" style="OVERFLOW: hidden; WIDTH: 500px; COLOR: #ffffff; HEIGHT: 100px" onmousemove="MoveDiv(event);" onmouseout="MoveOutDiv();">
            

    <div id="demo1" style="width:100%;">
                  <TABLE cellSpacing=0 cellPadding=0>
                    <TBODY>
                    <TR vAlign=top>
                      <TD vAlign=top noWrap>
                        <DIV align=right>
                         <img src="membership_seminar.jpg"> <img src="pwpsoftcover.jpg"> <img src="rhemacards.jpg"> <img src="traks_classes.jpg"> <img src="citycompschool.jpg"> <img src="citykidssite.jpg"> <img src="gc-general.jpg"> <img src="groups.jpg">
                  
      </DIV></TD></TR></TBODY></TABLE></TD>
                  <TD width="0">
        <div id="demo2" style="width:100%;"></div>
       </TD>
        </TR></TBODY></TABLE>
      </DIV>
</div>
<script type="text/javascript">
 document.getElementById("demo2").innerHTML = document.getElementById("demo1").innerHTML;
 MyMar=setInterval(Marquee,speed);
</script>
	
  </body>
</html>
