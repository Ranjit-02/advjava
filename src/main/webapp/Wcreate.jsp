<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String course = request.getParameter("course");
	String email = request.getParameter("email");
	String address = request.getParameter("address");
	String phone = request.getParameter("phone");
	
	
	try {

		Class.forName("com.mysql.jdbc.Driver");
		System.out.println(1);
		Connection con = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/javadb", "root", "Ranjith@0946");
		System.out.println(2);
		Statement ps = con.createStatement();
		System.out.println(3);
		ps.executeUpdate("insert into students values(420, 'Qwerty')");
		System.out.println(4);
		con.close();
		System.out.println(5);
	} catch (Exception e) {
		System.out.println(e);
	}
	out.print(id + "<br><br>");
	out.print(name + "<br><br>");
	out.print(course + "<br><br>");
	out.print(email + "<br><br>");
	out.print(address + "<br><br>");
	out.print(phone + "<br><br>");
	
	%>
</body>
</html>