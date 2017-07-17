$(document).ready(function() {
	$(".btn_delete").click(function(e) {
		var prompt = confirm("Are you sure?");
		if(prompt == false) {
			e.preventDefault();
		}
	});
});