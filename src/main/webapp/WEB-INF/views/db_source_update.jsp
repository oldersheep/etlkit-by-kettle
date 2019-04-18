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
<title>新建源数据</title>
<link rel="stylesheet" href="build/css/layui.css"  media="all">
<link rel="stylesheet" href="themes/css/resit.css"  media="all">
<link rel="stylesheet" href="themes/css/index.css"  media="all">
<link rel="stylesheet" href="themes/css/data_source_new.css"  media="all">
<script type="text/javascript" src="themes/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="build/layui.js"></script>
<script type="text/javascript" src="commons/common.js"></script>
</head>
<body >
<div id="wrap" >
  <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>基本信息</legend>
  </fieldset>
  <form id="frm" class="layui-form data_new" action="">
    <div class="layui-form-item">
      <div class="layui-inline">
        <label class="layui-form-label"><span class="red">*</span>连接名称：</label>
        <div class="layui-input-inline">
          <input name="name" value="${rDatabase.name }" lay-verify="required|string" autocomplete="off" class="layui-input" type="text">
        </div>
      </div>
      <div class="layui-inline">
        <label class="layui-form-label"><span class="red">*</span>连接类型：</label>
        <div class="layui-input-inline">
          <select  name="idDatabaseType" lay-verify="required" lay-search="">
            <option value="">直接选择或搜索选择</option>
            <option value="39">MYSQL</option>
            <option value="4">Oracle</option>
            <option value="16">MS SQL</option>
            <option value="0"></option>
          </select>
       </div>
      </div>
      <div class="layui-inline">
        <label class="layui-form-label"><span class="red">*</span>主机名称：</label>
        <div class="layui-input-inline">
       	  <input type="hidden" name="idDatabase" value="${rDatabase.idDatabase}">
          <input name="hostName" value="${rDatabase.hostName }" lay-verify="required|string" autocomplete="off" class="layui-input" type="text">
        </div>
      </div>
      <div class="layui-inline">
        <label class="layui-form-label"><span class="red">*</span>数据库名称：</label>
        <div class="layui-input-inline">
          <input name="databaseName" value="${rDatabase.databaseName }" lay-verify="required|string" autocomplete="off" class="layui-input" type="text">
        </div>
      </div>
      <div class="layui-inline">
        <label class="layui-form-label"><span class="red">*</span>端口号：</label>
        <div class="layui-input-inline">
            <input name="port" value="${rDatabase.port }" lay-verify="required|string" autocomplete="off" class="layui-input" type="text">
        </div>
      </div>
      <div class="layui-inline">
        <label class="layui-form-label"><span class="red">*</span>用户名：</label>
        <div class="layui-input-inline">
            <input name="username" value="${rDatabase.username }" lay-verify="required|string" autocomplete="off" class="layui-input" type="text">
        </div>
      </div>
      <div class="layui-inline">
        <label class="layui-form-label"><span class="red">*</span>密码：</label>
        <div class="layui-input-inline">
            <input name="password" value="${rDatabase.password }" autocomplete="off" class="layui-input" type="password">
        </div>
      </div>
      <div class="submit_btn">
        <button class="layui-btn layui-btn-normal" lay-submit="" lay-filter="demo11" >测试连接</button>
        <button class="layui-btn" lay-submit="" lay-filter="demo1">保存</button>
        <button type="reset" class="layui-btn layui-btn-primary">取消</button>
      </div>
    </div>
    	<input type="hidden" id="idDBT" value="${rDatabase.idDatabaseType }" >
    	<input type="hidden" id="pageNum" value="${pageNum }" >
  </form>
</div>
<script>
	$(function() {
		var idDatabaseType=$("#idDBT").val();
		$("select[name='idDatabaseType']").val(idDatabaseType);
	});
	layui.use(['form', 'layedit', 'laydate'], function(){
	  var form = layui.form()
	  ,layer = layui.layer
	  ,layedit = layui.layedit
	  ,laydate = layui.laydate;
	
	  //创建一个编辑器
	  var editIndex = layedit.build('LAY_demo_editor');
	
	  //自定义验证规则
	  form.verify({
	    title: function(value){
	      if(value.length < 5){
	        return '标题至少得5个字符啊';
	      }
	    }
	    ,pass: [/(.+){6,12}$/, '密码必须6到12位']
	    ,content: function(value){
	      layedit.sync(editIndex);
	    }
	  });
	
	  //监听指定开关
	  form.on('switch(switchTest)', function(data){
	    layer.msg('开关checked：'+ (this.checked ? 'true' : 'false'), {
	      offset: '6px'
	    });
	    layer.tips('温馨提示：请注意开关状态的文字可以随意定义，而不仅仅是ON|OFF', data.othis)
	  });
	
	  //监听提交
	  form.on('submit(demo1)', function(data){
		  var data = $("#frm").serialize();
		  var pageNum=$("#pageNum").val();
		  var excuteUrl="dbsource/updateDbSource";
		  var returnUrl="dbsource/list/"+pageNum;
		  ajaxPostSubmit(data,excuteUrl,returnUrl);
		  return false;
	  });
	//连接测试提交
	  form.on('submit(demo11)', function(data){
		  var data = $("#frm").serialize();	//提交form表单参数
		  var excuteUrl="dbsource/testDbConnection";
		  $.ajax({
				url : excuteUrl,
				type : "post",
				async : false,
				data : data,
				success : function(data) {
					if (data.status == 200) {
						layer.msg('连接成功');
					} else {
						layer.msg('连接失败');
					}
				}
		   });
		  return false; 
	  });
	});
	
	$(".layui-btn-primary").click(function(){
		var pageNum=$("#pageNum").val();	
		location.href = "dbsource/list/"+pageNum;	//回退当前页
	});

</script>
</body>
</html>