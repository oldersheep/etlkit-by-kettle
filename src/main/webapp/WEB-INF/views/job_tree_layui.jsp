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
  <meta http-equiv="keywords" content="Pess">
  <meta http-equiv="description" content="Pess">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="renderer" content="webkit">
  <link rel="stylesheet" href="build/css/layui.css"  media="all">
  <link rel="stylesheet" href="themes/css/resit.css"  media="all">
  <link rel="stylesheet" href="themes/css/index.css"  media="all">
  <link rel="stylesheet" href="themes/css/data_source_new.css"  media="all">
  <script type="text/javascript" src="themes/js/jquery-1.7.2.min.js"></script>
  <script type="text/javascript" src="build/layui.js"></script>
  <script type="text/javascript" src="commons/common.js"></script>
  <script type="text/javascript">
	layui.use(['tree', 'layer'], function(){
	  var layer = layui.layer
	  ,$ = layui.jquery;
	  
	  var nodes = ${json };
	  var taskId = ${taskId };
	  layui.tree({
	    elem: '#job_tree' //指定元素
	    ,nodes: nodes
	    ,click: function(node){
	    	// 由后台逻辑拼接的，子作业的children为null，空目录的children为空
	    	if(node.children == null){
				var data={'taskId': taskId, 'idJob': node.id};
				var excuteUrl="schedule/linkToJob";
				var returnUrl="schedule/list?pageNum=1";
				ajaxShadePostSubmit(data,excuteUrl);
			}
	      }  
	  });
	  
	});
  </script>
</head>
<body>
	<ul id="job_tree"></ul>
</body>
</html>