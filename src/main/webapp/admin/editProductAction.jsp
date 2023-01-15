<%@page import="com.anuwat.connection.Dbconnection"%>
<%@page import="java.sql.*"%>
<%@page import="com.anuwat.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String category = request.getParameter("category");
String price = request.getParameter("price");
String active = request.getParameter("active");
try
{
	Connection con = Dbconnection.getConnecDB();
	Statement st = con.createStatement();
	st.executeUpdate("update product set name='"+name+"', category='"+category+"', price='"+price+"', active='"+active+"' where id='"+id+"'");
	if(active.equals("No"))
	{
		st.executeUpdate("delete from cart where product_id='"+id+"' and address is NULL");
	}
	response.sendRedirect("allProductEditProduct.jsp?msg=done");
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("allProductEditProduct.jsp?msg=wrong");
}
%>