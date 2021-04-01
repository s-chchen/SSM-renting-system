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
	<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet" />
	<!-- 导航banner样式 -->
	<link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet" />
	<!-- 导航banner的4个小标样式 -->
	<link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<!-- 详情页主图和主信息css -->
	<link href="<%=basePath%>css/hdetail.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath%>css/booking.css" rel="stylesheet" type="text/css" />	
	<!-- 退出js -->
	<script type="text/javascript" src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/bootstrap.min.js"></script>

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
    <!-- 客户列表查询部分  start-->
	<div id="page-wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h2 class="page-header">我们租房</h2>
				<a style="display:inline;margin:0 0 10px 10px;padding:5px 15px;
						background-color: #61acec;color:white;"
				 href="javascript:history.back(-1)">返回</a>
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
					<button type="submit" class="btn btn-primary">查询</button>
				</form>
			</div>
		</div>
		<c:if test="${hdetail.h_rentstatus eq '已租        '}">
		<!-- 订单信息 -->
		<div class="hbk_hole">
			<div class="hbk_inner">
				<div class="hbk_startline">------------------------------------------------------</div>
				<div class="hbk_btime"> 租订时间--${bdetail.btime}</div>
				<div class="hbk_bno">编号--${bdetail.bno}</div>
				<div class="hbk_bmoney">租金--${bdetail.bmoney}元</div>
				<div class="hbk_bmonth">租期--${bdetail.bmonth}个月</div>
				<div class="hbk_btenant_id">租客编号--${btenant_id}</div>
				<div class="hbk_btenant_name">租客姓名--${btenant_name}</div>
				<div class="hbk_btenant_phone">租客电话--${btenant_phone}</div>
			</div>
		<!-- hbk_hole -->
		</div>
		</c:if>
		
		<div class="content clear w1150">
			<div class="content__subtitle">
				<i class="house_code">房源编号：${hdetail.hno}</i>
			</div>
			<div class="content__core">
				<div class="content__article__slide">
					<img src="<%=basePath%>images/hdetail.jpg">
				</div>
				<div class="content__aside fr">
					<div class="content__aside--title">
          			  <span>${hdetail.hprice }</span>元/月 (季付价)
          			 </div>
          			 <ul class="content__aside__list">
            			<li><span class="label">租赁方式：</span>整租</li>
            			<li><span class="label">房屋类型：</span>2室1厅1卫 ${hdetail.harea }㎡</li>
            			<li class="floor"><span class="label">朝向楼层：</span>${hdetail.hto }
                          </li>
            			<li><span class="label">风险提示：</span><a href="https://m.ke.com/text/disclaimer">用户风险提示</a></li>
          			</ul>
          			<div class="content__aside__list house-detail">
          				<span class="content__aside__list--icon" style="background-image: url(<%=basePath%>/images/hmaster.jpg);"></span>
          				<div class="content__aside__list--title oneline">
        					<span class="contact_name" title="huser">${hdetail.huserid.username}</span>                         	
                			<p class="content__aside__list--subtitle oneline">编号：${hdetail.huserid.userid}</p>        
                			<div class="phone__hover--wrapper">
        						<div class="content__aside__phone">
            	                	电话 ${hdetail.huserid.userphone}       
                            	</div>
                            	<c:if test="${hdetail.h_rentstatus eq '待租        '}">
            					<a class="content__aside__booking" href="${pageContext.request.contextPath }/bookingedit.action"> 租订</a>
            					</c:if>
            					<c:if test="${hdetail.h_rentstatus eq '已租        '}">
            					<a class="content__aside__booking" href="#" onclick="nochange()"> 已租</a>
            					</c:if>
        					</div>           
                		</div>
        			<!-- content__aside__list house-detail -->
        			</div>
        		<!-- content__aside fr -->
        		</div>
        	<!-- content__core -->
			</div>
		<!-- content clear w1150 -->
		</div>
		
		<!-- page-wrapper -->
		</div>
	<!-- wrapper -->	
	</div>
<script type="text/javascript">
	function nochange(){
		alert("！已租，无需再操作！");
	}
</script>
</body>
</html>