<%@page import="com.anuwat.connection.Dbconnection"%>
<%@page import="java.sql.*"%>
<%@page import="com.anuwat.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String email = session.getAttribute("email").toString();
String status = "processing";
try
{
	Connection con = Dbconnection.getConnecDB();
	PreparedStatement ps = con.prepareStatement("update cart set status=? where email=? and status='bill'");
	ps.setString(1, status);
	ps.setString(2, email);
	ps.executeUpdate();
	response.sendRedirect("home.jsp");
}
catch(Exception e)
{
	System.out.println(e);
}
%>