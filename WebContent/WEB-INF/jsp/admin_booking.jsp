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
				      action="${pageContext.request.contextPath }/admin_booking/list.action">
					<div class="form-group">
						<label for="bno">订单编号</label> 
						<input type="text" class="form-control" id="bno" 
						                   value="${bno }" name="bno" />
					</div>
					<div class="form-group">
						<label for="bmonth">租期(月)</label> 
						<input type="text" class="form-control" id="bmonth" 
						                   value="${bmonth }" name="bmonth" />
					</div>													
					<button type="submit" class="btn btn-primary">查询</button>
				</form>
			</div>
		</div>		
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">客户信息列表</div>
					<!-- /.panel-heading -->
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>订单编号</th>
								<th>订单时间</th>
								<th>订单租金</th>
								<th>租期(月)</th>
								<th>房源编号</th>
								<th>房东账号</th>
								<th>租客账号</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${page.rows}" var="row">
								<tr>
									<td>${row.bno}</td>
									<td>${row.btime}</td>
									<td>${row.bmoney}</td>
									<td>${row.bmonth}</td>
									<td>${row.bhno.hno}</td>
									<td>${row.bmasterid.userid}</td>
									<td>${row.btenantid.userid}</td>									
									<td>
<%-- 										<a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#customerEditDialog" onclick= "editCustomer(${row.cust_id})">修改</a> --%>
										<a href="#" class="btn btn-danger btn-xs" onclick="deleteBooking(${row.bno})">删除</a>
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
<script type="text/javascript">
//删除房源
function deleteBooking(bno) {
    if(confirm('确实要删除该订单吗?')) {
		$.post("<%=basePath%>booking/delete.action",
		{"bno":bno},
		function(data){
            if(data =="OK"){
                alert("订单删除成功！");
                window.location.reload();
            }else{
                alert("订单删除失败！");
                window.location.reload();
            }
        });
    }
}
</script>
<script type="text/javascript" src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
</body>
</html>