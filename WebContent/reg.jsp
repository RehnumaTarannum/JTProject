<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="consultAddPack.jtProjectDAO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration Logic Page</title>
</head>
<body>
	<%
		if (request.getParameter("email").isEmpty() && request.getParameter("pass").isEmpty()) {
			out.println("Invalid Email or Password <a href='register.jsp'>try again</a>");
		} else if (request.getParameter("pass").isEmpty()) {
			out.println("Invalid Password <a href='register.jsp'>try again</a>");
		} else if (request.getParameter("email").isEmpty()) {
			out.println("Invalid Email <a href='register.jsp'>try again</a>");
		} else {
			jtProjectDAO jt = new jtProjectDAO();
			jt.setUsername(request.getParameter("uname"));
			jt.setEmail(request.getParameter("email"));
			jt.setContactNo(request.getParameter("number"));
			jt.setPassword(request.getParameter("pass"));

			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection(
						"jdbc:mysql://localhost:3306/projectDB?autoReconnect=true&useSSL=false", "root",
						"root");
				PreparedStatement st = con.prepareStatement(
						"Insert into members(uname, pass, email, number) values ('" + jt.getUsername() + "','"
								+ jt.getPassword() + "','" + jt.getEmail() + "','" + jt.getContactNo() + "')");
				int i = st.executeUpdate();
				if (i > 0) {
					out.print("Registration Successfull! " + "<a href='login.jsp'>Go to Login</a>");
				} else {
					out.print("You are already registered ! " + "<a href='login.jsp'>Go to Login</a>");
					response.sendRedirect("login.jsp");
				}
			} catch (Exception e) {
				out.print("You are already registered ! " + "<a href='login.jsp'>Go to Login</a>");
				//out.println(e);
			}
		}
	%>
</body>
</html>