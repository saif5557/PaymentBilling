<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
String n=request.getParameter("val");
if(n.length()>0){
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost/3306"+"user=root&password=Saif@2002");
		PreparedStatement ps=con.prepareStatement("delete from payregister where id='"+n+"'");
		ps.executeUpdate();
		con.close();
		request.setAttribute("msg","Record Has been Successfullly Deleted");
	}catch(Exception e){e.printStackTrace();}
}
%>
<jsp:forward page="ahome.jsp"></jsp:forward>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>