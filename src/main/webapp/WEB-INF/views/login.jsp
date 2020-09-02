<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form class="form-horizontal" id="login">
			<div class="form-group form-group-lg">
				<label class="col-sm-2 control-label">name</label>
				<div class="col-sm-10">
					<input type=text class="form-control" id="name">
				</div>
			</div>
			<div class="form-group form-group-lg">
				<label class="col-sm-2 control-label">password</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="password">
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" id="bth-login"
						class="btn btn-primary btn-lg">login</button>
				</div>
			</div>
		</form>
<script>
	jQuery(document).ready(function($) {

		$("#login").submit(function(event) {
			enableLoginButton(false);
			event.preventDefault();

			searchViaAjax();

		});

	});
	function searchViaAjax() {

		var Login = {}
		Login["name"] = $("#name").val();
		Login["password"] = $("#password").val();

		$.ajax({
			type : "POST",
			url : "${home}login/api/getwelcome",
			data : JSON.stringify(search),
			timeout : 100000,
			success : function(data) {
				console.log("SUCCESS: ", data);
				display(data);
			},
			error : function(e) {
				console.log("ERROR: ", e);
				display(e);
			},
			done : function(e) {
				console.log("DONE");
				enableSearchButton(true);
			}
		});

	}
	</script>
<!-- <h1>Welcome to login page</h1>
<form action = "login" method = "POST">
<input type = "text" name = "name">
<input type = "password" name = "password">
<input type = "submit" value = "login">
</form> -->
</body>
</html>