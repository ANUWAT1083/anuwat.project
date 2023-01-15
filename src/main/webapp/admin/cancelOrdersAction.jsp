<%@page import="com.anuwat.connection.Dbconnection"%>
<%@page import="com.anuwat.*"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id = request.getParameter("id");
String email = request.getParameter("email");
String status = "Cancel";
try
{
	Connection con = Dbconnection.getConnecDB();
	Statement st = con.createStatement();
	st.executeUpdate("update cart set status='"+status+"' where product_id='"+id+"' and email='"+email+"' and address is not NULL");
	response.sendRedirect("ordersReceived.jsp?msg=cancel");
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("ordersReceived.jsp?msg=invalid");
}
%>