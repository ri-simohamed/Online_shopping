package com.rami.connection;
import java.sql.*;

public class DbCon {
	
	private static Connection connection = null;
	
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		
		if(connection == null) {

			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost/phoneshopping", "root", "");
			System.out.println("connected");
		}
		return connection;
		
	}

}
