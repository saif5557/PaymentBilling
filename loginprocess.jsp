<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="org.omg.CORBA.PUBLIC_MEMBER" %>
 <%@ page import="java.sql.*" %>
 <%@ page import="java.util.*" %>
 <%
 String username=request.getParameter("username");
 System.out.print(username);
 String userpass=request.getParameter("userpass");
 String branch=request.getParameter("branch");
 boolean status=false;
 try{
	 Class.forName("com.mysql.cj.jdbc.Driverf");
	 Connection con=DriverManager.getConnection("jdbc:mysql://localhost/3306"+"user=root&password=Saif@2002");
	 PreparedStatement ps=con.prepareStatement("select * from payregister where username=? aned userpass=? and branch=?");
	 ps.setString(1,username);
	 ps.setString(2,userpass);
	 ps.setString(3,branch);
	 ResultSet rs=ps.executeQuery();
	 status = rs.next();
	 if(status){
		 System.out.print("hi");
		 username=rs.getString(2);
		 session.setAttribute("username",String.valueOf(username));
		 session.setAttribute("islogin","Please sign in first");
		 %>
		 <jsp:forward page="home.jsp"></jsp:forward>
		 <% 
	 }
	 else{
	 System.out.print("hi");
	 request.setAttribute("Error","Sorry! Username or Password Error. Please Enter Correct Detail");
	 session.setAttribute("Loginmsg","Please sign in first");
	 %>
	 <jsp:forward page="index.jsp"></jsp:forward>
	 <% 
	 }
 }
 catch(Exception e){
	 e.printStackTrace();
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