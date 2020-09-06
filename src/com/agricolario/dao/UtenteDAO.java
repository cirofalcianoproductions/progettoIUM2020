package com.agricolario.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.agricolario.bean.Utente;
import com.agricolario.connessione.Connessione;
import com.agricolario.functionality.ParseDate;


public class UtenteDAO {
	
	
    private Connessione connessione;
    private	ResultSet result;

	public UtenteDAO() {
		// TODO Auto-generated constructor stub
		connessione= new Connessione();
	}
    public boolean insert(Utente user) {
    	String insertSql="";
    	Connection con= connessione.getConn();
	 	int result=0;
		try {
			
			System.out.println(user.getCognome());
	    
	    	insertSql="insert into utente (nome,cognome,dataNascita,email,password,ruolo)  value(?,?,?,?,?,?);";
	    	PreparedStatement ps = con.prepareStatement(insertSql);
			ps.setString(1, user.getNome());
			ps.setString(2, user.getCognome());
			ps.setDate(3, ParseDate.parseDateSql(user.getDataNascita()));
			ps.setString(4, user.getEmail());
			ps.setString(5, user.getPassword());
			ps.setString(6, user.getRuolo());
			ps.executeUpdate();
		    return true;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Insert Utente"+e.getErrorCode()+"\n"+e.getMessage());
			return false;
		}
    	
    }
    public boolean update(Utente user) {
    	
    	return false;
    }
    public boolean delete(Utente user) {
    	
    	return false;
    }
    
    
    public Utente selectUser(String email) {
    	String insertSql="";
    	Connection con= connessione.getConn();
	 	ResultSet result;
		
		
	    	insertSql="select * from utente where email=?";
	    	try {
				PreparedStatement ps = con.prepareStatement(insertSql);
				ps.setString(1, email);
				result=ps.executeQuery();
				Utente user=new Utente();
				while(result.next()) {
					
					user.setId(result.getInt(1));
					user.setRuolo(result.getString(2));
					user.setNome(result.getString(3));
					user.setCognome(result.getString(4));
					user.setPassword(result.getString(5));
					user.setDataNascita(result.getDate(6));
					user.setEmail(result.getString(7));
				}
				return user; 
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return new Utente();
			}
			
    }
    
    public ArrayList<Utente> getAllUtenteByStr(String email){
    	
    	String sql= "select * from utente where email like ? ;";
    	Connection con= connessione.getConn();
    	try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1,"%"+email+"%"  );
			result=ps.executeQuery();
			ArrayList<Utente> lista=new ArrayList<Utente>();
			while(result.next()) {
				Utente user=new Utente();
				user.setId(result.getInt(1));
				user.setRuolo(result.getString(2));
				user.setNome(result.getString(3));
				user.setCognome(result.getString(4));
				user.setPassword(result.getString(5));
				user.setDataNascita(result.getDate(6));
				user.setEmail(result.getString(7));
				lista.add(user);
			}
			
			
			 return lista;
			
			}catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return null;
			}
			
    	
    }
    
    
    
    
    
    
    
    
    
}
