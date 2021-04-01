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
<!DOCTYPE HTML>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>个人中心</title>
	<!-- 引入css样式文件 -->
	<!-- Bootstrap Core CSS -->
	<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet" />	
	<!-- 导航banner样式 -->
	<link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet" />
	<!-- 导航banner的4个小标样式 -->
	<link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<!-- 个人信息主要样式 -->
	<link href="<%=basePath%>css/userdetail.css" rel="stylesheet" />
<!-- 引入js文件 -->
<!-- jQuery -->
<script type="text/javascript" src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script type="text/javascript" src="<%=basePath%>js/bootstrap.min.js"></script>
<!-- Metis Menu Plugin JavaScript -->
<script type="text/javascript" src="<%=basePath%>js/metisMenu.min.js"></script>
<!-- DataTables JavaScript -->
<script type="text/javascript" src="<%=basePath%>js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/dataTables.bootstrap.min.js"></script>
<!-- Custom Theme JavaScript -->
<script type="text/javascript" src="<%=basePath%>js/sb-admin-2.js"></script>
<script type="text/javascript" src="<%=basePath%>js/cartjs.js"></script>
<script type="text/javascript" src="<%=basePath%>js/jquery.js"></script>
	
</head>
<body>
<div id="wrapper">
  <!-- 导航栏部分 -->
  <nav class="navbar navbar-default navbar-static-top" role="navigation"
		 style="margin-bottom: 0">
	<div class="navbar-header">
		<a class="navbar-brand" href="<%=basePath%>house/list.action">租房管理系统 v2.0</a>
	</div>
	<!-- 导航栏右侧图标部分 -->
	<ul class="nav navbar-top-links navbar-right">
	    <!-- 邮件通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-envelope fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-messages">
				<li>
				    <a href="#">
						<div>
							<strong>张经理</strong> <span class="pull-right text-muted">
								<em>昨天</em>
							</span>
						</div>
						<div>今天晚上开会，讨论一下下个月工作的事...</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#">
				        <strong>查看全部消息</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul>
		</li>
		<!-- 邮件通知 end -->
		<!-- 任务通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
			    <i class="fa fa-tasks fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-tasks">
				<li>
				    <a href="#">
						<div>
							<p>
								<strong>任务 1</strong> 
								<span class="pull-right text-muted">完成40%</span>
							</p>
							<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-success"
									role="progressbar" aria-valuenow="40" aria-valuemin="0"
									aria-valuemax="100" style="width: 40%">
									<span class="sr-only">完成40%</span>
								</div>
							</div>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<p>
								<strong>任务 2</strong> 
								<span class="pull-right text-muted">完成20%</span>
							</p>
							<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-info" role="progressbar"
									aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
									style="width: 20%">
									<span class="sr-only">完成20%</span>
								</div>
							</div>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#"> 
				        <strong>查看所有任务</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul> 
		</li>
		<!-- 任务通知 end -->
		<!-- 消息通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-bell fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-alerts">
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-comment fa-fw"></i> 新回复 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-envelope fa-fw"></i> 新消息 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-tasks fa-fw"></i> 新任务 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-upload fa-fw"></i> 服务器重启 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#"> 
				        <strong>查看所有提醒</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul> 
		</li>
		<!-- 消息通知 end -->
		<!-- 用户信息和系统设置 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-user fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-user">
				<li><a href="#"><i class="fa fa-user fa-fw"></i>
				               用户：${USER_SESSION.username}
				    </a>
				</li>
				<li><a href="#"><i class="fa fa-gear fa-fw"></i> 系统设置</a></li>
				<li class="divider"></li>
				<li>
					<a href="${pageContext.request.contextPath }/logout.action">
					<i class="fa fa-sign-out fa-fw"></i>退出登录
					</a>
				</li>
			</ul> 
		</li>
		<!-- 用户信息和系统设置结束 -->
	</ul>
	<!-- 左侧显示列表部分 start-->		 
  </nav>
  
  <div class="user_hole">
  	<div class="user_inner">
  		<!-- 个人信息 -->
  		<div class="user_detail">
  			<div class="user_img">
  					<img class="user_imger" src="${pageContext.request.contextPath }/images/hmaster.jpg">  				
  			</div>
  			<div class="user_imfo">
  				<div class="user_id">账号：${USER_SESSION.userid }</div>
  				<div class="user_name">姓名：${USER_SESSION.username }</div>
  				<div class="user_phone">电话：${USER_SESSION.userphone }</div>
  				<div class="user_id">职业：.... ...</div>
  				<div class="user_id">年龄：.... ...</div>
  				<div class="user_id">等等............... .......</div>	
  				<div class="user_edit">
  					<a data-toggle="modal" data-target="#userEditDialog" href="#" 
  					onclick="editUser(${USER_SESSION.userid})" >修改 </a>  
  					<a href="#" 
  					onclick="javascript:history.back(-1)" >| 返回</a>  					
  				</div>	
  			</div>
  		</div>
  		<!-- 我的房源跳转 -->
  		<div class="user_hbk">
  			<a class="user_house" href="${pageContext.request.contextPath }/houseMine/list.action">我的房源</a>
  			<a class="user_booking" href="${pageContext.request.contextPath }/bookingMine/list.action">我的订单</a>
  		</div>
  		<!-- 我的订单跳转 -->
<!--   		<div class="user_booking"> -->
<%--   			<a class="user_booking_href" href="${pageContext.request.contextPath }/bookingMine/list.action">我的订单</a> --%>
<!--   		</div> -->
  	</div>
  </div>
</div>
<!-- 修改用户信息 -->
<div class="modal fade" id="userEditDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">修改个人信息</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="edit_user_form">					
					<div class="form-group">
						<input type="hidden" id="edit_userid" name="userid"/>	
					</div>
					<div class="form-group">
						<input type="hidden" id="edit_username" name="username"/>	
					</div>
					<div class="form-group">
<!-- 						<input type="hidden" id="edit_userid" name="userid"/> -->
<!-- 						<input type="hidden" id="edit_username" name="username"/> -->
						<label class="col-sm-2 control-label">用户账号</label>
						<div class="col-sm-10">
							<p class="form-control">${USER_SESSION.userid }</p>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">用户姓名</label>
						<div class="col-sm-10">
							<p class="form-control">${USER_SESSION.username }</p>
						</div>
					</div>
					<div class="form-group">
						<label for="edit_userphone" class="col-sm-2 control-label">手机号码</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_userphone" placeholder="联系电话" name="userphone" />
						</div>
					</div>		
					<div class="form-group">
						<label for="edit_password" class="col-sm-2 control-label">密码</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="edit_password" placeholder="密码" name="password" />
						</div>
					</div>								
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="updateUser()">保存修改</button>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
/* 通过id获取修改的房源信息 */
function editUser(id) {
	$.ajax({
        type:"get",
        url:"<%=basePath%>user/getUserById.action",
        data:{"userid":id},
        success:function(data) {
        	$("#edit_userid").val(data.userid);
            $("#edit_username").val(data.username);
            $("#edit_userphone").val(data.userphone);
            $("#edit_password").val(data.password);           
        }
    });
}
/*  执行修改房源操作 */
function updateUser() {
	$.post("<%=basePath%>user/update.action",$("#edit_user_form").serialize(),
		function(data){
		if(data =="OK"){
			alert("用户信息更新成功！");
			window.location.reload();
		}else{
			alert("用户信息更新失败！");
			window.location.reload();
		}
	});
}
</script>
</body>
</html>