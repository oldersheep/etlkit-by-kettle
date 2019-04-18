function frame_r(){
	var wh=$(window).height();
	var ww=$(window).width();
	var menu_left=$(".menu_l").width();
	$("#frame_r").height(wh-10);
	$("#frame_r").width(ww-menu_left-20);
	$(".menu_l").height(wh-10);
};
$(function(){
	frame_r();
	$(".menu1 li").click(function(){
		$(this).addClass("active").siblings().removeClass("active");
	})
})
$(window).resize(function(){
	frame_r();
	})
