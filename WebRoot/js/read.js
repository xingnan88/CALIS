$(function() {
	$("table tr").click(function() {
		var inputNode=$(this).find("input").val();
		$.get("Patent_read?id=" + inputNode,callback);
	});
})

function callback(data) {
	$("#divtable").html(data);
}