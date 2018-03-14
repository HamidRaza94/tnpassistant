function MarqueeStop() {
	document.getElementById("marquee").stop();
}

function MarqueeStart() {
	document.getElementById("marquee").start();
}

$(document).ready(function() {	
	$("#button_submit").click(function(e) {
		var user_type = $("#login_type_select").val();
		var id = $("#id").val();
		var pass = $("#pass").val();
		
		if(user_type == null || id == null || pass == null) {
			alert("Every Fields are mandatory!!!");
			return false;
		}
		
		else {
			alert(user_type +" " +id +" " +pass);
			e.preventDefault();
			$.ajax({
				type: "POST",
				url: "../indexPage/connection.jsp",
				dataType: "json",
				data: {user_type: user_type, id: id, pass: pass},
				success: function(result) {
					if(result.isValid) {
						
						if(user_type == "Student")
							window.location.replace("../student.jsp");
						else if(user_type == "Admin")
							window.location.replace("../admin.jsp");
						else
							window.location.replace("../recruiter.jsp");
						alert("hiss");
						alert(resul.isValid);
					}
					else {
						$("#id").val(null);
						$("#pass").val(null);
						alert("Check your username and password!");
					}
				},
				error: function(jqXHR, exception) {
			        var msg = '';
			        if (jqXHR.status === 0) {
			            msg = 'Not connect.\n Verify Network.';
			        } else if (jqXHR.status == 404) {
			            msg = 'Requested page not found. [404]';
			        } else if (jqXHR.status == 500) {
			            msg = 'Internal Server Error [500].';
			        } else if (exception === 'parsererror') {
			            msg = 'Requested JSON parse failed.';
			        } else if (exception === 'timeout') {
			            msg = 'Time out error.';
			        } else if (exception === 'abort') {
			            msg = 'Ajax request aborted.';
			        } else {
			            msg = 'Uncaught Error.\n' + jqXHR.responseText;
			        }
			        alert(msg);
			    }
			});
		}
	});
});