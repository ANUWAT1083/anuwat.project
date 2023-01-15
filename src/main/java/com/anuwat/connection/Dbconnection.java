package com.anuwat.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Dbconnection {
	public static Connection con;
	public static Connection getConnecDB() throws ClassNotFoundException, SQLException {
		if(con == null)
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			String dbURL = "jdbc:mysql://localhost/online-shopping-webapp";
			con = DriverManager.getConnection(dbURL, "root", "5596020494");
			
			System.out.println(con);
		}
		return con;
		//connection = DriverManager.getConnection("jdbc:mysql://localhost/databasename?user=username&password=userpassword"
                //+ "&userUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetime=false&serverTimezone=UTC");
		//?ServerTimezone='+07:00'
	}
}
