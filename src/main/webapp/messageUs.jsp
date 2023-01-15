<%@page import="java.sql.*"%>
<%@page import="com.anuwat.connection.*"%>
<%@include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet" href="css/messageUs.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Message Us</title>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">Message Us <i class='fas fa-comment-alt'></i></div>
<%
String msg = request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h3 style="text-align:center; color:yellow;">ข้อความส่งถึงทีมผู้ดูแลร้านค้าเรียบร้อยแล้ว !</h3>
<%
}
%>
<%
if("invalid".equals(msg))
{
%>
<h3 style="text-align:center; ">มีบางอย่างผิดพลาด ! ลองใหม่อีกครั้ง !</h3>
<%
}
%>

<form action="messageUsAction.jsp" method="post">
<input class="input-style" type="text" name="subject" placeholder="subject" required="required">
<hr>
<textarea class="input-style" name="body" placeholder="Enter Your Message" required="required"></textarea>
<hr>
<button class="button" type="submit">Save <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
<br><br><br>
</body>
</html>