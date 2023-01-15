<%@page import="java.sql.*"%>
<%@page import="com.anuwat.connection.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String email = session.getAttribute("email").toString();
String subject = request.getParameter("subject");
String body = request.getParameter("body");
try
{
	Connection con = Dbconnection.getConnecDB();
	PreparedStatement ps = con.prepareStatement("insert into message(email, subject, body) values(?,?,?)");
	ps.setString(1, email);
	ps.setString(2, subject);
	ps.setString(3, body);
	ps.executeUpdate();
	response.sendRedirect("messageUs.jsp?msg=valid");
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("messageUs.jsp?msg=invalid");
}
%>