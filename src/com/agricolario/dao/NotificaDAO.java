package com.agricolario.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.agricolario.bean.Notifica;
import com.agricolario.connessione.Connessione;

public class NotificaDAO {
	  private Connessione connessione;

		
	public NotificaDAO() {
		connessione= new Connessione();
	}
    // Prendere tutte le notifiche dell'utente
    /*
     * select * from notifiche where idricevente=4  ORDER BY data DESC  ;
     * 
     */	
	
    public ArrayList<Notifica>	getAllNotifiche(int id){
    	
    	String sql = "select * from notifiche where idricevente=? ORDER BY data DESC;";
		Connection con= connessione.getConn();
		 try {
				
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setInt(1, id);
				ResultSet result= ps.executeQuery();
				ArrayList<Notifica> lista = new ArrayList<Notifica>();
				while(result.next()) {
				Notifica n = new Notifica();
				n.setDataNotifica(result.getDate("data"));
				n.setInformazioni(result.getString("informazioni"));
				lista.add(n);
				}
				return lista;	
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
	
	//prendere tutte le notifiche dell'utente non lette 
    public ArrayList<Notifica>	getAllNotificheNonLette(int id){
    	
    	String sql = "select * from notifiche where idricevente=? AND letta= false ORDER BY data DESC;";
		Connection con= connessione.getConn();
		 try {
				
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setInt(1, id);
				ResultSet result= ps.executeQuery();
				ArrayList<Notifica> lista = new ArrayList<Notifica>();
				while(result.next()) {
				Notifica n = new Notifica();
				n.setDataNotifica(result.getDate("data"));
				n.setInformazioni(result.getString("informazioni"));
				lista.add(n);
				}
				return lista;	
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
	/* 
	 * select * from notifiche where idricevente=4 AND letta= false ORDER BY data DESC  ;
	 */
	
	//aggiungere una notifica ad un determinato utente
    	public boolean	insertNotifica(int idMittente ,int idDestinatario,String informazione){
    	
    	String sql = "insert into notifiche(data,idmittente,idricevente,informazioni,letta) value(NOW(),?,?,?,0);";
		Connection con= connessione.getConn();
		 try {
				
				PreparedStatement ps = con.prepareStatement(sql);
			    ps.setInt(1, idMittente);
				ps.setInt(2, idDestinatario);
				ps.setString(3, informazione);
			    ps.executeUpdate();
				return  true;	
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
 
	
	/*
	 * SELECT count(*) as numeronotifiche from notifiche where idricevente=4 and letta= false; 
	 */

	//settare una notifica letta
    	public boolean	checkNotifica(int idDestinatario){
        	
        	String sql = "UPDATE notifiche set letta=1 where idricevente=?";
    		Connection con= connessione.getConn();
    		 try {
    				
    				PreparedStatement ps = con.prepareStatement(sql);
    				ps.setInt(1, idDestinatario);
    			     ps.executeUpdate();
    				return  true;	
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
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
}
