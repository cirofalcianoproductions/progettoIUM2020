package com.agricolario.connessione;

import java.sql.*;

public class Connessione {
	
	Connection c;
	
	public Connessione(){
		this.c = Conn();
	}
	
	public Connection getConn(){
		
		return this.c;
	}
	
	public void closeConn(){
		try {
			this.c.close();
		} catch (SQLException e) {
			System.out.println("Chiusura connessione fallita !");
			e.printStackTrace();
		}
	}
	
	private static Connection Conn(){
		System.out.println("-------- MySQL JDBC Connection Testing ------------");
	
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
		} catch (ClassNotFoundException e) {
			System.out.println("Driver Non Trovato");
			e.printStackTrace();
			return null;
		}
		Connection connection = null;

		System.out.println("Driver  Trovato");
		try {
			//connection = (Connection) DriverManager.getConnection("jdbc:mysql://database.czswaxwzhchf.us-east-2.rds.amazonaws.com:3306/agricolario?useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","master","OliverTwist1837");
			connection = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/agricolario?useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","root");
	
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	
		if (connection != null)return connection;
		
		return connection;
	}

}


	
