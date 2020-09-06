package com.agricolario.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Random;

import com.agricolario.bean.Azienda;
import com.agricolario.bean.Utente;
import com.agricolario.connessione.Connessione;
import com.agricolario.functionality.ParseDate;

public class AziendaDAO {
	   private Connessione connessione;
	public AziendaDAO() {
		// TODO Auto-generated constructor stub
		connessione= new Connessione();

	}
	
	 public boolean insert(Azienda azienda) {
	    	String insertSql;
	    	
		 Connection con= connessione.getConn();
		 	int result=0;
			try {
				
				//bisogna aggiustare il nomi nomeAzienda in nome e DataFondazione tutto in minuscolo
		    	insertSql="insert into azienda (nomeAzienda,indirizzo,DataFondazione,città,cap,idazienda,idutente)  value(?,?,?,?,?,?,?);";
		    	PreparedStatement ps = con.prepareStatement(insertSql);
				ps.setString(1, azienda.getNomeAzienda());
				ps.setString(2, azienda.getIndirizzo());
				ps.setDate(3, ParseDate.parseDateSql(azienda.getDataFondazione()));
				ps.setString(4, azienda.getCittà());
				ps.setString(5, azienda.getCap());
				ps.setInt(6, new Random().nextInt(120000000));
				ps.setInt(7, azienda.getIdUtente());
				ps.executeUpdate();
		    	 return true;	
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				System.out.println(e.getErrorCode()+"\n"+e.getMessage());
				return false;
			}finally {
				if(connessione!=null) {
					
					connessione.closeConn();
				}
			}
	    	
	    	

	    }
	    public boolean update(Utente user) {
	    	
	    	return false;
	    }
	    public boolean delete(Azienda azienda) {
	    	
	    	return false;
	    }
	    
	    
	    public Azienda selectAzienda(int id) {
	    	String sql="select * from azienda where idutente=?";
			 Connection con= connessione.getConn();
			 	ResultSet result;

			 Azienda a= new Azienda();
				try {
					
					//bisogna aggiustare il nomi nomeAzienda in nome e DataFondazione tutto in minuscolo
			    	PreparedStatement ps = con.prepareStatement(sql);
			    	ps.setInt(1,id);
					
					result = ps.executeQuery();
					while(result.next()) {
					a.setId(result.getInt("idazienda"));
					a.setNomeAzienda(result.getString("nomeAzienda"));
					a.setCittà(result.getString("città"));
					a.setDataFondazione(result.getDate("DataFondazione"));
					a.setIndirizzo(result.getString("indirizzo"));
					a.setCap(result.getString("cap"));
					a.setIdUtente(result.getInt("idutente"));
					
					}
					
			    	 return a;	
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					System.out.println(e.getErrorCode()+"\n"+e.getMessage());
					return null;
				}finally {
					if(connessione!=null) {
						
						connessione.closeConn();
					}
				}
		    	
	    	
	    }
	    public Azienda selectAziendaDelegato(int id) {
	    	String sql="select * from (utente join delega on utente.idutente = delega.idutente) \r\n" + 
	    			"	    join azienda on delega.idtitolare= azienda.idutente\r\n" + 
	    			"	    where utente.idutente=?;";
			 Connection con= connessione.getConn();
			 	ResultSet result;

			 Azienda a= new Azienda();
				try {
					
					//bisogna aggiustare il nomi nomeAzienda in nome e DataFondazione tutto in minuscolo
			    	PreparedStatement ps = con.prepareStatement(sql);
			    	ps.setInt(1,id);
					
					result = ps.executeQuery();
					while(result.next()) {
					a.setId(result.getInt("idazienda"));
					a.setNomeAzienda(result.getString("nomeAzienda"));
					a.setCittà(result.getString("città"));
					a.setDataFondazione(result.getDate("DataFondazione"));
					a.setIndirizzo(result.getString("indirizzo"));
					a.setCap(result.getString("cap"));
					a.setIdUtente(result.getInt("idtitolare"));
					
					}
					
			    	 return a;	
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					System.out.println(e.getErrorCode()+"\n"+e.getMessage());
					return null;
				}finally {
					if(connessione!=null) {
						
						connessione.closeConn();
					}
				}
		    	
	    	
	    }
	
	
	
	    /* ottenree l'azienda del delegato  select * from azienda where idutente=1;
	    select * from (utente join delega on utente.idutente = delega.idutente) 
	    join azienda on delega.idtitolare= azienda.idutente
	    where utente.idutente=6;
	 */
}
