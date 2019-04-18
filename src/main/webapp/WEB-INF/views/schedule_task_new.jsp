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
<form class="layui-form" action="">
<br /><br /><br />
  <div class="layui-form-item">
    <label class="layui-form-label">任务名称：</label>
    <div class="layui-input-block">
      <input type="text" name="taskName" value="${mScheduleTask.taskName }"  lay-verify="required|string" placeholder="请输入任务名称" autocomplete="off" class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">分</label>
    <div class="layui-input-block">
      <input type="text" name="minute" value="${mScheduleTask.minute}" placeholder="Crontab第一个*的位置，范围1～59" autocomplete="off" class="layui-input">
    </div>
  </div>
  <div class="layui-form-item day">
    <div class="layui-inline">
      <label class="layui-form-label">时</label>
      <div class="layui-input-block">
        <input type="text" name="hour" value="${mScheduleTask.hour}" placeholder="Crontab第二个*的位置，范围1-23,0代表0点" autocomplete="off" class="layui-input">
      </div>
    </div>
  </div>
  <div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">日</label>
      <div class="layui-input-block">
        <input type="text" name="dayofmonth" value="${mScheduleTask.dayofmonth}" placeholder="Crontab第三个*的位置，范围1-31" autocomplete="off" class="layui-input">
      </div>
    </div>
  </div>
  <div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">月</label>
      <div class="layui-input-inline">
        <input type="text" name="month" value="${mScheduleTask.month}" placeholder="Crontab第四个*的位置，范围1-12" autocomplete="off" class="layui-input">
      </div>
    </div>
  </div>
  <div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">周</label>
      <div class="layui-input-inline">
        <input type="text" name="dayofweek" value="${mScheduleTask.dayofweek}" placeholder="Crontab第五个*的位置,范围0-6" autocomplete="off" class="layui-input">
      </div>
    </div>
  </div>
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
  </div>
</form>

<script>
layui.use(['form', 'layedit', 'laydate'], function(){
  var form = layui.form()
  ,layer = layui.layer
  ,layedit = layui.layedit
  ,laydate = layui.laydate;

  //监听提交
  form.on('submit(formDemo)', function(data){
    var data = $(".layui-form").serialize();
    var excuteUrl="schedule/saveSchedule";
    
    ajaxShadePostSubmit(data,excuteUrl);
    
	return false;
  });

});
</script>
</body>
</html>
