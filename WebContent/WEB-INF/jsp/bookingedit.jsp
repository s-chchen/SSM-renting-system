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
    <title>订单支付</title>
	<!-- 引入css样式文件 -->
	<!-- Bootstrap Core CSS -->
	<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<!-- 导航banner样式 -->
	<link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet" type="text/css" />
	<!-- 导航banner的4个小标样式 -->
	<link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<!-- 详情页主图和主信息css -->
	<link href="<%=basePath%>css/hdetail.css" rel="stylesheet" type="text/css" />
	<!-- 订单样式 -->
	<link href="<%=basePath%>css/booking.css" rel="stylesheet" type="text/css" />
	<!-- 退出js -->
	<script type="text/javascript" src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/bootstrap.min.js"></script>
    <script type="text/JavaScript">
        function change(flag,value){
            with(document.booking_hole){
                var totle = 0;
                if(document.getElementById)
                document.getElementById(flag).innerHTML = value * document.getElementById(flag).value;
            }
        }
    </script>    
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
  <div id="page-wrapper">
  	<div class="row">
			<div class="col-lg-12">
				<h2 class="page-header">我们租房</h2>
			</div>
			<!-- /.col-lg-12 -->
		</div>
  	<form class="booking_hole" name="booking_hole" id="booking_hole">
  		<div class="booking_unit">
  			<div class="booking_key">房源编号：</div>
  			<div class="booking_value">${hdetail.hno}</div>
  		</div>
  		<div class="booking_unit">
  			<div class="booking_key">房屋地址：</div>
  			<div class="booking_value">${hdetail.haddr}</div>
  		</div>
  		<div class="booking_unit">
  			<div class="booking_key">房屋朝向：</div>
  			<div class="booking_value">${hdetail.hto}</div>
  		</div>
  		<div class="booking_unit">
  			<div class="booking_key">房&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 租：</div>
  			<div class="booking_value">${hdetail.hprice}</div>
  		</div>
  		<div class="booking_unit">
  			<div class="booking_key">房东编号：</div>
  			<div class="booking_value">${hdetail.huserid.userid}</div>
  		</div>
  		<div class="booking_unit">
  			<div class="booking_key">房东姓名：</div>
  			<div class="booking_value">${hdetail.huserid.username}</div>
  		</div>
  		<div class="booking_unit">
  			<div class="booking_key">房东电话：</div>
  			<div class="booking_value">${hdetail.huserid.userphone}</div>
  		</div>
  		<div class="booking_unit">
  			<div class="booking_key">租客编号：</div>
  			<div class="booking_value">${USER_SESSION.userid}</div>
  		</div>
  		<div class="booking_unit">
  			<div class="booking_key">租客姓名：</div>
  			<div class="booking_value">${USER_SESSION.username}</div>
  		</div>
  		<div class="booking_sub" id="sub" onclick="submonth(this)">-</div>
  		<div class="booking_hmonth" id="bookingmonth" name="bookingmonth">
  			<input type="text" id="bmonth" name="bmonth" placeholder="租期月" style="text-align: center" onkeyup="sum()"></input>	
  		</div>
  		<div class="booking_add" id="add" onclick="addmonth(this)">+</div>
  		<div class="booking_bmoney_hole">
  			总金额：<div class="bmoney" id="bmoney" name="bmoney"></div>元
  		</div>
  		<div class="submintbooking">
  			<button class="submitbutton" type="button" onclick="createBooking()">创建订单</button>
  			<button class="dirbutton" type="button" onclick="javascript:history.back(-1)">取消订单</button>
  		</div> 		
  		
  	</form><!-- booking_hole -->
  </div><!-- page-wrapper结束 -->
  </div>
      <script type="text/javascript">
    	function addmonth(){
    		var bmonth=document.getElementById("bmonth");
    		var addmonth=document.getElementById("bmonth");
    		if(addmonth.value<12){
    		addmonth.value=parseInt(bmonth.value)+1;
    		addmonth.innerHTML=addmonth.value;
    		}
    		var booking_money=document.getElementById("bmoney");
      		booking_money.value=parseInt(addmonth.value)*${hdetail.hprice};
      		booking_money.innerHTML=booking_money.value;
    	}
    	function submonth(){
    		var bmonth=document.getElementById("bmonth");
    		var submonth=document.getElementById("bmonth");
    		if(submonth.value>1){
    		submonth.value=parseInt(bmonth.value)-1;
    		submonth.innerHTML=addmonth.value;
    		}
    		var booking_money=document.getElementById("bmoney");
      		booking_money.value=parseInt(submonth.value)*${hdetail.hprice};
      		booking_money.innerHTML=booking_money.value;
    	}
    </script>
  <script type="text/javascript">
  	function sum(){
  		var bmonth=document.getElementById("bmonth");
  		var booking_money=document.getElementById("bmoney");
  		booking_money.value=parseInt(bmonth.value)*${hdetail.hprice};
  		booking_money.innerHTML=booking_money.value;
//   		console.log(booking_money.value);
  	}
  </script>
  <script type="text/javascript">
	function createBooking() {
		$.post("<%=basePath%>bookingSubmit.action",
		$("#booking_hole").serialize(),function(data){
		        if(data == "OK"){
		            alert("租房成功！");
// 		            window.location.reload();
					window.location.href="${pageContext.request.contextPath }/bookingMine/list.action";
		        }else{
		            alert("租房失败！");
		            window.location.reload();
		        }
		    });
		}	
  </script>
<!--       <form name=form2 action="" > -->
<!--       葵花宝典  单价:4 元  输入你要购买的数量<input type=text  onchange="javascript:change('0',this.value)"/>  小计：<span id="0" value=4></span><br/> -->
<!--     壮阳大法  单价:8 元  输入你要购买的数量<input type=text   onchange="javascript:change('1',this.value)"/>  小计：<span id="1" value=8></span><br/> -->
     
<!--     <br/> -->
<!--     总计:<span id="totle"></span> -->
     
<!--     </form> -->
	
  </body>
</html>