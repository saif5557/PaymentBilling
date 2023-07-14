<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
String n=request.getParameter("val");
if(n.length()>0){
	try{
		Class.forName("com.mysql.cj.jdbc.Driverf");
		Connection con =DriverManager.getConnection("jdbc:mysql://localhost/3306"+"user=root&password=Saif@2002");
		PreparedStatement ps=con.prepareStatement("select * from student2 where id='"+n+"'");
		ResultSet rs= ps.executeQuery();
		out.print("<br>");
		out.print("<form action='save1.jsp' name='myform' id='myform'>");
		out.print("<table cellspacing=15 cellpadding=15>");
		while(rs.next()){
			out.print("<tr><td><font style='color:navy'><b>Student Detail:</b></font></td></tr>");
			out.print("<tr><td><b>ID:</b></td><td><input type='text' name='id' value='"+rs.getString(1)+"'></input></td></tr>");
			out.print("<tr><td><b>Name:</b></td><td><input type='text' name='name' value='"+rs.getString(2)+"'></input></td></tr>");
			out.print("<tr><td><b>Course:</b></td><td><input type='text' name='course' value='"+rs.getString(3)+"'></input></td></tr>");
			out.print("<tr><td><b>Mobile:</b></td><td><input type='text' name='mobile' value='"+rs.getString(4)+"'></input></td></tr>");
			out.print("<tr><td><b>Father's Name:</b></td><td><input type='text' name='fathername' value='"+rs.getString(10)+"'></input></td></tr>");
			out.print("<tr><td><b>Mother's Name:</b></td><td><input type='text' name='mothername' value='"+rs.getString(11)+"'></input></td></tr>");
			out.print("<tr><td><b>Qualification:</b></td><td><input type='text' name='qualification' value='"+rs.getString(13)+"'></input></td></tr>");
			out.print("<tr><td><b>Date of Birth:</b></td><td><input type='date' name='dateofbirth' value='"+rs.getString(12)+"'></input></td></tr>");
			out.print("<tr><td><b>Date of Joining:</b></td><td><input type='date' name='dateofjoining' value='"+rs.getString(14)+"'></input></td></tr>");
			out.print("<tr><td><b>Date of Submission:</b></td><td><input type='text' name='feesub' value='"+rs.getString(5)+"'></input></td></tr>");
			out.print("<tr><td><b>Paid:</b></td><td><input type='text' name='paid' value='"+rs.getString(7)+"'></input></td></tr>");
			out.print("<tr><td><b>Fee:</b></td><td><input type='text' name='fee' value='"+rs.getString(6)+"'></input></td></tr>");
			out.print("<tr><td><b>Balance:</b></td><td><input type='text' name='balance' value'"+rs.getString(8)+"'></input></td></tr>");
			out.print("<tr><td><b>Address:</b></td><td><input type='text' name='address' value='"+rs.getString(9)+"'></input></td></tr>");
			out.print("<tr><td><b>Description:</b></td><td><input type='text' name='description' value='"+rs.getString(15)+"'></input></td></tr>");
			out.print("<tr><td><b>Trainer:</b></td><td><input type='text' name='trainer' value='"+rs.getString(16)+"'></input></td></tr>");
			out.print("<tr><td></td><td><input style='padding: 3px 3px' value='Edit & Save' type='submit'></td></tr>");
			out.print("</form>");
		}
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