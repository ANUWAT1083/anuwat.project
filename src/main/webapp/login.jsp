<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Login</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
     <form action="loginAction.jsp" method="post">
     <input type="email" name="email" placeholder="Enter Email" required="required">
     <input type="password" name="password" placeholder="Enter Password" required="required">
     <input type="submit" value="login">
     </form>
      <h2><a href="signup.jsp">SignUp</a></h2>
       <h2><a href="forgotPassword.jsp">Forgot Password?</a></h2>
  </div>
  <div class='whysignLogin'>
  
  <%
  String msg = request.getParameter("msg");
  if("notexist".equals(msg))
  {
  %>
  <h1> Username หรือ Password ไม่ถูกต้อง !</h1>
  <%}%>
  <%
  if("invalid".equals(msg))
  {
  %>
  <h1>มีบางอย่างผิดพลาด ! ลองใหม่อีกครั้ง !</h1>
  <%}%>

    <h3>Online Shopping</h3>
    <p>The Online Shopping System ช่วยอำนวยความสดวกให้คุณ โดยสารมารถสั่งซื้อสินค้าได้จากที่บ้าน</p>
  </div>
</div>

</body>
</html>