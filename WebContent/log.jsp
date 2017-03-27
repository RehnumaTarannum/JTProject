<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="consultAddPack.jtProjectDAO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login logic Page</title>
</head>
<body>

	<%
		
		if (request.getParameter("email").isEmpty() && request.getParameter("pass").isEmpty()) {
			out.println("Invalid Email or Password <a href='login.jsp'>try again</a>");
		} else if (request.getParameter("pass").isEmpty()) {
			out.println("Invalid Password <a href='login.jsp'>try again</a>");
		} else if (request.getParameter("email").isEmpty()) {
			out.println("Invalid Email <a href='login.jsp'>try again</a>");
		} else {
			jtProjectDAO jt = new jtProjectDAO();
			jt.setEmail(request.getParameter("email"));
			jt.setPassword(request.getParameter("pass"));
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection(
						"jdbc:mysql://localhost:3306/projectDB?autoReconnect=true&useSSL=false", "root",
						"root");
				PreparedStatement st = con.prepareStatement("select * from members where email='" + jt.getEmail()
						+ "' and pass='" + jt.getPassword() + "'");
				ResultSet rs;
				rs = st.executeQuery();
				if (rs.next()) {
					session.setAttribute("userid", jt.getEmail());
					response.sendRedirect("profile.jsp");
				} else {
					out.println("You are not registered ! <a href='login.jsp'>try again</a>");
				}
			} catch (Exception e) {
				out.println(e);
			}
		}
	%>

</body>
</html>