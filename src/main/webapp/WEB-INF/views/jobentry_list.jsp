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
<title>新建元数据</title>
<link rel="stylesheet" href="build/css/layui.css"  media="all">
<link rel="stylesheet" href="themes/css/resit.css"  media="all">
<link rel="stylesheet" href="themes/css/index.css"  media="all">
<script type="text/javascript" src="themes/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="build/layui.js"></script>
<script type="text/javascript" src="themes/js/public.js"></script>

</head>
<body >
<div id="wrap">
  <div class="tip layui-clear"><div class="fl"><div class="layui-form-item"></div></div></div>
  <div class="layui-form">
    <table class="layui-table ser_tab" id="tab_new">
      <colgroup>
        <col >
        <col >
        <col >
        <col >
        <col >
      </colgroup>
      <thead>
        <tr>
          <th><a id="idTitle">序号<span class="layui-nav-more"></span></a></th>
          <th><a id="name">作业名称<span class="layui-nav-more"></span></a></th>
          <th><a id="jobStatus">作业项代码<span class="layui-nav-more"></span></a></th>
          <th><a id="modifiedUser">作业项描述<span class="layui-nav-more"></span></a></th>
          <th><a id="modifiedDate">作业项名称<span class="layui-nav-more"></span></a></th>
        </tr>
      </thead>
      <tbody>
        <c:forEach items="${pageInfo.list}" var="jobentry"  varStatus="id">
          <tr>
            <td>${id.count }</td>
			<td>${jobentry.jobname }</td>
			<td>${jobentry.code } </td>
			<td>${jobentry.description }</td>
			<td>${jobentry.jobentryname }</td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
    <div class="page"><div id="demo1"></div></div>
  </div>
  <input id="idJob" value="${idJob }" type="hidden">
  <input id="pages" value="${pageInfo.pages }" type="hidden">
  <input id="pageNum" value="${pageInfo.pageNum }" type="hidden">
</div>
<script>
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
    	  location.href = "job/detail/"+$("#idJob").val()+"?pageNum="+obj.curr;
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
</script>

<!--排序-->
<script src="src/OrderTable/js/TableOrder.js" type="text/javascript"></script>
<script src="src/OrderTable/js/ZhCN_Pinyin.min.js" type="text/javascript"></script>
<script type="text/javascript">
	TableOrderOper.Init("tab_new", 0, {});
	TableOrderOper.SetOrder("idTitle", 1, { DataType: "int" });
	TableOrderOper.SetOrder("name", 2, {  DataType: "string" });
	TableOrderOper.SetOrder("jobStatus", 3, { DataType: "string"});
	TableOrderOper.SetOrder("modifiedUser", 4, { DataType: "string"});
	TableOrderOper.SetOrder("modifiedDate", 5, { DataType: "date" });
</script>

</body>
</html>