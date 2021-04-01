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
	<link rel='stylesheet' href='<%=basePath%>css/admin_main.css'>
	<link rel='stylesheet' href='<%=basePath%>css/bootstrap.min.css'>
	<link rel='stylesheet' href='<%=basePath%>css/admin_common.css'>
<script type="text/javascript">
function startTime()   
{   
    var today=new Date();//定义日期对象   
    var yyyy = today.getFullYear();//通过日期对象的getFullYear()方法返回年    
    var MM = today.getMonth()+1;//通过日期对象的getMonth()方法返回年    
    var dd = today.getDate();//通过日期对象的getDate()方法返回年     
    var hh=today.getHours();//通过日期对象的getHours方法返回小时   
    var mm=today.getMinutes();//通过日期对象的getMinutes方法返回分钟   
    var ss=today.getSeconds();//通过日期对象的getSeconds方法返回秒   
    // 如果分钟或小时的值小于10，则在其值前加0，比如如果时间是下午3点20分9秒的话，则显示15：20：09   
    MM=checkTime(MM);
    dd=checkTime(dd);
    mm=checkTime(mm);   
    ss=checkTime(ss);    
    var day; //用于保存星期（getDay()方法得到星期编号）
    if(today.getDay()==0)   day   =   "星期日 " 
    if(today.getDay()==1)   day   =   "星期一 " 
    if(today.getDay()==2)   day   =   "星期二 " 
    if(today.getDay()==3)   day   =   "星期三 " 
    if(today.getDay()==4)   day   =   "星期四 " 
    if(today.getDay()==5)   day   =   "星期五 " 
    if(today.getDay()==6)   day   =   "星期六 " 
    document.getElementById('nowDateTimeSpan').innerHTML=yyyy+"-"+MM +"-"+ dd +" " + hh+":"+mm+":"+ss+"   " + day;   
    setTimeout('startTime()',1000);//每一秒中重新加载startTime()方法 
}   

function checkTime(i)   
{   
    if (i<10){
        i="0" + i;
    }   
      return i;
}  
</script>
</head>
<%@ include file="admin_menu.jsp" %>
<body onload="startTime()">	
    <!--/sidebar-->
    <div class="main-wrap">
        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font">&#xe06b;</i><span>欢迎使用天马租房管理系统。</span></div>
        </div>
        <div class="result-wrap">
            <div class="result-title">
                <h1>快捷操作</h1>
            </div>
            <div class="result-content">
                <div class="short-wrap">
                    <a href="admin_useradd.jsp"><i class="icon-font">&#xe001;</i>新增用户</a>
                    <a href="admin_houseadd.jsp"><i class="icon-font">&#xe005;</i>新增房源</a>
                    <a href="admin_message.jsp"><i class="icon-font">&#xe041;</i>新增评论分类</a>
                </div>
            </div>
        </div>
        <div class="result-wrap">
            <div class="result-title">
                <h1>系统基本信息</h1>
            </div>
            <div class="result-content">
                <ul class="sys-info-list">
                    <li>
                        <label class="res-lab">操作系统</label><span class="res-info">win10</span>
                    </li>
                    <li>
                        <label class="res-lab">运行环境</label><span class="res-info">SSM + Tomcat</span>
                    </li>
                    <li>
                        <label class="res-lab">系统设计-版本</label><span class="res-info">v-1.1</span>
                    </li>
                    <li>
                        <label class="res-lab">北京时间</label>
                        <span class="res-info">
                        	<font><span id="nowDateTimeSpan" class="res-info"></span></font>
                        </span>
                    </li>
                    <li>
                        <label class="res-lab">服务器域名/IP</label><span class="res-info">localhost [ 127.0.0.1 ]</span>
                    </li>
                    <li>
                        <label class="res-lab">Host</label><span class="res-info"></span>
                    </li>
                </ul>
            </div>
        </div>
        <div class="result-wrap">
            <div class="result-title">
                <h1>使用帮助</h1>
            </div>
            <div class="result-content">
                <ul class="sys-info-list">
                </ul>
            </div>
        </div>
    </div>
    <!--/main-->

</body>
</html>