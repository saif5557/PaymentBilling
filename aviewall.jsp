<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
String n=request.getParameter("val");
if(n.length()>0){
	try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/3306"+"user=root&password=Saif@2002");
	PreparedStatement ps=con.prepareStatement("select * from payregister where id='"+n+"'");
	//ps.setString(1,n);
	ResultSet rs=ps.executeQuery();
	out.print("<br>");
	out.print("<table border='5' cellspacing='5' cellpadding='2'>");
	out.print("<tr><td><a href='#' name='ID' onmouseover='javascript:viewAllInfo(this.name)'><b>ID</b></a></td><td><b>User Name</b></td><td><b>Password</b></td><td><b>Date of Joining</b></td><td><b>Date of Birth</b></td><td><b>Salary</b></td><td><b>Remove</b></td></tr>");
	while(rs.next()){
		out.print("<tr><td><a href='#' name='"+rs.getString(1)+"' onmouseover='javascript:viewAllInfo(this.name)'>"+rs.getString(1)+"</a></td>");
		out.print("<td>"+rs.getString(2)+"</td>");
		out.print("<td>"+rs.getString(3)+"</td>");
		out.print("<td>"+rs.getString(5)+"</td>");
		out.print("<td>"+rs.getString(6)+"</td>");
		out.print("<td>"+rs.getString(7)+"</td>");
		out.print("<td><a href='aremove.jsp?val="+rs.getString(1)+"' name='"+rs.getString(1)+"'>Delete</a></td>");
		out.print("</tr>");
	}
	out.print("</table>");
	con.close();
	}catch(Exception e){e.printStackTrace();};
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