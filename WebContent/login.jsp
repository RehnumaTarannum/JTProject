<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home Page</title>
</head>

</script>
<body>
	<h3>
		<center>Java Training Project</center>
	</h3>
	<hr>
	<form method="post" action="log.jsp" style="margin-left: 35%;">

		<table cellpadding="0" cellspacing="0" width="60%"">


			<tr>
				<td bgcolor="#FAFAF9" style="padding-left: 10px;">Email ID</td>
				<td><input type="text" name="email" maxlegth="30" value="" /></td>
			</tr>

			<tr>
				<td bgcolor="#FAFAF9" style="padding-left: 10px;">Password</td>
				<td><input type="password" name="pass" maxlegth="30" value="" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Login" /></td>
				<td><input type="reset" value="Reset" /></td>
			</tr>
		</table>
	</form>
	<br>
	<center>
		Yet Not Registered!! <a href="register.jsp">RegisterHere</a>
	</center>


</body>
</html>