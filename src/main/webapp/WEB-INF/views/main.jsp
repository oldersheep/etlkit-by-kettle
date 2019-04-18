<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<base href="<%=basePath%>">
	<meta charset="utf-8">
	<title>ETL</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link rel="stylesheet" href="build/css/layui.css"  media="all">
	<link rel="stylesheet" href="themes/css/resit.css"  media="all">
	<link rel="stylesheet" href="themes/css/index.css"  media="all">
	<script type="text/javascript" src="build/layui.js"></script>
	<script type="text/javascript" src="themes/js/jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="themes/js/index.js"></script>
	<script type="text/javascript" src="themes/js/nav_left.js"></script>

</head>
<body style="overflow:hidden;">
	<div id="layui_wrap" >
		<!-- 头部 -->
		<div class="layui_head layui-clear">
			<div class="logo fl">略略略</div>
			<div class="fl">
					<div class="top_menu layui-clear">
						<div class="fr"><a href="#" class="pub_btn exit">退出</a></div>
						<div class="fr">当前用户：<span>IT运维部</span>&gt;<span>小王</span></div>
					</div>
			</div>
		</div>
		<div id="down">
			<div class="">
				<iframe id="frame_down" name="frame_down" src="nav_left" scrolling="no" frameborder="0"  style="width:100%; height:100%; overflow:hidden;" >
				</iframe>
			</div>
		</div>

	</div>
</body>
</html>