<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Servlet JSP JavaScript Login</title>

<script type="text/javascript">
	function validateData() {
		var userNameValue = document.getElementById('userid').value.trim();
		if (userNameValue == "") {
			alert('please enter username');
			document.getElementById('userid').focus();
			return false;
		}
		var passwordField = document.getElementById('password').value.trim();
		if (passwordField == "") {
			alert('please enter password');
			document.getElementById('password').focus();
			return false;
		}
	}
</script>

</head>
<body>
	<h1 align="center">This is a Servlet JSP JavaScript Loin page</h1>
	<form action="login" method="post">
		<table align="center">
			<tr>
				<td>username:</td>
				<td><input name="usernameTB" id="userid" type="text"></td>
			</tr>
			<tr>
				<td>password:</td>
				<td><input name="passwordTB" id="password" type="password"></td>
			</tr>
			<tr style="color: red">
				<td colspan="2">
					<%
						String errorMessage = (String) request.getAttribute("errMsg");
						if (errorMessage != null) {
					%> <%=errorMessage%> <%
 	}
 %>
				</td>
			</tr>
			<tr>
				<td>
					<input value="login" type="submit" onclick="return validateData();">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>