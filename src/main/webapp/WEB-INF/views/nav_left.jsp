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
<meta http-equiv="keywords" content="Pess">
<meta http-equiv="description" content="Pess">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="build/css/layui.css"  media="all">
<link rel="stylesheet" href="themes/css/resit.css"  media="all">
<link rel="stylesheet" href="themes/css/index.css"  media="all">
<script type="text/javascript" src="themes/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="build/lay/dest/layui.all.js"></script>
<script type="text/javascript" src="themes/js/nav_left.js"></script>

<script type="text/javascript">
	var index;
	function colseAll(){
		layer.close(index);
	}
	function waitLoading(_url){
		index = layer.load(1, {
			shade: [0.2,'#4b7b97'] //0.2透明度 
		});
		$("#frame_r").attr("src",_url);
	}
</script>
</head>
<body style="">
<div class="wrap layui-clear">
	<div class="menu_l fl"  style=" height:100%;overflow-y:auto;overflow-x:hidden;"  >
		<ul class="menu1" >
          <li><a onclick="waitLoading('dbsource/list/1')" style="cursor:pointer;" target="frame_r" class="pub_btn btn-job1" >数据源</a>
          </li>
          <li><a onclick="waitLoading('job/list?pageNum=1')" style="cursor:pointer;" target="frame_r" class="pub_btn btn-job1" >作业列表</a>
          </li>
          <li><a onclick="waitLoading('schedule/list?pageNum=1')" style="cursor:pointer;" target="frame_r" class="pub_btn btn-job1">调度管理</a>
          </li>
          <li><a onclick="waitLoading('tree/zinit')" style="cursor:pointer;" target="frame_r" class="pub_btn btn-job1">流程图</a>
          </li>
          <li><a onclick="waitLoading('logging/list')" style="cursor:pointer;" target="frame_r" class="pub_btn btn-job1">执行统计</a>
          </li>
  		</ul>
	</div>
	<iframe id="frame_r" class="fl" name="frame_r" src="" onload="colseAll()" scrolling="auto" frameborder="0"  style=" padding-left:10px;width:100%; height:100%;overflow:auto;" ></iframe>
</div>
</body>
</html>