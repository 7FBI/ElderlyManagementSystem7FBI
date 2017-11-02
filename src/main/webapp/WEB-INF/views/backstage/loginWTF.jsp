<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录cs</title>
<link rel="stylesheet" href="/resources/css/login.css">
</head>
<body oncontextmenu ="return false">
		
        <div class="page-container">
            <h1>欢迎CEO登陆</h1>
				
            <button type="button" login="btn" value="/gotoBackstage/login_ceo">CEO登录</button>
            <button type="button" login="btn" value="/gotoBackstage/login_manager">店长登录</button>
            <button type="button" login="btn" value="/gotoBackstage/jsp/ManagerInfo/ManagerInfo_login">其它管理员</button>

            <div class="connect">
                <p>If we can only encounter each other rather than stay with each other,then I wish we had never encountered.</p>
				<p style="margin-top:20px;">如果只是遇见，不能停留，不如不遇见。</p>
            </div>
        </div>

        <!-- Javascript -->
		<script src="/resources/unity/jquery/jquery-3.2.0.js" type="text/javascript"></script>
		<script type="text/javascript">
		$("button[login='btn']").click(function(){
			var b=$(this).val();
			window.location.href=b;
		})
		</script>
    </body>
</html>