/**
 * ajax提交form表单统一使用这个方法
 * 
 * data：要提交的参数，如果是提交表单，则将表单序列化即可。
 * excuteUrl：提交的url
 * returnUrl：回调执行返回的URL
 */
function ajaxPostSubmit(data,excuteUrl,returnUrl){
	alert(returnUrl);
	$.ajax({
		url : excuteUrl,
		type : "post",
		async : false,
		data : data,
		success : function(data) {
			if (data.status == 200) {
				layer.alert('保存成功', {
					  skin: 'layui-layer-molv' //样式类名
					  ,closeBtn: 0
					}, function(){
						location.href = returnUrl;
					  });
			} else {
				layer.msg(data.msg, {icon: 5,time: 3000});
			}
		}
	});
}

/**
 * 删除调用的公共方法
 * 
 * ajaxPostSubmit("ids="+ids,"authRole/deleteAuthRole","authRole/authRoleList");
 * 
 * data：要提交的参数，如果是提交表单，则将表单序列化即可。
 * excuteUrl：提交的url
 * returnUrl：回调执行返回的URL
 */
function ajaxPublicDel(data,excuteUrl,returnUrl){
	$.ajax({
		url : excuteUrl,
		type : "post",
		async : false,
		data : data,
		success : function(data) {
			if (data.status == 200) {
				layer.alert('删除成功！', { skin: 'layui-layer-molv', icon: 1, closeBtn: 1},
					function(){
						location.href = returnUrl;
					}
				);
			} else {
				layer.msg(data.msg, {icon: 5,time: 3000});
			}
		}
	});
}

/**
 * ajax提交遮罩内form表单统一使用这个方法
 * 应用场景：在使用layui的情况下，在iframe的页面中的弹出层遮罩了包含iframe的页面
 * 		  有可能将是李某专用了啊啊啊啊啊啊
 * 返回的data.status：200正确、202警告感叹号、212疑问问好、其他错误哭脸
 * data：要提交的参数
 * 		*如果是提交表单，则将表单序列化即可。
 * 		*否则，为{key1:value1,key2:value2}
 * excuteUrl：提交的url
 * #returnUrl：回调执行返回的URL
 */
function ajaxShadePostSubmit(data,excuteUrl){
	$.ajax({
		url : excuteUrl,
		type : "post",
		async : false,
		data : data,
		success : function(data) {
			if (data.status == 200) {
				parent.layer.alert(data.msg , { skin: 'layui-layer-molv', icon: 1, closeBtn: 0
					}, function(){
						parent.$("#frame_r").attr("src",parent.$("#frame_r").attr("src"));
				});

			} else if (data.status == 202){
				layer.msg(data.msg, {icon: 7,time: 3000});
			} else if (data.status == 212){
				layer.msg(data.msg, {icon: 3,time: 3000});
			} else {
				layer.msg(data.msg, {icon: 5,time: 3000}); //错误
			}
		}
	});
}
/**
 * 遮罩删除调用的公共方法
 * 应用场景：在使用layui的情况下，在iframe的页面中的弹出层遮罩了包含iframe的页面
 * 		  有可能将是李某专用了啊啊啊啊啊啊
 * data：要提交的参数，如果是提交表单，则将表单序列化即可。
 * excuteUrl：提交的url
 * #returnUrl：回调执行返回的URL
 */
function ajaxShadePublicDel(data,excuteUrl){
	$.ajax({
		url : excuteUrl,
		type : "post",
		async : false,
		data : data,
		success : function(data) {
			if (data.status == 200) {
				parent.layer.alert('删除成功！', { skin: 'layui-layer-molv', icon: 1, closeBtn: 0},
					function(){
						parent.$("#frame_r").attr("src",parent.$("#frame_r").attr("src"));
					}
				);
			} else {
				parent.layer.msg(data.msg, {icon: 5,time: 3000});
			}
		}
	});
}