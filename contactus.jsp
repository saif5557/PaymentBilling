

<!DOCTYPE html>
<html>
<div id="outer">
<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"></jsp:include>

<%
String islogin=(String)session.getAttribute("islogin");
if(islogin==null){
	request.setAttribute("notlogin_msg","Sorry,Please do Login first");
%>
<jsp:forward page="index.jsp"></jsp:forward>
<%
}
%>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<font Style="color:navy;" size="4">Contact Us:</font>
<form method="post" name="myform" id="myform" action="query.jsp">
<table width="100%">
<tr>
<td>
<table width="55%" align="left" >
<tr><td><img src="images/pic01.jpg"/></td>
<td><font style="color:navy;" size="3"><b>Your Query:</b></font><br>
<textarea name="query" style="width: 600px; height:80px"></textarea><br>
<font style="color:navy;" size="2"><b>Email:</b></font>
<input type="text" name="email" style="width:180px;"/>
<input type="submit" value="submit" style="padding:2px 2px">
</td>
</tr>
</table>
</td>
<td>
<table align="right">
<tr align="left"><td><font style="color:navy;" size="3">Contact No.:8887475145</font><br>
<font style="color:navy;" size="3">Email id:gmail.com</font><br>
<font style="color:navy;" size="3">Contact Person:Saif</font>
</td>
</tr>
</table>
</td>
</tr>
</table>
</form>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</div>
</html>