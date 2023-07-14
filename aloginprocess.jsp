<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.omg.CORBA.PUBLIC_NUMBER" %>
<%
 String username=getServletContext().getInitParameter("Username");
 String password=getServletContext().getInitParameter("Password");
 if(request.getParameter("username").equalsIgnoreCase(username)&& request.getParameter("userpass").equalsIgnoreCase(password)){
	 session.setAttribute("islogin","plz sign in first");
 
%>
<jsp:forward page="ahome.jsp"></jsp:forward>
<%
 }
 else{
	 request.setAttribute("Error","Sorry! Username or Password Error. Plz Enter Correct Detail");
	 session.setAttribute("Loginmsg","plz sign in first");
 
%>
<jsp:forward page="admin.jsp"></jsp:forward>
<%} %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>