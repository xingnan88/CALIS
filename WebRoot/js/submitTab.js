$(function() {
	
	//提交表单，返回数据
	$("#firstForm").submit();
	
	//点击title下的a是触发事件，提交表单
	$("#title a").click(function() {
		$("#content").val($(this).text());
		$("#tabForm").submit();
	});
	
	//list下的tr被点击时，链接地址Patent_read?id=" + inputNode，调action
	$(".list tr").click(function() {
		var inputNode=$(this).find("input").val();
		$.get("Patent_read?id=" + inputNode,callback);
	});
	
	//鼠标移动到title下的a时改变其样式
	$("#title a").hover(
		function() {
			$(this).css({"color":"#F30","font-size":"19px"});
		},
		function() {
			$(this).css({"color":"#000","font-size":"14px"});
		}
			);
	
	//鼠标移动到list下的td时改变tr样式
	$(".list td").hover(
			function() {
				$(this).parent().css({"background-color":"#FFF68F"});
			},
			function() {
				$(this).parent().css({"background-color":"#FFFAFA"});
			}
				);
});

//回到函数，取到返回的html数据，显示在list div中
function callback(data) {
	$(".list").html(data);
}