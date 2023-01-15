<%@page import="java.sql.*"%>
<%@page import="com.anuwat.*"%>
<%@include file="changeDetailsHeader.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Message Us</title>
</head>
<body>
<%
String msg = request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">เปลี่ยนเบอร์โทรศัพท์สำเร็จ !</h3>
<%
}
%>
<%
if("wrong".equals(msg))
{
%>
<h3 class="alert">password ไม่ถูกต้อง!</h3>
<%
}
%>
<form action="changeMobileNumberAction.jsp" method="post">
 <h3>Enter Your New Mobile Number</h3>
<input class="input-style" type="number" name="mobileNumber" placeholder="Enter Your New Mobile Number" required="required">
 <hr>
<h3>Enter Password (For Security)</h3>
<input class="input-style" type="password" name="password" placeholder="Enter Password (For Security)" required="required">
<hr>
 <button class="button" type="submit">Save <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</html>