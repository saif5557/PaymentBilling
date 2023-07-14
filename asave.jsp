<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
try{
	String username=request.getParameter("username");
	String userpass=request.getParameter("userpass");
	String dateofbirth=request.getParameter("dob");
	String dateofjoining=request.getParameter("doj");
	String salary=request.getParameter("salary");
	String branch=request.getParameter("branch");
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost/3306"+"user=root&password=Saif@2002");
	PreparedStatement ps= con.prepareStatement("insert into payregister(username,,userpass,branch,dateofjoining,dateofbirth,salary) values(?,?,?,?,?,?)");
	
	//ps.setInt(1,2);
	ps.setString(1,username);
	ps.setString(2,userpass);
	ps.setString(3,branch);
	ps.setString(4,dateofbirth);
	ps.setString(5,dateofjoining);
	ps.setString(6,salary);
	
	int s=ps.executeUpdate();
	System.out.print(s);
}catch(SQLException e2){e2.printStackTrace();}
%>
<jsp:forward page="ahome.jsp"></jsp:forward>q
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>