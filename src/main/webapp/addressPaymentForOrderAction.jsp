<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="javax.xml.crypto.Data"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="com.anuwat.connection.Dbconnection"%>
<%@page import="java.sql.*"%>
<%@page import="com.anuwat.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String email = session.getAttribute("email").toString();
String address = request.getParameter("address");
String city = request.getParameter("city");
String state = request.getParameter("state");
String country = request.getParameter("country");
String mobileNumber = request.getParameter("mobileNumber");
String paymentMethod = request.getParameter("paymentMethod");
String transactionId = "";
transactionId = request.getParameter("transactionID");
String status = "bill";

//select date time ปัจจุบัน
LocalDateTime myDateObj = LocalDateTime.now();
DateTimeFormatter myFormatDate = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");
String formattedDate = myDateObj.format(myFormatDate);
Timestamp sqlDate = new Timestamp(new SimpleDateFormat("dd-MM-yyyy HH:mm:ss").parse(formattedDate).getTime());

try
{
	Connection con = Dbconnection.getConnecDB();
	PreparedStatement ps = con.prepareStatement("update users set address=?, city=?, state=?, country=?, mobileNumber=? where email=?");
	ps.setString(1, address);
	ps.setString(2, city);
	ps.setString(3, state);
	ps.setString(4, country);
	ps.setString(5, mobileNumber);
	ps.setString(6, email);
	ps.executeUpdate();
	
	
	PreparedStatement ps1 = con.prepareStatement("update cart set address=?, city=?, state=?, country=?, mobileNumber=?, orderDate=?, deliveryDate=DATE_ADD(orderDate,INTERVAL 7 DAY), paymentMethod=?, transactionId=?, status=? where email=? and address is NULL");
	
	ps1.setString(1, address);
	ps1.setString(2, city);
	ps1.setString(3, state);
	ps1.setString(4, country);
	ps1.setString(5, mobileNumber);
	ps1.setTimestamp(6, sqlDate);
	ps1.setString(7, paymentMethod);
	ps1.setString(8, transactionId);
	ps1.setString(9, status);
	ps1.setString(10, email);
	
	ps1.executeUpdate();
	response.sendRedirect("bill.jsp");
}
catch(Exception e)
{
	System.out.println(e);
}
%>