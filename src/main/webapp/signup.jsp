<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<body>
	<div id='container'>
		<div class='signup'>
			<form action="signupAction.jsp" method="post">
				<input type="text" name="name" placeholder="Enter Name" required>
				<input type="email" name="email" placeholder="Enter Email" required>
				<input type="number" name="mobileNumber"placeholder="Enter Mobile NUmber" required> 
				<select name="securityQuestion" required>
					<option value="What was your first car?">What was your first car?</option>
					<option value="What is the name of your first pet?">What is the name of your first pet?</option>
					<option value="What elementary school did you attend?">What elementary school did you attend?</option>
					<option value="What is the name of the town where you were born?">What is the name of the town where you were born?</option>
				</select>
				<input type="text" name="answer"placeholder="Enter Answer" required>
				<input type="password" name="password" placeholder="Enter Password" required="required">
				<input type="submit" value="signup">
			</form>
			<h2>
				<a href="login.jsp">Login</a>
			</h2>
		</div>
		<div class='whysign'>
		
		 <%
		  String msg = request.getParameter("msg");
		  if ("valid".equals(msg))
		  {
		  %>
			  <h1>ลงทะเบียนสำเร็จ !</h1>
		  <%}%>
		 <%
		  if ("invalid".equals(msg))
		  {
		  %>
			  <h1>มีบางอย่างผิดพลาด ! ลองใหม่อีกครั้ง !</h1>
		  <%}%>
			

			<h2>Online Shopping</h2>
			<p>The Online Shopping System ช่วยอำนวยความสดวกให้คุณ โดยสารมารถสั่งซื้อสินค้าได้จากที่บ้าน</p>
		</div>
	</div>

</body>
</html>