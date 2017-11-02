<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'olduserdetail.jsp' starting page</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="/resources/unity/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link href="/resources/css/register.css" rel="stylesheet"
	type="text/css">
<script type="text/javascript"
	src="/resources/unity/jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="/resources/unity/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<link href="../../../resources/css/olduserdetail.css" rel="stylesheet"
	type="text/css">
</head>

<body>
	<a  href="${pageContext.request.contextPath}/backstage/oldusers/queryAllUsers.action" ><font  color="blue"> 
	
              <span class="glyphicon glyphicon-backward" aria-hidden="true"></span>&nbsp;返回</font></a>
	<br><br>
<div class="container bgdivstyle">
	<div class="titles"> <br><h2 class="hs" >客户基本信息</h2><br></div><br>
    <form class="form-horizontal" role="form">
        <div class="row">
            <!--<input type="text" class="form-control" placeholder="Text input">-->
            <div class="col-md-9">
                <div class="row">
                    <div class="col-md-6 form-group">
                        <label for="name" class="col-md-3 control-label">id</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" id="name" value="${userdetail.id}" readonly>
                        </div>
                    </div>
                    &nbsp;<div class="col-md-6 form-group">
                        <label for="sexs" class="col-md-3 control-label">姓名</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" id="sexs" value="${userdetail.username}" readonly>
                        </div>
                    </div>
                    <!-- <div class="col-md-4 form-group">
                        <label  class="col-md-3 control-label">民族</label>
                        <div class="col-md-9">
                            <input type="email" class="form-control" id="nation" placeholder="请输入您的民族">
                            name="nation" class="STYLE" id="idType" >
                                <option selected="selected" value="initNations">-请选择-</option>
                            <select  type="text" class="form-control" id="staff_nation" onclick = "initNations()"></select>
                        </div>
                    </div> -->
                </div>
                <!-------------->
                &nbsp;<div class="row">
               <!--      <div class="col-md-6 form-group">
                        <label class="col-md-3 control-label">出生年月</label>
                        <div class="col-md-8 form-group">

                                指定 date标记
                                <div class='input-group date' id='datetimepicker1'>
                                    <input type='text' class="form-control"/>
                                    <span class="input-group-addon">
                    <span class="glyphicon glyphicon-calendar"></span>
                </span>
                                </div>

                        </div>
                    </div> -->
                 &nbsp;    <div class="col-md-6 form-group">
                        <label for="locals" class="col-md-3 control-label">性别</label>
                        <div class="col-md-9">
                        <c:if test="${userdetail.sex==1}">
                        <input type="text" class="form-control" id="locals" value="女" readonly>
                        </c:if>
                         <c:if test="${userdetail.sex==0}">
                        <input type="text" class="form-control" id="locals" value="男" readonly>
                        </c:if>
                            
                        </div>
                    </div>
                    <div class="col-md-6 form-group">
                        <label for="locals" class="col-md-3 control-label">idcard</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" id="locals" value="${userdetail.idcard}" readonly>
                        </div>
                    </div>
                </div>
                <!---------->
              &nbsp;  <div class="row">
                    <div class="col-md-6 form-group">
                        <label for="stus" class="col-md-3 control-label">电话</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" id="stus" value="${userdetail.tell}" readonly>
                        </div>
                    </div>
                    <div class="col-md-6 form-group">
                        <label for="homes" class="col-md-3 control-label">账号</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" id="homes" value="${userdetail.uid}" readonly>
                        </div>
                    </div>
                </div>
             &nbsp;   <!--------------->
                <div class="row">
                    <div class="col-md-6 form-group">
                        <label for="tells" class="col-md-3 control-label">地域</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" id="tells" value="${userdetail.localarea.provincename}" readonly>
                        </div>
                    </div>
                    <div class="col-md-6 form-group">
                        <label for="qq" class="col-md-3 control-label">出生<br>日期</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" id="qq" value="${userdetail.birthday}" readonly>
                        </div>
                    </div> 
                   <%--  <div class="col-md-6 form-group">
                        <label for="qq" class="col-md-3 control-label">账号</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" id="qq" value="${userdetail.uid}" readonly>
                        </div>
                    </div> --%>
                </div>
            </div>


            <!--照片-->
            <div class="col-md-2">
                
                <div class="photostyle" readonly><img src="/resources/${userdetail.userurl}" width="122px" height="156px"/> </div>
            </div>

        </div>

        <!--中间部分-->
       &nbsp; &nbsp;<div class="row form-group ">

                 <div class="lefttips">&nbsp; &nbsp;<strong>住址</strong></div>
                <div class="righttips col-md-offset-2 col-md-10">
                   <input type="text" class="form-control" id="loves" value="${userdetail.address}" readonly>
                </div>
            </div>

        <!-- <div class="row form-group">

            <div class="lefttips"><strong>党员发展情况</strong></div>
                <div class="righttips">
                    <input type="email" class="form-control" id="develop" vlaue="${userdetail.idcard}" readonly>
                </div>
            </div> -->
             &nbsp; &nbsp;
        <%-- <div class="row form-group">

            <div class="lefttips"><strong>家庭住址</strong></div>
                <div class="righttips col-md-offset-2 col-md-10">
                    <input type="email" class="form-control" id="address" value ="${userdetail.username}"placeholder="请输入您的家庭住址">
                </div>
            </div> --%>

        <!--  <div class="row form-group">

            <div class="lefttips"><strong>父母姓名及联系电话</strong></div>

                <div class="righttips">
                    <input type="email" class="form-control" id="mtell" placeholder="请输入您父母的姓名及联系电话">
                </div>

        </div>
        <!--底部-->
        
        <!--  <form action="" method="post">
            <div class="lefttips"><strong>获奖情况</strong></div>
               <div class="righttips">
               <textarea name="yj" cols="130" rows="5">
                </textarea></div>
        </form>
        <br>-->
        <!--提交按钮-->
     
                  <%--   <div class="col-md-offset-8 col-md-3">
                        <a  href="${pageContext.request.contextPath}/oldusers/queryAllUsers.action" class="btn btn-active" type="button"><font size="4px" color="blue">返回</font></a>
                    </div>
               --%>


    </form>
</div>
</body>
</html>
