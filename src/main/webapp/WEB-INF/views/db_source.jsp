<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
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
<title>源数据</title>
<link rel="stylesheet" href="build/css/layui.css"  media="all">
<link rel="stylesheet" href="themes/css/resit.css"  media="all">
<link rel="stylesheet" href="themes/css/index.css"  media="all">
<script type="text/javascript" src="themes/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="build/layui.js"></script>
<script type="text/javascript" src="themes/js/public.js"></script>
<script type="text/javascript" src="commons/common.js"></script>
<script type="text/javascript">
	function delById(id){
		layer.confirm('确定要删除此数据源吗？', {
			  btn: ['确定','取消'] //按钮
			}, function(){
				var data = "id="+id;
				var excuteUrl = "dbsource/delDbSource";
				var pageNum=$("#pageNum").val();
				var returnUrl = "dbsource/list/"+pageNum; //回退当前页
				ajaxPublicDel(data,excuteUrl,returnUrl);
			}
		);
	}
</script>
</head>
<body >
<div id="wrap" >
	<div class="tip layui-clear">
		<div class="fl">
			<a href="javaScript:insert()" class="layui-btn date_new"><i class="layui-icon">&#58964;</i>新建关系数据库</a>
			<button class="layui-btn" onclick="batchDel()"><i class="layui-icon">&#58944;</i>删除</button>
		</div>
		<div class="fl">
			<div class="layui-form-item">
				<form id="frm11" action="">
				<div class="layui-input-inline menu_input">
					<input  name="name" id=title value="${rDatabase.name}" lay-verify="title" autocomplete="off" 
					placeholder="连接名称" class="layui-input" type="text">
					<input type="hidden" name="pageNum" id="pageNum" value="${pageInfo.pageNum }" >
				</div>
				<button class="layui-btn" onclick="condition()">搜索</button>
				</form> 
			</div>
		</div>
	</div>

	<div class="layui-form">
		<table class="layui-table ser_tab" id="tab_new">
			<colgroup>
				<col width="50">
				<col >
				<col >
				<col >
				<col >
				<col >
				<col >
				<col width="60">
			</colgroup>
			<thead>
				<tr>
					<th><input name="" lay-skin="primary" lay-filter="allChoose" type="checkbox"></th>
					<th ><a href="javascript:void(0)" id="cName">连接名称<span class="layui-nav-more"></span></a></th>
					<th ><a href="javascript:void(0)" id="cType">连接类型<span class="layui-nav-more"></span></a></th>
					<th ><a href="javascript:void(0)" id="cHostname">主机名<span class="layui-nav-more"></span></a></th>
					<th ><a href="javascript:void(0)" id="cDbName">数据库名<span class="layui-nav-more"></span></a></th>
					<th ><a href="javascript:void(0)" id="cPort">端口号<span class="layui-nav-more"></span></a></th>
					<th ><a href="javascript:void(0)" id="cUsername">用户名<span class="layui-nav-more"></span></a></th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${pageInfo.list}" var="dbSource"  varStatus="id">
					<tr>
				 		<td><input name="ck" value='${dbSource.idDatabase }' lay-skin="primary" type="checkbox"></td>
				 		<td><a href="dbsource/edit/${dbSource.idDatabase }/${pageInfo.pageNum }" title="编辑数据源">${dbSource.name }</a></td>
				 		<td>${dbSource.dbType } </td>
				 		<td>${dbSource.hostName }</td>
				 		<td>${dbSource.databaseName } </td>
				 		<td>${dbSource.port }</td>
				 		<td>${dbSource.username }</td>
				 		<td>
				 			<div class="site-demo-button" style="margin-bottom: 0;">
				 				<button onclick="delById('${dbSource.idDatabase }')" data-method="notice" class="layui-btn layui-btn-small">删除</button>
				 			</div>
				 		</td>
				 	</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="page"><div id="demo1"></div></div>
 	</div>
 	<input type="hidden" id="pages" value="${pageInfo.pages }" >
</div>
<script>
	
	layui.use(['laypage', 'layer'], function(){
	  var laypage = layui.laypage
	  ,layer = layui.layer;
	
	//显示分页
	  laypage({
	    cont: 'demo1', //容器。值支持id名、原生dom对象，jquery对象。【如该容器为】：<div id="page1"></div>
	    pages: $("#pages").val(), //通过后台拿到的总页数
	    curr: $("#pageNum").val(), //当前页
	    jump: function(obj, first){ //触发分页后的回调
	      if(!first){ //点击跳页触发函数自身，并传递当前页：obj.curr
	    	  $("#pageNum").val(obj.curr);
	      	   	$("#frm11").submit();
	      }
	    }
	  });
	});
	/*table全选*/
	layui.use('form', function(){
	  var $ = layui.jquery, form = layui.form();
	
	  //全选
	  form.on('checkbox(allChoose)', function(data){
	    var child = $(data.elem).parents('table').find('tbody input[type="checkbox"]');
	    child.each(function(index, item){
	      item.checked = data.elem.checked;
	    });
	    form.render('checkbox');
	  });
	
	});
	
	//添加数据:跳转添加数据页
	function insert(){
		var pageNum=$("#pageNum").val();
		location.href="dbsource/insert/"+pageNum;
	}
	//连接名称模糊查询
	function condition(){
		$("#pageNum").val(1);
  	   	$("#frm11").submit();
	}
	//数据源批量删除
	function batchDel(){
		var id=getAllChecked();
		layer.confirm('确定要删除此数据源吗？', {
			  btn: ['确定','取消'] //按钮
			}, function(){
				var data = "id="+id;
				var excuteUrl = "dbsource/delDbSource";
				var pageNum=$("#pageNum").val();
				var returnUrl = "dbsource/list/"+pageNum; //回退当前页
				ajaxPublicDel(data,excuteUrl,returnUrl);
			}
		);
	}
	
	//获取所有被选择的多选框的值
	function getAllChecked() {
		var returnText = "";
		var cks = $('input[name="ck"]:checked');
		if (cks.length != 0) {
			cks.each(function() {
				if ($(this).val() != "") {
					returnText += $(this).val() + ",";
				}
			});
			returnText = returnText.substring(0, returnText.length - 1);
		}
		if(returnText==null || returnText==""){
			parent.layer.close(index);  //关闭弹出层
		}else{
			return returnText;
		}
	}
	
</script>

<!--排序-->
<script src="src/OrderTable/js/TableOrder.js" type="text/javascript"></script>
<script src="src/OrderTable/js/ZhCN_Pinyin.min.js" type="text/javascript"></script>
<script type="text/javascript">
	TableOrderOper.Init("tab_new", 0, {});
	TableOrderOper.SetOrder("cName", 1, { DataType: "string" });
	TableOrderOper.SetOrder("cType", 2, {  DataType: "string" });
	TableOrderOper.SetOrder("cHostname", 3, { DataType: "string"});
	TableOrderOper.SetOrder("cDbName", 4, { DataType: "string"});
	TableOrderOper.SetOrder("cPort", 5, { DataType: "int" });
	TableOrderOper.SetOrder("cUsername", 6, { DataType: "string"});
</script>

</body>
</html>