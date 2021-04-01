<%@page import="org.springframework.web.bind.annotation.RequestMapping"%>
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
	<title>房子列表</title>
	<!-- 引入css样式文件 -->
	<!-- Bootstrap Core CSS -->
	<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<!-- MetisMenu CSS -->
	<link href="<%=basePath%>css/metisMenu.min.css" rel="stylesheet" type="text/css" />
	<!-- DataTables CSS -->
	<link href="<%=basePath%>css/dataTables.bootstrap.css" rel="stylesheet" type="text/css" />
	<!-- Custom CSS -->
	<link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet" type="text/css" />
	<!-- Custom Fonts -->
	<link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath%>css/boot-crm.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath%>css/animate.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath%>css/jd_cart.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath%>css/reset.css" rel="stylesheet" type="text/css" />
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
				<li><a href="${pageContext.request.contextPath }/userdetail.action"><i class="fa fa-gear fa-fw"></i> 个人中心</a></li>
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
    <!-- 房源列表查询部分  start-->
	<div id="page-wrapper">
		<div class="row" >
			<div class="col-lg-12">
				<h2 class="page-header">我们租房</h2>
			</div>
			<div class="menu_banner">
				<a class="first" href="${pageContext.request.contextPath }/house/list.action">首页</a>
				<div class="second">
					<a href="#" class="btn btn-primary" data-toggle="modal" 
					style="background-color: #1aa376;
							color: white;
							margin: 0 0 0 0;
							padding: 3px 18px 3px 18px;
							display: inline;
							float: left; 
							border-color:#1aa376;
							border: 0px solid;
							margin:0 0 0 0;
							padding:0 0 0 0;"							
		           data-target="#newHouseDialog" onclick="clearHouse()">发布房源</a>
				</div>
				<a class="third" href="${pageContext.request.contextPath }/houseMine/list.action">我的房源</a>
				<a class="fourth" href="${pageContext.request.contextPath }/houseMine/list.action">我的租房</a>
				<a class="fifth" href="${pageContext.request.contextPath }/bookingMine/list.action">我的订单</a>	
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="panel panel-default">
			<div class="panel-body">
				<!-- 搜索条件 -->
				<form class="form-inline" method="get" 
				      action="${pageContext.request.contextPath }/house/list.action">
					<div class="form-group">
						<label for="houseaddr">地址</label> 
						<input type="text" class="form-control" id="haddr" 
						                   value="${haddr }" name="haddr" />
					</div>
					<div class="form-group">
						<label for="houseto">朝向</label> 
						<input type="text" class="form-control" id="hto" 
						                   value="${hto }" name="hto" />
					</div>
					<div class="form-group">
						<label for="housearea">面积</label> 
						<input type="text" class="form-control" id="harea" 
						                   value="${harea }" name="harea" />
					</div>
					<div class="form-group">
						<label for="houseprice">月租</label> 
						<input type="text" class="form-control" id="hprice" 
						                   value="${hprice }" name="hprice" />
					</div>
					<button type="submit" class="btn btn-primary" id="houseSearch">查询</button>
				</form>
			</div>
		</div>		
		<div class="jd_shop">
		<div class="jd_shop_con">
			<c:forEach items="${page.rows}" var="row">
			<div class="product">
				<div class="shop_info clearfix">					
						<a href="<%=request.getContextPath()%>/house/detail.action?hno=${row.hno}" class="img_box f_left">
							<img src="<%=basePath%>images/detail01.jpg" alt="">
						</a>
						<div class="info_box">
							<a class="p_name" href="<%=request.getContextPath()%>/house/detail.action?hno=${row.hno}">${row.haddr}</a>
							朝<a class="p_name" href="" style="color:#dc613c;">${row.hto}</a>	
							<a class="p_name" href="" style="color:#134f9a;">${row.harea}</a>平方米								
							<p class="p_price" style="font-size:18px;">${row.hprice } 元&nbsp;/月</p>							
						</div>
						<div class="detail">
							<a style="float: right; color: #327ad4; margin: 0 25px 0 10px" href="<%=request.getContextPath()%>/house/detail.action?hno=${row.hno}">详情</a>
