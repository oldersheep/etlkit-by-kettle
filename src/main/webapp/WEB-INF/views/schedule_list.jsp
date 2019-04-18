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
<style >
.layui-form input[type=checkbox], .layui-form input[type=radio], .layui-form select {
    display: block;
}
.a_2{width:20px;height:20px;}
</style>
<script type="text/javascript">
$(function(){
	$(".a_2").click(function(){
		var flag = $(this).attr("checked");
		if(flag=='checked'){
			$(".a_2").attr("checked",false);
			$(this).attr("checked",true);
		} else{
			$(".a_2").attr("checked",false);
			$(this).attr("checked",false);
		}
		
	})
})
	function addScheduleDialog(url){
		var height = $(window).height();
		var width = $(window).width()/3;
		parent.layer.open({
	        type: 2,  
	        title: '添加调度', 
	        offset:'rt',
	        maxmin: false,
	        resize: false,
	        move: false,
	        skin: 'layui-layer-molv',  
	        shadeClose: false, //点击遮罩关闭层  
	        area : [width,height],  
	        content:url
	  });
	}
	function linkToJob(taskId){
		var height = $(window).height()*2/3;
		var width = $(window).width()/3;
		parent.layer.open({
	        type: 2,  
	        title: '关联作业', 
	        offset:'t',
	        maxmin: false,
	        resize: false,
	        move: false,
	        skin: 'layui-layer-molv',  
	        shadeClose: false, //点击遮罩关闭层  
	        area : [width,height],  
	        content:'tree/build?taskId='+taskId  // 构造layui的tree，在JobTreeController.java中
	  });
	}
	
	function startSchedule(){
		var cks=$("input[name='ck']:checked");
		if (typeof($(cks[0]).val()) == "undefined"){
			layer.msg("请选择一条要执行的调度！", {icon: 5,time: 1000});
			return false;
		}
		if ($(cks[0]).attr("status") == "1"){
			layer.msg("调度已经启动，不能重复调用哦。。", {icon: 7,time: 1000});
			return false;
		}
		
		var data = {'taskId': $(cks[0]).val()};
	    var excuteUrl="schedule/openSchedule";
	    
 	    ajaxShadePostSubmit(data,excuteUrl);
 	    
 	    return false;
	}
	function pauseSchedule(){
		var cks=$("input[name='ck']:checked");
		if (typeof($(cks[0]).val()) == "undefined"){
			layer.msg("请选择一条要停止的调度！", {icon: 5,time: 1000});
			return false;
		}
		if ($(cks[0]).attr("status") == "0"){
			layer.msg("调度并未启动，你告诉我怎么停？", {icon: 7,time: 1000});
			return false;
		}
		
		var data = {'taskId': $(cks[0]).val()};
	    var excuteUrl="schedule/pauseSchedule";
	    
 	    ajaxShadePostSubmit(data,excuteUrl);
 	    
 	    return false;
	}
	function deleteSchedule(){
		var cks=$("input[name='ck']:checked");
		if (typeof($(cks[0]).val()) == "undefined"){
			layer.msg("请选择一条要删除的调度！", {icon: 5,time: 1000});
			return false;
		}
		if ($(cks[0]).attr("status") == "1"){
			layer.msg("调度为启动状态，请停止后再进行删除操作！", {icon: 7,time: 1000});
			return false;
		}
		
		var data = {'taskId': $(cks[0]).val()};
	    var excuteUrl="schedule/deleteSchedule";
	    
	    parent.layer.open({
	       type: 1,
	       title: false, //不显示标题栏
	       closeBtn: false,
	       area: '300px;',
	       shade: 0.3,
	       id: 'LAY_layuipro', //设定一个id，防止重复弹出
	       btn: ['确定删除', '再考虑一下'],
	       moveType: 1, //拖拽模式，0或者1
	       content: '<div style="padding: 50px; line-height: 22px; background-color: #393D49; color: #fff; font-weight: 300;">确定要删除此调度么？ ^_^</div>'
	       ,
	       yes: function(){
	           parent.layer.closeAll();
	           ajaxShadePublicDel(data,excuteUrl);
	       }
	    });
 	    
 	    return false;
	}
	
	function viewLog(taskId){
		
		$.ajax({
			url : "schedule/checkLog",
			type : "post",
			async : false,
			data : {"taskId":taskId},
			success : function(data) {
				if (data.status == 200) {
					var height = $(window).height();
					var width = $(window).width()/2;
					parent.layer.open({
				        type: 2,  
				        title: '日志详情', 
				        offset:'t',
				        maxmin: false,
				        resize: false,
				        move: false,
				        skin: 'layui-layer-molv',  
				        shadeClose: false, //点击遮罩关闭层  
				        area : [width,height],  
				        content:'schedule/viewLog?taskId='+taskId 
				  });
				} else if (data.status == 201){
					layer.msg(data.msg, {icon: 7,time: 3000});
				} 
			}
		});
		
	}
