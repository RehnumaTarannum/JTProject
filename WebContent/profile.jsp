<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User Profile Page</title>
</head>
<body>
	<%
		if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
	%>
	You are not logged in
	<br />
	<a href="login.jsp">Please Login</a>
	<%
		} else {
	%>

	<%
		try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection(
						"jdbc:mysql://localhost:3306/projectDB?autoReconnect=true&useSSL=false", "root",
						"root");
				PreparedStatement st = con.prepareStatement("select uname, number from members where email='"
						+ session.getAttribute("userid").toString() + "'");
				ResultSet rs;
				rs = st.executeQuery();
				if (rs.next()) {
					out.println("<h3><center>"+ rs.getString("uname") +"'s Homepage </center></h3>");
					out.println("<hr>");
					out.println("<p style=margin-left:42%"+">");
					out.println("Name: " + rs.getString("uname"));
					out.println("<br>");
					out.println("Email: " + session.getAttribute("userid"));
					out.println("<br>");
					out.println("Contact: " + rs.getString("number")+"</p>");
					
				}

			} catch (Exception e) {
				out.println(e);
			}
	%>
	
	<a style="margin-left:42%;" href='logout.jsp'>Log out</a>
	<%
		}
	%>
</body>
</html>