<%-- 							<c:if test="${USER_SESSION.userid eq row.huserid.userid}"><a href="#" style="float: right;" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#houseEditDialog" onclick="editHouse(${row.hno})">修改</a></c:if> --%>
<%-- 							<c:if test="${USER_SESSION.userid eq row.huserid.userid}"><a href="#" style="float: right;" class="btn btn-danger btn-xs" onclick="deleteHouse(${row.hno})">删除</a></c:if> --%>
							<c:if test="${such eq 'houseMine' && row.h_rentstatus eq '待租        '}"><a href="#" style="float: right;" class="btn btn-danger btn-xs" onclick="deleteHouse(${row.hno})">删除</a></c:if>
							<c:if test="${such eq 'houseMine' && row.h_rentstatus eq '待租        '}"><a href="#" style="float: right;" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#houseEditDialog" onclick="editHouse(${row.hno})">修改</a></c:if>
							<c:if test="${such eq 'houseMine' && row.h_rentstatus eq '已租        '}"><a href="#" style="background-color:#e8921a;float: right;" class="btn btn-danger btn-xs" onclick="nochange()">正在出租</a></c:if>													
						</div>													
				</div>
			</div>
			</c:forEach>
			<div class="col-md-12 text-right">
				<itheima:page url="${pageContext.request.contextPath }/house/list.action" />
			</div> 
		</div>
		</div>
	</div>
	<!-- 房源列表查询部分  end-->
</div>
<!-- 创建房源模态框 -->
<div class="modal fade" id="newHouseDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">新建房源信息</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="new_house_form">					
					<div class="form-group">
						<label for="new_huserid" class="col-sm-2 control-label">用户姓名</label>
						<div class="col-sm-10">
<!-- 							<input type="text" class="form-control" id="new_linkMan" placeholder="联系人" name="cust_linkman" /> -->
							<div class="form-control" id="" name="">${USER_SESSION.username}</div>
						</div>
					</div>
					<div class="form-group">
						<label for="new_haddr" class="col-sm-2 control-label">房屋地址</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_haddr" placeholder="房屋地址" name="haddr" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_harea" class="col-sm-2 control-label">房屋面积</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_harea" placeholder="房屋面积" name="harea" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_hto" class="col-sm-2 control-label">房屋朝向</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_hto" placeholder="房屋朝向" name="hto" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_hprice" class="col-sm-2 control-label">房屋月租</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_hprice" placeholder="房屋租金（月租）" name="hprice" />
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="createHouse()">发布房源</button>
			</div>
		</div>
	</div>
</div>
<!-- 修改房源模态框 -->
<div class="modal fade" id="houseEditDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">修改房源信息</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="edit_house_form">					
					<div class="form-group">
						<input type="hidden" id="edit_hno" name="hno"/>
						<label for="edit_haddr" class="col-sm-2 control-label">房屋地址</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_haddr" placeholder="房屋地址" name="haddr" />
						</div>
					</div>					
					<div class="form-group">
						<label for="edit_harea" class="col-sm-2 control-label">房屋面积</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_harea" placeholder="房屋面积" name="harea" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_hto" class="col-sm-2 control-label">房屋朝向</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_hto" placeholder="房屋朝向" name="hto" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_hprice" class="col-sm-2 control-label">房屋月租</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_hprice" placeholder="房屋月租" name="hprice" />
						</div>
					</div>					
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="updateHouse()">保存修改</button>
			</div>
		</div>
	</div>
</div>
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
<!-- 编写js代码 -->
<script type="text/javascript">
//清空新建房源窗口中的数据
	function clearHouse() {
	    $("#new_huserid").val("");
	    $("#new_haddr").val("");
	    $("#new_harea").val("");
	    $("#new_hto").val("");
	    $("#new_hprice").val("");    
	}
	// 创建房源
	function createHouse() {
	$.post("<%=basePath%>house/create.action",
	$("#new_house_form").serialize(),function(data){
	        if(data =="OK"){
	            alert("房源发布成功！");
	            window.location.reload();
	        }else{
	            alert("房源发布失败！");
	            window.location.reload();
	        }
	    });
	}
	// 通过id获取修改的房源信息
	function editHouse(hno) {
	    $.ajax({
	        type:"get",
	        url:"<%=basePath%>house/getHouseByhno.action",
	        data:{"hno":hno},
	        success:function(data) {
	        	$("#edit_hno").val(data.hno);
	            $("#edit_haddr").val(data.haddr);
	            $("#edit_harea").val(data.harea);
	            $("#edit_hto").val(data.hto);	            
	            $("#edit_hprice").val(data.hprice);           
	        }
	    });
	}
    // 执行修改房源操作
	function updateHouse() {
		$.post("<%=basePath%>house/update.action",$("#edit_house_form").serialize(),function(data){
			if(data =="OK"){
				alert("房源信息更新成功！");
				window.location.reload();
			}else{
				alert("房源信息更新失败！");
				window.location.reload();
			}
		});
	}
	// 删除房源
	function deleteHouse(hno) {
	    if(confirm('确实要删除该房源吗?')) {
	$.post("<%=basePath%>house/delete.action",{"hno":hno},
	function(data){
// 		console.log(data);
	            if(data =="OK"){
	                alert("房源删除成功！");
	                window.location.reload();
	            }else{
	                alert("删除房源失败！");
	                window.location.reload();
	            }
	        });
	    }
	}
	function nochange(){
		alert("！正在出租 不可更改！");
	}
</script>
</body>
</html>