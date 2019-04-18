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
<title>调度列表页</title>
<link rel="stylesheet" href="build/css/layui.css"  media="all">
<link rel="stylesheet" href="themes/css/resit.css"  media="all">
<link rel="stylesheet" href="themes/css/index.css"  media="all">
<script type="text/javascript" src="themes/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="build/layui.js"></script>
<script type="text/javascript" src="themes/js/public.js"></script>
<script type="text/javascript" src="commons/common.js"></script>
<script type="text/javascript">
</script>
<style type="text/css">
.tip{padding:10px;font-weight:bold;font-size:14px;line-height:24px;}
.task_tit{marin-bottom:10px;}
.task_time li{float:left;margin-right:20px;}
.task_content{font-size:12px;font-weight:normale;margin-top:10px;}
</style>
</head>
<body >
<div id="wrap">
	<div class="tip layui-clear">
		<p class="task_tit">任务名称：${taskName }</p>
		<ul class="clearfix task_time">
			<li>开始时间：${startTime } </li>
			<li>结束时间：${endTime }</li>
		</ul>
		<p class="task_tit">执行结果：${result }</p>
		<P class="task_content">详细日志信息：${message }</P>
	</div>
</div>
<script>
layui.use(['laypage', 'layer'], function(){
  var laypage = layui.laypage
  ,layer = layui.layer;
});

</script>
<!--排序-->
<script src="src/OrderTable/js/TableOrder.js" type="text/javascript"></script>
<script src="src/OrderTable/js/ZhCN_Pinyin.min.js" type="text/javascript"></script>
</body>
</html>