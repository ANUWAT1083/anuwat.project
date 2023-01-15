<%@page import="com.anuwat.connection.*"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id = request.getParameter("id");
String email = request.getParameter("email");
String status = "Delivered";
try
{
	Connection con = Dbconnection.getConnecDB();
	Statement st = con.createStatement();
	st.executeUpdate("update cart set status='"+status+"' where product_id='"+id+"' and email='"+email+"' and address is not NULL");
	response.sendRedirect("ordersReceived.jsp?msg=delivered");
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("orderReceived.jsp?msg=invalid");
}
%>