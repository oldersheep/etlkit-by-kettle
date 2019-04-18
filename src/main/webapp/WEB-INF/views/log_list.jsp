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
<title>统计执行</title>
<link rel="stylesheet" href="build/css/layui.css"  media="all">
<link rel="stylesheet" href="themes/css/resit.css"  media="all">
<link rel="stylesheet" href="themes/css/index.css"  media="all">
<script type="text/javascript" src="themes/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="build/lay/dest/layui.all.js"></script>
<script type="text/javascript" src="build/layui.js"></script>
<script src="layui/build/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="themes/js/public.js"></script>
<style type="text/css">
.pro_tit{position:relative;top:-5px;margin-left:10px}
.layui-progress{margin:0 70px;}
.pro_val{position:relative;margin-left:10px;top:-12px;right:15px;min-width:20px;padding:3px 2px;border-radius:5px;text-align:center;color:#fff;}
.pro_val_one{background:#FF5722}
.pro_val_two{background:#F7B824;}
.pro_val_three{background:#009688}
</style>
<script type="text/javascript">
$(function(){
	var total = ${total };
	var error = ${error };
	var right = parseInt(total) - parseInt(error) ;
	if(parseInt(total)<10){
		total = 10;
	}
	var perError = Math.round( error / total * 100) + "%";
	var perRight = Math.round( right / total * 100) + "%";
	$("#errorId").attr("lay-percent",perError);
	$("#rightId").attr("lay-percent",perRight);
	$("#rightVal").text(right);
})
</script>
</head>
<body >
<div id="wrap">
  <fieldset class="layui-elem-field layui-field-title" style="margin-top: 10px;">
    <legend style="font-size:14px">状态视图（任务运行情况总计）</legend>
  </fieldset>

<div class="clearfix">
	<div class="fl pro_tit">错误中止:</div>
	<div class="layui-progress" >
	  <div class="layui-progress-bar layui-bg-red" id="errorId" lay-percent=""></div>
	</div>
	<div class="fr pro_val pro_val_one ">${error }</div>
</div>
<br>
<div class="clearfix">
	<div class="fl pro_tit">警&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;告:</div>
	<div class="layui-progress">
	  <div class="layui-progress-bar layui-bg-orange" lay-percent="0%"></div>
	</div>
	<div class="fr pro_val pro_val_two">0</div>
</div>
<br>
<div class="clearfix">
	<div class="fl pro_tit">正确完成:</div>
	<div class="layui-progress">
	  <div class="layui-progress-bar layui-bg-green" id="rightId" lay-percent=""></div>
	</div>
	<div class="fr pro_val pro_val_three" id="rightVal"></div>
</div>
  <fieldset class="layui-elem-field layui-field-title" style="margin-top: 10px;">
    <legend style="font-size:14px">历史视图（任务运行明细）</legend>
  </fieldset>
  <form class="layui-form" action="logging/list" id="frm" method="post">
    <div class="layui-form-pane" style="margin-top: 15px;">
      <div class="layui-form-item">
        <label class="layui-form-label">范围选择</label>
        <div class="layui-input-inline">
          <input class="layui-input" placeholder="开始时间" id="LAY_demorange_s" name="startTime" value="${startTime }">
        </div>
        <div class="layui-input-inline">
          <input class="layui-input" placeholder="结束时间" id="LAY_demorange_e" name="endTime" value="${endTime }">
        </div>
        <div class="layui-inline">
	      <label class="layui-form-label">任务名称</label>
	      <div class="layui-input-inline">
	        <input class="layui-input" placeholder="任务名称" name="taskName" autocomplete="off" value="${taskName }">
	      </div>
       </div>
	   <input type="hidden" id="hiddenPageNum" name="pageNum">
       <div class="layui-inline">
	      <button  class="layui-btn layui-btn-radius" ><i class="layui-icon">&#xe615;&nbsp;</i>搜索</button>
       </div>
      </div>
    </div>
  </form>
  <div class="layui-form">
    <table class="layui-table" lay-even="" lay-skin="row" id="tab_new">
      <colgroup>
        <col width="100">
        <col >
        <col >
        <col >
        <col >
        <col >
        <col >
      </colgroup>
      <thead>
        <tr>
          <th><a id="result">结果<span class="layui-nav-more"></span></a></th>
          <th><a id="taskName">任务名称<span class="layui-nav-more"></span></a></th>
          <th><a id="endTime">完成时间<span class="layui-nav-more"></span></a></th>
          <th><a id="stepname">步骤名称<span class="layui-nav-more"></span></a></th>
          <th><a id="linesInput">输入条数<span class="layui-nav-more"></span></a></th>
          <th><a id="linesOutput">输出条数<span class="layui-nav-more"></span></a></th>
          <th><a id="errors">错误数<span class="layui-nav-more"></span></a></th>
        </tr>
      </thead>
      <tbody>
        <c:forEach items="${pageInfo.list}" var="result"  varStatus="id">
          <tr>
            <td align="center">
              <c:choose>
                <c:when test="${result.result == 1}">
                  <a href="javascript:void(0)" title="成功"><span class="state start"></span></a>
                </c:when>
                <c:otherwise>
                  <a href="javascript:void(0)" title="失败"><span class="state forbind"></span> </a>
                </c:otherwise>
              </c:choose>
            </td>
            <td>${result.taskName }</td>
            <td>${result.endTime }</td>
            <td>${result.stepname }</td>
            <td>${result.linesInput }条</td>
            <td>${result.linesOutput }条</td>
            <td>${result.errors }条</td>
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
layui.use(['form', 'layedit', 'laydate', 'laypage', 'element', 'layer'], function(){
  var $ = layui.jquery
  ,element = layui.element() //Tab的切换功能，切换事件监听等，需要依赖element模块
  ,form = layui.form()
  ,laypage = layui.laypage
  ,layer = layui.layer
  ,layedit = layui.layedit
  ,laydate = layui.laydate;

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
    	  // location.href = "job/list?pageNum="+obj.curr;
    	  $("#hiddenPageNum").val(obj.curr);
    	  $("#frm").submit();
      }
    }
  });
  
  /*日期范围选择 ------start */
  var start = {
    min: '2000-01-01 00:00:00'
    ,max: '2099-06-16 23:59:59'
    ,istoday: false
    ,choose: function(datas){
      end.min = datas; //开始日选好后，重置结束日的最小日期
      end.start = datas //将结束日的初始值设定为开始日
    }
  };
  
  var end = {
    min: laydate.now()
    ,max: '2099-06-16 23:59:59'
    ,istoday: false
    ,choose: function(datas){
      start.max = datas; //结束日选好后，重置开始日的最大日期
    }
  };
  
  document.getElementById('LAY_demorange_s').onclick = function(){
    start.elem = this;
    start.istime = true;
    start.format = 'YYYY-MM-DD hh:mm:ss';
    laydate(start);
  }
  document.getElementById('LAY_demorange_e').onclick = function(){
    end.elem = this;
    end.istime = true;
    end.format = 'YYYY-MM-DD hh:mm:ss';
    laydate(end);
  }
  /*日期范围选择 ------end */
});
</script>

<!--排序-->
<script src="src/OrderTable/js/TableOrder.js" type="text/javascript"></script>
<script src="src/OrderTable/js/ZhCN_Pinyin.min.js" type="text/javascript"></script>
<script type="text/javascript">
	TableOrderOper.Init("tab_new", 0, {});
	TableOrderOper.SetOrder("result", 1, { DataType: "string" });
	TableOrderOper.SetOrder("taskName", 2, {  DataType: "string" });
	TableOrderOper.SetOrder("endTime", 3, { DataType: "string"});
	TableOrderOper.SetOrder("stepname", 4, { DataType: "string"});
	TableOrderOper.SetOrder("linesInput", 5, {  DataType: "int" });
	TableOrderOper.SetOrder("linesOutput", 6, { DataType: "int"});
	TableOrderOper.SetOrder("errors", 7, { DataType: "int"});
</script>
</body>
</html>