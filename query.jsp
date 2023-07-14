<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
try{
	String query=request.getParameter("query");
	String email=request.getParameter("email");
	Class.forName("com.mysql.cj.jdbc.Driverf");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/3306"+"user=root&password=Saif@2002");
	PreparedStatement ps=con.prepareStatement("insert into query value(?,?)");
	ps.setString(1,query);
	ps.setString(2,email);
	int s=ps.executeUpdate();
}catch(Exception e){e.printStackTrace();}
%>
<jsp:forward page="contactus.jsp"></jsp:forward>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>