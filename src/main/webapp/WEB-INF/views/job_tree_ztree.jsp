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
  <title>作业树</title>
  <link rel="stylesheet" href="build/css/layui.css"  media="all">
  <link rel="stylesheet" href="themes/css/resit.css"  media="all">
  <link rel="stylesheet" href="themes/css/index.css"  media="all">
  <link rel="stylesheet" href="themes/css/data_source_new.css"  media="all">
<!--   <link rel="stylesheet" href="src/zTree/css/zTreeStyle/zTreeStyle.css" type="text/css"> -->
  <link rel="stylesheet" href="src/zTree/css/metroStyle/metroStyle.css" type="text/css">
  
  <script type="text/javascript" src="themes/js/jquery-1.7.2.min.js"></script>
  <script type="text/javascript" src="src/zTree/js/jquery.ztree.all.min.js"></script>
  <!--  <script type="text/javascript" src="src/zTree/js/jquery.ztree.excheck.js"></script>
	  <script type="text/javascript" src="src/zTree/js/jquery.ztree.exedit.js"></script>-->
  <script type="text/javascript" src="commons/common.js"></script>
  
  <script type="text/javascript">
  	var setting = {
 		view: {
			showLine: false,
			selectedMulti: false
		},
		data: {
			simpleData: {
				enable: true
			}
		}
	};

	var zNodes = ${json };

	$(document).ready(function(){
		$.fn.zTree.init($("#job_tree"), setting, zNodes);
	});
  </script>
</head>
<body>
  <div id="wrap" >
    <div class="rel_wrap clearfix">
      <div class="rel_left fl" >
        <ul id="job_tree" class="ztree"></ul>
      </div>
		
      <div class="rel_right">
        <iframe id="frame_right" name="frame_right" src="job_flow" scrolling="auto" frameborder="0"  style="width:100%; height:100%; overflow:auto;" >
        </iframe>
      </div>
    </div>
  </div> 

</body>
</html>