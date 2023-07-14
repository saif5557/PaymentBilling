<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
String n = request.getParameter("val");
if(n.length()>0){
	try{
		Class.forName("com.mysql.cj.jdbc.Driverf");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost/3306"+"user=root&password=Saif@2002");
		PreparedStatement ps=con.prepareStatement("select * from student2 where id='"+n+"'");
		ResultSet rs = ps.executeQuery();
		out.print("<br>");
		out.print("<table border='5' cellspacing=5 cellpadding=2>");
		out.print("<tr><td><b>ID</b></td><td><b>Name</b></td><td><b>Course</b></td><td><b>Mobile</b></td><td><b>Father Name</b></td><td><b>Mother Name</b></td><td><b>Qualification</b></td><td><b>Date of Birth</b></td><td><b>Date of Joining</b></td><td><b>Address</b></td><td><b>Description</b></td><td><b>Trainer</b></td></tr>");
		while(rs.next()){
			out.print("<tr><td>"+rs.getString(1)+"</td>");
			out.print("<td>"+rs.getString(2)+"</td>");
			out.print("<td>"+rs.getString(3)+"</td>");
			out.print("<td>"+rs.getString(4)+"</td>");
			out.print("<td>"+rs.getString(10)+"</td>");
			out.print("<td>"+rs.getString(11)+"</td>");
			out.print("<td>"+rs.getString(13)+"</td>");
			out.print("<td>"+rs.getString(12)+"</td>");
			out.print("<td>"+rs.getString(14)+"</td>");
			out.print("<td>"+rs.getString(9)+"</td>");
			out.print("<td>"+rs.getString(15)+"</td>");
			out.print("<td>"+rs.getString(16)+"</td></tr>");
		}
		out.print("</table>");
		con.close();
	}catch(Exception e){
		e.printStackTrace();
	}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>