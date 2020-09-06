package com.agricolario.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import com.agricolario.bean.Trattamento;
import com.agricolario.connessione.Connessione;
import com.agricolario.functionality.ParseDate;

public class TrattamentoDAO {
	   private Connessione connessione;

	public TrattamentoDAO() {
		// TODO Auto-generated constructor stub
		connessione= new Connessione();

	}

	public boolean addTrattamento(int idregistro,int idProdotto,String coltura,String nome,Date dataInizio,double superficie,float quantita,String avversità,String note,String unita) {
		String sql="INSERT INTO `trattamento`(`idprodotto`,`idregistro`,`coltura`,`dataInizio`,`superficieInEttari`,`nomeprodotto`,`quantitaProdotto`,`unitaDiMisuraProdotto`,`avversita`,`note`)\r\n" + 
				"VALUES(?,?,?,?,?,?,?,?,?,?);";
		System.out.println(ParseDate.parseDateSql(dataInizio).toString());
		dataInizio.setDate(dataInizio.getDate()+1);   //
		 Connection con= connessione.getConn();
		 try {
				
		
		    	PreparedStatement ps = con.prepareStatement(sql);
				ps.setInt(1, idProdotto);
				ps.setInt(2, idregistro);
				ps.setString(3,coltura);
				ps.setDate(4,ParseDate.parseDateSql(dataInizio));
				ps.setDouble(5,superficie);
				ps.setString(6, nome);
				ps.setFloat(7, quantita);
				ps.setString(8,unita);
				ps.setString(9, avversità);
				ps.setString(10, note);
				
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
	public boolean updateTrattamento(int idregistro,int idProdotto,String coltura,String nome,Date dataInizio,double superficie,float quantita,String avversità,String note,String unita,int idTrattamento) {
		String sql="UPDATE `trattamento` SET `idregistro` = ?,`coltura` = ?,`dataInizio` = ?,`superficieInEttari` =?,`nomeprodotto` = ?,`quantitaProdotto` = ?,`unitaDiMisuraProdotto` =?,`avversita` = ?,`note` = ? WHERE `idtrattamento` = ?;\r\n" + 
				"";


		 Connection con= connessione.getConn();
		 try {
				
		
		    	PreparedStatement ps = con.prepareStatement(sql);
				ps.setInt(1, idregistro);
				ps.setString(2,coltura);
				ps.setDate(3,ParseDate.parseDateSql(dataInizio));
				ps.setDouble(4,superficie);
				ps.setString(5, nome);
				ps.setFloat(6, quantita);
				ps.setString(7,unita);
				ps.setString(8, avversità);
				ps.setString(9, note);
				ps.setInt(10,idTrattamento);
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
	public boolean deleteTrattamentoByIdRegistro(int idregistro) {
		
		//delete from trattamento where idregistro = 5;
		String sql="delete from trattamento where idregistro = ? ;";
		Connection con= connessione.getConn();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, idregistro);
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
public boolean deleteTrattamentoById(int idregistro) {
		
		//delete from trattamento where idregistro = 5;
		String sql="delete from trattamento where idtrattamento = ? ;";
		Connection con= connessione.getConn();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, idregistro);
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

//ottenere il trattamento tramite id 
public Trattamento selectTrattamentoById(int idtrattamento) {
	
	//delete from trattamento where idregistro = 5;
	String sql="select * from trattamento where idtrattamento = ? ;";
	Connection con= connessione.getConn();
	try {
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(1, idtrattamento);
		ResultSet res=ps.executeQuery();
		
		Trattamento t= new Trattamento();
		while(res.next()) {
			t.setNomeProdotto(res.getString("NomeProdotto"));
			t.setColtura(res.getString("coltura"));
			t.setDatInzio(res.getDate("dataInizio"));
			t.setAvversita(res.getString("avversita"));
			t.setQuantita(res.getFloat("quantitaProdotto"));
			t.setSuperficie(res.getDouble("superficieInEttari"));
			t.setColtura(res.getString("coltura"));

			
		}
		
		
		
		return t;

	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		return null;
	}finally {
		if(connessione!=null) {
			
			connessione.closeConn();
		}
	}
		
}




















}
