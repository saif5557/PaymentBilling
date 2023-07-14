<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Modify</title>
<script>
var request;
function sendInfo(){
	var v=document.myform.findName.value;
	var url="findname1.jsp?val="+v;
	if(window.XMLHttpRequest){
		request=new XMLHttpRequest();
	}
	else if(window.ActiveXObject){
		request=new ActiveXObject("Microsoft.XMLHTTP");
	}
	try{
		request.onreadystatechange=getInfo;
		request.open("GET",url,true);
		request.send();
	}catch(e){
		alert("Unable to connect to server");
	}
}

function getInfo(){
	if(request.readyState==4){
		var val=request.responseText;
		document.getElementById('hi').innerHTML=val;
	}
}

function sendGenInfo(name){
	var v=name;
	var url="getgeninfoname.jsp?val="+v;
	if(window.XMLHttpRequest){
		request=new XMLHttpRequest();
	}
	else if(window.ActiveXObject){
		request=new ActiveXObject("Microsoft.XMLHTTP");
	}
	try{
		request.onreadystatechange=getGenInfo;
		request.open("GET",url,true);
		request.send();
	}
	catch(e){
		alert("Unable to connect to server");
	}
}

function getGenInfo(){
	if(request.readyState==4){
		var val=request.responseText;
		document.getElementById('hello').innerHTML=val;
	}
}
</script>
</head>

<div id="outer">
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

<body>
<h3 style="color:navy;" align="center"><b>Consultant:-Saif Mohammad</b></h3>
<div id="box">

<form action="save1.jsp" name="myform" id="hello" method="post">
<table width="100%">
<tr>
<td><table width="55%" align="left" style="table-layout:fixed;">
 <tr><td><table cellspacing=15 cellpadding=15>
 <tr><td><font style="color:navy"><b>Student Detail:</b></font></td></tr>
 <tr><td><b>ID:</b></td><td><input type="text" name="id"></td></tr>
 <tr><td><b>Name:</b></td><td><input type="text" name="name"></td></tr>
 <tr><td><b>Course:</b></td><td><input type="text" name="course"></td></tr>
 <tr><td><b>Mobile:</b></td><td><input type="text" name="mobile"></td></tr>
 <tr><td><b>Father's Name:</b></td><td><input type="text" name="fathername"></td></tr>
 <tr><td><b>Mother's Name:</b></td><td><input type="text" name="mothername"></td></tr>
 <tr><td><b>Qualification:</b></td><td><input type="text" name="qualification"></td></tr>
 <tr><td><b>Date of Birth:</b></td><td><input type="date" name="dateofbirth"></td></tr>
 <tr><td><b>Date of Joining:</b></td><td><input type="date" name="dateofjoining"></td></tr>
 <tr><td><b>Date of Submission:</b></td><td><input type="date" name="feesub"></td></tr>
 <tr><td><b>Paid:</b></td><td><input type="text" name="paid"></td></tr>
 <tr><td><b>Fee:</b></td><td><input type="text" name="fee"></td></tr>
 <tr><td><b>Balance:</b></td><td><input type="text" name="balance"></td></tr>
 <tr><td><b>Address:</b></td><td><input type="text" name="address"></td></tr>
 <tr><td><b>Description:</b></td><td><input type="text" name="description"></td></tr>
 <tr><td><b>Trainer:</b></td><td><input type="text" name="trainer"></td></tr>
 <tr><td></td><td><input type="submit" style="padding:3px 3px" value="Edit & Save"></td></tr> 
 </table>
</table>
<table align="right" width="25%">
<tr>
<td><font style="color:navy;"><b>Search:</b></font><input type="text" name="findName" onkeyup="sendInfo()"></td></tr>
<tr><td><div id='hi'></div></td></tr>
</table>
</td>
</tr>
</table>
</form>

</div>

</body>
<jsp:include page="footer.jsp"></jsp:include>
</div>
</html>