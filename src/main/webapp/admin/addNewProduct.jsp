<%@page import="com.anuwat.connection.Dbconnection"%>
<%@page import="java.sql.*"%>
<%@page import="com.anuwat.*"%>
<%@include file="adminHeader.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title>Add New Product</title>
</head>
<body>
	<%
	String msg = request.getParameter("msg");
	if("done".equals(msg))
	{
	%>
	<h3 class="alert">เพิ่มสินค้าสำเร็จ !</h3>
	<%}%>

	<%
	if("wrong".equals(msg))
	{
	%>
	<h3 class="alert">มีบางอย่างผิดพลาด ! ลองใหม่อีกครั้ง !</h3>
	<%}%>
	
	<%
	int id = 1;
	try {
		Connection con = Dbconnection.getConnecDB();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select max(id) from product");
		while (rs.next()) {
			id = rs.getInt(1);
			id = id + 1;
		}
	} catch (Exception e) {
		System.out.println(e);
	}
	%>
	<form action="addNewProductAction.jsp" method="post">
	<h3 style="color: yellow;">Product ID <%out.println(id);%>:</h3>
	<input type="hidden" name="id" value="<%out.println(id);%>">
	
		<div class="left-div">
			<h3>Enter Name</h3>
			<input class="input-style" type="text" name="name" placeholder="Enter Name" required="required">
			<hr>
		</div>

		<div class="right-div">
			<h3>Enter Category</h3>
			<input class="input-style" type="text" name="category" placeholder="Enter Category" required="required">
			<hr>
		</div>

		<div class="left-div">
			<h3>Enter Price</h3>
			<input class="input-style" type="text" name="price" placeholder="Enter Price" required="required">
			<hr>
		</div>

		<div class="right-div">
			<h3>Active</h3>
			<select class="input-style" name="active">
			<option value="Yes">Yes</option>
			<option value="No">No</option>
			</select>
			<hr>
		</div>
		<button class="button">save <i class='far fa-arrow-alt-circle-right'></i></button>
	</form>
</body>
<br>
<br>
<br>
</body>
</html>