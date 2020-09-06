 package com.agricolario.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.agricolario.bean.ProdottoFitosanitario;
import com.agricolario.bean.ProdottoMagazzino;
import com.agricolario.connessione.Connessione;
import com.agricolario.functionality.ParseDate;

public class MagazzinoDAO {
	   private Connessione connessione;

	public MagazzinoDAO() {
		connessione= new Connessione();
	}
	
		public ArrayList<ProdottoMagazzino> getProdottiMagazzino(int idAzienda) {
			String sql ="SELECT * FROM magazzino join prodottofitosanitario "
					+ "on prodottofitosanitario.idprodottofitosanitario = magazzino.idprodottofitosanitario "
					+ "join azienda on magazzino.idazienda = azienda.idazienda "
					+ "where azienda.idazienda = ?;\r\n" + 
					"";
			Connection con= connessione.getConn();
             ArrayList<ProdottoMagazzino> lista= new ArrayList<ProdottoMagazzino>();
			 try {
					
					PreparedStatement ps = con.prepareStatement(sql);
					ps.setInt(1, idAzienda);
					
					ResultSet result= ps.executeQuery();
					while(result.next()){
						
						ProdottoMagazzino pm= new ProdottoMagazzino();
						ProdottoFitosanitario p = new  ProdottoFitosanitario();
						double quantita=0;
						  
				    	   p.setIdProdottoFitosanitario(result.getInt("idprodottofitosanitario"));
		            	   p.setAvversita(result.getString("avversita"));
		            	   p.setDose(result.getString("quantita"));
		            	   p.setNome(result.getString("nome"));
		            	   p.setTempocarenza(result.getInt("tempocarenza"));
		            	   p.setTemporientro(result.getInt("temporientro"));
		            	   p.setForma(result.getString("forma"));
		            	   p.setEtichetta(result.getString("etichetta"));
		            	   p.setFunzione(result.getString("funzione"));       

		            	   quantita = result.getDouble("quantitaDisp");

						
						pm.setProdotto(p);
						pm.setQuantita(quantita);
						lista.add(pm);
						
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
		public ArrayList<ProdottoMagazzino> liveSearchMagazzino(int idAzienda,String str) {
			String sql ="SELECT * FROM magazzino join prodottofitosanitario \r\n" + 
					"					 on prodottofitosanitario.idprodottofitosanitario = magazzino.idprodottofitosanitario \r\n" + 
					"					 join azienda on magazzino.idazienda = azienda.idazienda \r\n" + 
					"					where azienda.idazienda = 1 and prodottofitosanitario.nome  like \"%c%\"";
			Connection con= connessione.getConn();
             ArrayList<ProdottoMagazzino> lista= new ArrayList<ProdottoMagazzino>();
			 try {
					
					PreparedStatement ps = con.prepareStatement(sql);
					ps.setInt(1, idAzienda);
					
					ResultSet result= ps.executeQuery();
					while(result.next()){
						
						ProdottoMagazzino pm= new ProdottoMagazzino();
						ProdottoFitosanitario p = new  ProdottoFitosanitario();
						double quantita=0;
						  
				    	   p.setIdProdottoFitosanitario(result.getInt("idprodottofitosanitario"));
		            	   p.setAvversita(result.getString("avversita"));
		            	   p.setDose(result.getString("quantita"));
		            	   p.setNome(result.getString("nome"));
		            	   p.setTempocarenza(result.getInt("tempocarenza"));
		            	   p.setTemporientro(result.getInt("temporientro"));
		            	   p.setForma(result.getString("forma"));
		            	   p.setEtichetta(result.getString("etichetta"));
		            	   p.setFunzione(result.getString("funzione"));   
		            	   quantita = result.getDouble("quantitaDisp");

						
						pm.setProdotto(p);
						pm.setQuantita(quantita);
						lista.add(pm);
						
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
		public boolean insertProdottoMagazzino(int idprodotto,int idazienda,double quantita) {
			String sql ="insert into magazzino (idazienda,idprodottofitosanitario,quantitaDisp) values (?,?,?)";
			Connection con= connessione.getConn();
             ArrayList<ProdottoMagazzino> lista= new ArrayList<ProdottoMagazzino>();
			 try {
					
					PreparedStatement ps = con.prepareStatement(sql);
					ps.setInt(1, idazienda);
					ps.setInt(2, idprodotto);
					ps.setDouble(3, quantita);

					int  result= ps.executeUpdate();
					return true ;	
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					System.out.println("inserimento MAgazzino"+e.getErrorCode()+"\n"+e.getMessage());
					return false;
				}finally {
					if(connessione!=null) {
						
						connessione.closeConn();
					}
				}
			
		}
		
		public boolean updateProdottoMagazzino(int idprodotto,int idazienda,double quantita,boolean operazione) {
			String sql ="update magazzino set quantitaDisp = ? where idazienda = ? AND idprodottofitosanitario = ?;";
			   double dispQ= getQuantita(idprodotto, idazienda);
			  double tot= 0;
			   if(operazione) {
				   tot=quantita+dispQ;
			  }else {
				   tot=dispQ-quantita;

				  
			  }
			   System.out.println("update magazzino");
			   
			   
			   Connection con= connessione.getConn();
         
			 try {
					
					PreparedStatement ps = con.prepareStatement(sql);
					ps.setDouble(1, tot);
					ps.setInt(2, idazienda);
					ps.setInt(3, idprodotto);
					

					int  result= ps.executeUpdate();
					return true ;	
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					System.out.println(""+e.getErrorCode()+"\n"+e.getMessage());
					return false;
				}finally {
					if(connessione!=null) {
						
						connessione.closeConn();
					}
				}
			
		}
		
		
		
		
		
		
		
		
		
		
		public boolean isPresent(int idProdotto,int idAzienda) {
			
			String sql ="SELECT * FROM magazzino where  idazienda = ? and idprodottofitosanitario= ?;\r\n" + 
					"";
			Connection con= connessione.getConn();
			 try {
					
					PreparedStatement ps = con.prepareStatement(sql);
					ps.setInt(1, idAzienda);
					ps.setInt(2,idProdotto);

					ResultSet result= ps.executeQuery();
					int i=-1;
					while(result.next()){
						result.getInt("idazienda");
						 i++;
						
					}
			         if(i>=0) { return true; }else {	return false;}
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					System.out.println("isPresent :"+e.getErrorCode()+"\n"+e.getMessage());
					return false;
				}
		    	
		}
	public double  getQuantita(int idProdotto,int idAzienda) {
			
			String sql ="SELECT * FROM magazzino where idazienda = ? and idprodottofitosanitario= ?;\r\n" + 
					"";
			Connection con= connessione.getConn();
             ArrayList<ProdottoMagazzino> lista= new ArrayList<ProdottoMagazzino>();
			 try {
					
					PreparedStatement ps = con.prepareStatement(sql);
					ps.setInt(1, idAzienda);
					ps.setInt(2,idProdotto);

					ResultSet result= ps.executeQuery();
					while(result.next()){
						
						return result.getDouble("quantitaDisp");
						
					}
			    	 
					return 0;
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					System.out.println(e.getErrorCode()+"\n"+e.getMessage());
					return 0;
				}
		    	
		}
}
