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
<html>
<head>
<title>订单列表</title>
	<!-- 引入css样式文件 -->
	<!-- Bootstrap Core CSS -->
	<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet" />
	<!-- MetisMenu CSS -->
	<link href="<%=basePath%>css/metisMenu.min.css" rel="stylesheet" />
	<!-- DataTables CSS -->
	<link href="<%=basePath%>css/dataTables.bootstrap.css" rel="stylesheet" />
	<!-- Custom CSS -->
	<link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet" />
	<!-- Custom Fonts -->
	<link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath%>css/boot-crm.css" rel="stylesheet" type="text/css" />
</head>
<%@ include file="admin_menu.jsp" %>

	<div id="page-wrapper" style="padding:0 10px 0 130px;">
		<!-- /.row -->
		<div class="panel panel-default">
			<div class="panel-body" style="height: 90px;">
				<form class="form-inline" method="get" 
				      action="${pageContext.request.contextPath }/admin_user/list.action">
					<div class="form-group">
						<label for="userid">用户账号</label> 
						<input type="text" class="form-control" id="userid" 
						                   value="${userid }" name="userid" />
					</div>
					<div class="form-group">
						<label for="username">用户姓名</label> 
						<input type="text" class="form-control" id="username" 
						                   value="${username }" name="username" />
					</div>
					<div class="form-group">
						<label for="userphone">用户号码</label> 
						<input type="text" class="form-control" id="userphone" 
						                   value="${userphone }" name="userphone" />
					</div>													
					<button type="submit" class="btn btn-primary">查询</button>
				</form>
			</div>
		</div>		
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">用户信息列表</div>
					<!-- /.panel-heading -->
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>用户账号</th>
								<th>用户姓名</th>
								<th>用户号码</th>								
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${page.rows}" var="row">
								<tr>
									<td>${row.userid}</td>
									<td>${row.username}</td>
									<td>${row.userphone}</td>																		
									<td>
<%-- 										<a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#customerEditDialog" onclick= "editCustomer(${row.cust_id})">修改</a> --%>
<%-- 										<a href="#" class="btn btn-danger btn-xs" onclick="deleteBooking(${row.bno})">删除</a> --%>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>					
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>
			<!-- /.col-lg-12 -->
		</div>
	<!-- 客户列表查询部分  end-->
	</div>
<!-- wrapper -->

<script type="text/javascript" src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
</body>
</html>