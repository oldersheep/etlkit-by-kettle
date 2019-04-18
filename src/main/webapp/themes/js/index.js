//iframe高度
$(window).resize(function(){
	frame_down();
})
function frame_down(){
	var wh=$(window).height();
	$("#frame_down").height(wh-70);
}
$(function(){
	frame_down();
//导航图标切换
	$(".menu li a").click(function(){
		$(this).find("img").attr("src",$(this).find("img").attr("alt"));
		$(this).parents("li").siblings().find("img").each(function(){
		$(this).attr("src",$(this).attr("blue"));
		 });
	 })
	$(".menu li a").click(function(){
		$(".menu li a").parent("li").removeClass("active");
		$(this).parent("li").addClass("active");
      })
})