</script>
</head>
<body >
<div id="wrap">

  <div class="tip layui-clear">
		<div class="fl">
			<button class="layui-btn" onclick="addScheduleDialog('schedule/addSchedule')"><i class="layui-icon">&#58964;&nbsp;</i>新建调度</button>
			<button class="layui-btn" onclick="startSchedule()"><i class="layui-icon">&#xe652;&nbsp;</i>开始调度</button>
			<button class="layui-btn" onclick="pauseSchedule()"><i class="layui-icon">&#xe651;&nbsp;</i>停止调度</button>
			<button class="layui-btn" onclick="deleteSchedule()"><i class="layui-icon">&#xe640;&nbsp;</i>删除调度</button>
		</div>
	</div>
  <div class="layui-form">
    <table class="layui-table ser_tab" id="tab_new">
      <colgroup>
        <col width="50">
        <col width="80">
        <col >
        <col >
        <col >
        <col >
        <col >
        <col >
        <col >
        <col width="223">
      </colgroup>
      <thead>
        <tr>
         <th></th>
          <th><a id="currentState">状态<span class="layui-nav-more"></span></a></th>
          <th><a id="scheduleName">任务名称<span class="layui-nav-more"></span></a></th>
          <th><a id="minute">分<span class="layui-nav-more"></span></a></th>
          <th><a id="hour">时<span class="layui-nav-more"></span></a></th>
          <th><a id="dayofmonth">天<span class="layui-nav-more"></span></a></th>
          <th><a id="dayofweek">周<span class="layui-nav-more"></span></a></th>
          <th><a id="month">月<span class="layui-nav-more"></span></a></th>
          <th><a id="currentState">关联作业名<span class="layui-nav-more"></span></a></th>
          <th>操作</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach items="${pageInfo.list}" var="schedule"  varStatus="id">
          <tr>
            <td><input class="a_2" name="ck" lay-skin="primary" type="checkbox" status="${schedule.currentState }" value="${schedule.taskId}"></td>
            <td align="center">
              <c:choose>
                <c:when test="${schedule.currentState == 1}">
                  <a style="cursor:pointer;" title="启用"><span class="state start"></span></a>
                </c:when>
                <c:otherwise>
                  <a style="cursor:pointer;" title="禁用"><span class="state forbind"></span> </a>
                </c:otherwise>
              </c:choose>
            </td>
            <td>${schedule.taskName }</td>
            <td>${schedule.minute } </td>
            <td>${schedule.hour }</td>
            <td>${schedule.dayofmonth }</td>
            <td>${schedule.dayofweek } </td>
            <td>${schedule.month }</td>
            <td>${schedule.jobName }</td>
            <td>
              <div class="site-demo-button" style="margin-bottom: 0;">
                <button onclick="linkToJob('${schedule.taskId }')" data-method="notice" class="layui-btn layui-btn-small"><i class="layui-icon">&#xe64c;&nbsp;</i>关联作业</button>
                <button onclick="viewLog('${schedule.taskId }')" data-method="notice" class="layui-btn layui-btn-small layui-btn-normal"><i class="layui-icon">&#xe60b;&nbsp;</i>查看日志</button>
              </div>
            </td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
    <div class="page"><div id="demo1"></div></div>
  </div>
  <input id="pages" value="${pageInfo.pages }" type="hidden">
  <input id="pageNum" value="${pageInfo.pageNum }" type="hidden">
</div>
<script>
var index;
$(function(){
	parent.layer.closeAll();
})
layui.use(['laypage', 'layer'], function(){
  var laypage = layui.laypage
  ,layer = layui.layer;

  //显示分页
  laypage({
    cont: 'demo1',
    pages: $("#pages").val(), //通过后台拿到的总页数
    curr: $("#pageNum").val(), //当前页
    jump: function(obj, first){ //触发分页后的回调
      if(!first){ //点击跳页触发函数自身，并传递当前页：obj.curr
    	  index = parent.layer.load(1, {
        	  shade: [0.2,'#4b7b97'] //0.1透明度的白色背景
    	  });
    	  location.href = "schedule/list?pageNum="+obj.curr;
      }
    }
  });
});

</script>

<!--排序-->
<script src="src/OrderTable/js/TableOrder.js" type="text/javascript"></script>
<script src="src/OrderTable/js/ZhCN_Pinyin.min.js" type="text/javascript"></script>
<script type="text/javascript">
	TableOrderOper.Init("tab_new", 0, {});
	TableOrderOper.SetOrder("currentState", 1, { DataType: "int" });
	TableOrderOper.SetOrder("scheduleName", 2, {  DataType: "string" });
	TableOrderOper.SetOrder("minute", 3, { DataType: "string"});
	TableOrderOper.SetOrder("hour", 4, { DataType: "string"});
	TableOrderOper.SetOrder("dayofmonth", 5, { DataType: "string" });
	TableOrderOper.SetOrder("dayofweek", 3, { DataType: "string"});
	TableOrderOper.SetOrder("month", 4, { DataType: "string"});

</script>
</body>
</html>