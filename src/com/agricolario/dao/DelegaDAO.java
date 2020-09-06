package com.agricolario.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Random;

import com.agricolario.connessione.Connessione;
import com.agricolario.functionality.ParseDate;

public class DelegaDAO {
	  private Connessione connessione;

	public DelegaDAO() {
		connessione= new Connessione();
	}

	
	
	
	
	public boolean insertDelegato(int idTitolare,int idUtente,int idRegistro) {
		/*
		INSERT INTO delega (idtitolare,idutente,idregistrofitosanitario) VALUES (?,?,?);
		*/
	Connection con= connessione.getConn();
	    
		//id autogenrato
		int id= new Random().nextInt(120000000);
		String insertSql= "		INSERT INTO delega (idtitolare,idutente,idregistrofitosanitario) VALUES (?,?,?);";
	// 	PreparedStatement ps = con.prepareStatement(insertSql);
		PreparedStatement ps;
		try {
			ps = con.prepareStatement(insertSql);
			ps.setInt(1, idTitolare);
			ps.setInt(2, idUtente);
			ps.setInt(3, idRegistro);
			ps.executeUpdate();
			
			
			return true;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}finally {
			if(connessione!=null) {
				
				connessione.closeConn();
			}
		}
    	 
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
