<%@page import="com.anuwat.connection.Dbconnection"%>
<%@page import="com.anuwat.*"%>
<%@page import="java.sql.*"%>
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
	PreparedStatement st = con.prepareStatement("insert into product values(?,?,?,?,?)");
	st.setString(1, id);
	st.setString(2, name); 
	st.setString(3, category); 
	st.setString(4, price); 
	st.setString(5, active);
	st.executeUpdate();
	response.sendRedirect("addNewProduct.jsp?msg=done");
}
catch(Exception e)
{
	response.sendRedirect("addNewProduct.jsp?msg=wrong");
}
%>