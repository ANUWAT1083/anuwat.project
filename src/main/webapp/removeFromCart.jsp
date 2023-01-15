<%@page import="com.anuwat.connection.Dbconnection"%>
<%@page import="java.sql.*"%>
<%@page import="com.anuwat.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String email = session.getAttribute("email").toString();
String product_id = request.getParameter("id");
try
{
	Connection con = Dbconnection.getConnecDB();
	Statement st = con.createStatement();
	st.executeUpdate("delete from cart where email='"+email+"' and product_id='"+product_id+"' and address is NULL");
	response.sendRedirect("myCart.jsp?msg=removed");
}
catch(Exception e)
{
	System.out.println(e);
}
%>