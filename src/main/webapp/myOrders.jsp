<%@page import="com.anuwat.connection.Dbconnection"%>
<%@page import="java.sql.*"%>
<%@page import="com.anuwat.*"%>
<%@include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">My Orders <i class='fab fa-elementor'></i></div>
<table>
        <thead>
          <tr>
            <th scope="col">S.No</th>
            <th scope="col">Product Name</th>
            <th scope="col">category</th>
            <th scope="col"><i class="fa-solid fa-tag"></i>  Price</th>
            <th scope="col">Quantity</th>
            <th scope="col"><i class="fa-solid fa-tag"></i> Sub Total</th>
            <th scope="col">Order Date</th>
             <th scope="col">Expected Delivery Date</th>
             <th scope="col">Payment Method</th>
              <th scope="col">Status</th>
              
          </tr>
        </thead>
        <tbody>
<%
int sno = 0;
try
{
	Connection con = Dbconnection.getConnecDB();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from cart inner join product where cart.product_id=product.id and cart.email='"+email+"' and cart.orderDate is not NULL");
	while(rs.next())
	{
		sno = sno + 1;
%>
          <tr>
            <td><%out.println(sno); %></td>
            <td><%=rs.getString(17) %></td>
            <td><%=rs.getString(18) %></td>
            <td><%=rs.getString(19) %> ฿</i> </td>
            <td><%=rs.getString(3) %></td>
            <td><%=rs.getString(5) %> ฿</i> </td>
             <td><%=rs.getString(11) %></td>
              <td><%=rs.getString(12) %></td>
               <td><%=rs.getString(13) %></td>
               <td><%=rs.getString(15) %></td>
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