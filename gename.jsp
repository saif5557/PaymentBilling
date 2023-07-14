<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.sql.*" %>
 <%
 String n = request.getParameter("val");
 if(n.length()>0){
	 try{
		 Class.forName("com.mysql.cj.jdbc.Driverf");
		 Connection con = DriverManager.getConnection("jdbc:mysql://localhost/3306"+"user=root&password=Saif@2002");
		 PreparedStatement ps=con.prepareStatement("select * from student2 where name like '"+n+"%'");
		 //ps.setString(1,n);
		 out.print("<br>");
		 ResultSet rs = ps.executeQuery();
		 out.print("<table border='5' cellspacing=5 cellpadding=2 id='myTable'>");
		 out.print("<tr><td><a href='#' name='ID' onmouseover='javascript:getGenInfo(this.name)'><b>ID</b></a></td><td><b>Name</b></td><td><b>Mobile</b></td></tr>");
		 while(rs.next()){
			 out.print("<tr><td><a href='#' name='"+rs.getString(1)+"' onmouseover='javascript:sendGenInfo(this.name)'>"+rs.getString(1)+"</a></td>");
			 out.print("<td>"+rs.getString(2)+"</td>");
			 out.print("<td>"+rs.getString(4)+"</td>");
			 out.print("</tr>");
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