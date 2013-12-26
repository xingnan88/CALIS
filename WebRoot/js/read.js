$(function() {
	$("table tr").click(function() {
		$(this).find("form").submit();
	});
})

