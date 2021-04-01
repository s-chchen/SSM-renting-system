<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="itheima" uri="http://itheima.com/common/"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() 
	                   + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="en" >
<head>
<meta charset="UTF-8">
<title>登录注册表单代码</title>
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!--图标库-->
<link rel='stylesheet' href='<%=basePath%>css/font-awesome-new.min.css'>
<!-- <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"> -->
<!--响应式框架-->
<link rel="stylesheet" href="<%=basePath%>css/bootstrap-new.min.css">
<!--主要样式-->
<link href="<%=basePath%>css/login_reg.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">
	function check(){
		var userid = $("#userid").val();
	    var password = $("#password").val();
	    if(userid=="" || password==""){
	    	alert("账号或密码不能为空！");
// 	    	window.location.reload();
// 	    	$("#message").text("账号或密码不能为空！");
	        return false;
	    }  
	    return true;
	}
	function check2(){
		var userid = $("#new_userid").val();
	    var password = $("#new_password").val();
	    var userphone=$("#new_userphone").val();
	    var username=$("#new_username").val();
	    if(userid=="" || password=="" || userphone=="" || username==""){
	    	alert("所以信息不能为空！");
// 	    	window.location.reload();
// 	    	$("#message").text("账号或密码不能为空！");
	        return false;
	    }  
	    return true;
	}
</script>
</head>
<body>
  
<div class="container">

	<div class="card-wrap">
	
		<div class="card border-0 shadow card--welcome is-show" id="welcome">
			<div class="card-body">
				<h2 class="card-title">欢迎光临</h2>
<!-- 				<p>欢迎进入登录页面</p> -->
				<p id="message"></p>
				<div class="btn-wrap">
					<a class="btn btn-lg btn-register js-btn" data-target="register" onclick="clearUser()">注册</a>
					<a class="btn btn-lg btn-login js-btn" data-target="login">登录</a>
					<div><a class="" href="${pageContext.request.contextPath }/adminLogin.action">管理员登录</a></div>
				</div>
			</div>
		</div>
		
		<div class="card border-0 shadow card--register" id="register">
			<div class="card-body">
				<h2 class="card-title">会员注册</h2>
<!-- 				<p class="card-text">第三方注册</p> -->
				<p class="badge-wrap"><a class="badge"><i class="fab fa-facebook-f"></i></a><a class="badge"><i class="fab fa-google"></i></a><a class="badge"><i class="fab fa-twitter"></i></a><a class="badge"><i class="fab fa-github"></i></a></p>
<!-- 				<p>或者使用您的电子邮箱进行注册</p> -->
				<form id="new_user_form">
					<div class="form-group">
						<input class="form-control" type="text" placeholder="账号" id="new_userid" name="userid">
					</div>
					<div class="form-group">
						<input class="form-control" type="text" placeholder="姓名" id="new_username" name="username">
					</div>
					<div class="form-group">
						<input class="form-control" type="text" placeholder="电话" id="new_userphone" name="userphone">
					</div>
					<div class="form-group">
						<input class="form-control" type="password" placeholder="密码" id="new_password" name="password">
					</div>
					<button type="button" class="btn btn-lg" onclick="createUser()" onsubmit="check2()">注册</button>
				</form>
			</div>
			<button class="btn btn-back js-btn" data-target="welcome">
<!-- 				<i class="fas fa-angle-left"></i> -->
				<p><</p>
			</button>
		</div>
		
		<div class="card border-0 shadow card--login" id="login">
			<div class="card-body">
				<h2 class="card-title">欢迎登录！</h2>
<!-- 				<p>第三方登录</p> -->
				<p class="badge-wrap"><a class="badge"><i class="fab fa-facebook-f"></i></a><a class="badge"><i class="fab fa-google"></i></a><a class="badge"><i class="fab fa-twitter"></i></a><a class="badge"><i class="fab fa-github"></i></a></p>
				<p id="message" name="message">${msg}</p>
				<form action="${pageContext.request.contextPath }/login.action" 
			                       method="post" onsubmit="return check()">
					<div class="form-group">
						<input class="form-control" type="text" placeholder="账号" id="userid" name="userid">
					</div>
					<div class="form-group">
						<input class="form-control" type="password" placeholder="密码" id="password" name="password">
					</div>
					<p><a href="#">忘记密码?</a></p>
					<button class="btn btn-lg">登录</button>
				</form>
			</div>
			<button class="btn btn-back js-btn" data-target="welcome">
<!-- 				<i class="fas fa-angle-left"></i> -->
				<p><</p>
			</button>
		</div>
		
	</div>
	
</div>
<!-- 引入js文件 -->
<!-- jQuery -->
<%-- <script type="text/javascript" src="<%=basePath%>js/jquery-1.11.3.min.js"></script> --%>
<!-- Bootstrap Core JavaScript -->
<script type="text/javascript" src="<%=basePath%>js/bootstrap.min.js"></script>
<!-- Metis Menu Plugin JavaScript -->
<%-- <script type="text/javascript" src="<%=basePath%>js/metisMenu.min.js"></script> --%>
<!-- DataTables JavaScript -->
<%-- <script type="text/javascript" src="<%=basePath%>js/jquery.dataTables.min.js"></script> --%>
<%-- <script type="text/javascript" src="<%=basePath%>js/dataTables.bootstrap.min.js"></script> --%>
<script type="text/javascript" src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/login_reg.js"></script>
<script type="text/javascript">
//清空注册用户窗口中的数据
function clearUser() {
    $("#new_userid").val("");
    $("#new_username").val("");
    $("#new_userphone").val("");
    $("#new_password").val(""); 
}
// 注册用户
function createUser() {
	var userid = $("#new_userid").val();
    var password = $("#new_password").val();
    var userphone=$("#new_userphone").val();
    var username=$("#new_username").val();
    if(userid=="" || password=="" || userphone=="" || username==""){
    	alert("所有信息不能为空！");
//	    	window.location.reload();
//	    	$("#message").text("账号或密码不能为空！");
        return false;
    }  
    else{
	$.post("<%=basePath%>register.action",
		   $("#new_user_form").serialize(),
		   function(data){
			console.log(data);
           	if(data =="OK"){
            	alert("注册成功！");
            	window.location.reload();
        	}else if(data == "exist"){
        		alert("账号已存在");
        	}
           	else{
            	alert("注册失败！");            	
            	window.location.reload();
           }
    });
	return true;
    }
}
</script>
</body>
</html>