<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>登录页面</title>
<link href="${pageContext.request.contextPath}/css/style.css" 
	type=text/css rel=stylesheet>
<link href="${pageContext.request.contextPath}/css/rentSystem.css"
	type=text/css rel=stylesheet>
<script src=
       "${pageContext.request.contextPath}/js/jquery-1.11.3.min.js">
</script>
<meta content="MSHTML 6.00.2600.0" name=GENERATOR>
<script type="text/javascript">
	function check(){
		var userid = $("#userid").val();
	    var password = $("#password").val();
	    if(userid=="" || password==""){
	    	$("#message").text("账号或密码不能为空！");
	        return false;
	    }  
	    return true;
	}
</script>
</head>
<body background="${pageContext.request.contextPath}/images/rights.jpg"
				width="1920">
	<div ALIGN="center">
		<table border="0" width="1140px" cellspacing="0" cellpadding="0" id="table1">
			<tr>
				<td height="93"></td>
				<td></td>
			</tr>
			<tr>
   				<%-- <td background="${pageContext.request.contextPath}/images/rights.jpg"
				width="1920" height="1080">
   				</td> --%>
   				<td class="login_msg" width="400" align="center">
	 			<!-- margin:0px auto; 控制当前标签居中 -->
	 			<fieldset style="width: auto; margin: 0px auto;">
		  			<legend>
		     			<font style="font-size:15px" face="宋体">
		          		欢迎使用租房管理系统
		     			</font>
		  			</legend> 
					<font color="red">
			 			<%-- 提示信息--%>
			 			<span id="message">${msg}</span>
					</font>
					<%-- 提交后的位置：/WEB-INF/jsp/customer.jsp--%>
					<form action="${pageContext.request.contextPath }/login.action" 
			                       method="post" onsubmit="return check()">
                      	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /><br />
          				账&nbsp;号：<input id="userid" type="text" name="userid" /><br /><br />
          				密&nbsp;码：<input id="password" type="password" name="password" /><br /><br />
          				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          				<center><input type="submit" value="登录" /></center>
		 			</form>
	 			</fieldset>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>