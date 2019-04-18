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
<title>流程图</title>
<!--[if lt IE 9]>
<?import namespace="v" implementation="#default#VML" ?>
<![endif]-->
<!--<link rel="stylesheet" type="text/css" href="codebase/GooFlow2.css"/>-->
<link rel="stylesheet" type="text/css" href="flows/my.css">

<script type="text/javascript" src="themes/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="flows/my.js"></script>
<script type="text/javascript">
var jsondata = ${flow };
var width = ${width };

var hh=$(window).height();

var ww=$(window).height()<width ? width : $(window).height();

var property={
	width:ww,
	height:hh-40,
	useOperStack:true 
};

$(document).ready(function(){
	var demo=$.createGooFlow($("#demo2"),property);
	demo.loadData(jsondata);
});

</script>
</head>
<body>
<div id="demo2" style="margin:10px;"></div>
</body>
</html>