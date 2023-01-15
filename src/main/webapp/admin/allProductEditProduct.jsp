<%@page import="java.sql.*"%>
<%@page import="com.anuwat.connection.*"%>
<%@include file="adminHeader.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>
h3
{
	color: yellow;
	text-align: center;
}
</style>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">All Products & Edit Products <i class='fab fa-elementor'></i></div>
<br>
<%String msg = request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">Update สินค้าสำเร็จ !</h3>
<%} %>
<%if("wrong".equals(msg))
{
%>
<h3 class="alert">มีบางอย่างผิดพลาด ! ลองใหม่อีกครั้ง !</h3>
<%} %>

<table>
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa-solid fa-tag"></i> Price</th>
            <th>Status</th>
            <th scope="col">Edit <i class='fas fa-pen-fancy'></i></th>
          </tr>
        </thead>
        <tbody>
       <%
       try
       {
    	   Connection con = Dbconnection.getConnecDB();
    	   Statement st = con.createStatement();
    	   ResultSet rs = st.executeQuery("select * from product");
    	 
    	   while(rs.next())
    	   {
       %>
          <tr>
         
            <td><%=rs.getString(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(4)%> ฿</td>
            <td><%=rs.getString(5)%></td>
            <td><a href="editProduct.jsp?id=<%=rs.getString(1)%>">Edit <i class='fas fa-pen-fancy'></i></a></td>
          </tr>
         <% 
    	   }
       }
       catch(Exception e)
       {
    	   System.out.println(e);
       }
         %>
        </tbody>
      </table>
      <br>
      <br>
      <br>

</body>
</html>