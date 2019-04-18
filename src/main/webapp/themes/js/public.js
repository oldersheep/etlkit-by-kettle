// JavaScript Document
$(function(){
/////////点击新增 下拉
	$(".down_menu").hide();
	$(".date_new").click(function(){
		$(".down_menu").show();
	})
	$(".down_menu").hover(function(){},function(){
		$(this).hide();
	});
//////////table点击排序按钮
	$("#tab_new thead th a").click(function(){
		$(this).find("span").toggleClass("layui-nav-more_1");
	})
///////////新建元数据库页面
	$(".item_list li").click(function(){
		if($(this).hasClass("d_bg")){
			$(this).removeClass("d_bg");
		}else{
			$(this).addClass("d_bg");
		}
	})



/*发布管理   启用 禁用按钮*/
		$(".btn-forbind").live("click",function(){
			$(this).parents("tr").find(".state").removeClass("start").addClass("forbind");
			$(this).text("启用").removeClass("btn-forbind").addClass("btn-start");
		})
		$(".btn-start").live("click",function(){
			$(this).parents("tr").find(".state").removeClass("forbind").addClass("start");
			$(this).text("禁用").removeClass("btn-start").addClass("btn-forbind")

		})
/////////////////////////////选择资源 添加
		$("dl dd").click(function(){
			if($(this).hasClass("c_bg")){
				$(this).removeClass("c_bg");
			}else{
				$(this).addClass("c_bg");
			}
		})
/////////////////双击
		$(".left_box dl dd").live("dblclick",(function(){
			$(this).appendTo(".right_box dl");
		})
	)
		$(".right_box dl dd").live("dblclick",(function(){
			$(this).appendTo(".left_box dl");
		}))
		///////点击添加到右侧

		$(".btn_right").live("click",function(){
			$(".left_box dl dd.c_bg").each(function(){
				$(this).appendTo(".right_box dl");
			})
			$(".right_box dl dd").removeClass("c_bg");
		})
		///////点击添加到右侧
		$(".btn_left").live("click",function(){
			$(".right_box dl dd.c_bg").each(function(){
				$(this).appendTo(".left_box dl");
			})
			$(".left_box dl dd").removeClass("c_bg");
		})
		/////////点击全部添加到右侧
		$(".btn_allright").click(function(){
			$(".left_box dl dd").appendTo(".right_box dl");
			$(".right_box dl dd").removeClass("c_bg");
		})
		/////////点击全部添加到右侧
		$(".btn_allleft").click(function(){
			$(".right_box dl dd").appendTo(".left_box dl");
			$(".left_box dl dd").removeClass("c_bg");
		})
/////////////新建发布管理添加数
	  $(".lay_tree dd").live("click",function(){
			if($(this).hasClass("ad_bg")){
				$(this).removeClass("ad_bg");
			}else{
				$(this).addClass("ad_bg");
			}
		})




		///////点击添加到左侧
		$(".btn_left").live("click",function(){
			$(".right_box dl dd.c_bg").each(function(){
				$(this).appendTo(".left_box dl");
			})
			$(".left_box dl dd").removeClass("c_bg");
		})

})
