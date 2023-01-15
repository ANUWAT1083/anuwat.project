<%@page import="java.util.stream.Stream"%>
<%@page import="java.sql.*"%>
<%@page import="com.anuwat.connection.*"%>
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
if("notMatch".equals(msg))
{
%>
<h3 class="alert">รหัสผ่านใหม่และยืนยันรหัสผ่านไม่ตรงกัน !</h3>
<%} %>
<%
if("wrong".equals(msg))
{
%>
<h3 class="alert">รหัสผ่านเก่าของคุณไม่ถูกต้อง !</h3>
<%} %>
<%
if("done".equals(msg))
{
%>
<h3 class="alert">เปลี่ยน password สำเร็จ!</h3>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h3 class="alert">มีบางอย่างผิดพลาด ! ลองใหม่อีกครั้ง !</h3>
<%} %>

<form action="changPasswordAction.jsp" method="get">
<h3>Enter Old Password</h3>
<input class="input-style" type="password" name="oldPassword" placeholder="Enter Old Password" required>
  <hr>
 <h3>Enter New Password</h3>
<input class="input-style" type="password" name="newPassword" placeholder="Enter New Password" required>
 <hr>
<h3>Enter Confirm Password</h3>
<input class="input-style" type="password" name="confirmPassword" placeholder="Enter Confirm Password" required>
<hr>
 <button class="button" type="submit">Save <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</html>