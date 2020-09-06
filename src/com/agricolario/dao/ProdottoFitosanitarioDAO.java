package com.agricolario.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.ResultSet;

import com.agricolario.bean.ProdottoFitosanitario;
import com.agricolario.connessione.Connessione;
import com.agricolario.functionality.ParseDate;

public class ProdottoFitosanitarioDAO {
	   private Connessione connessione;
	public ProdottoFitosanitarioDAO() {
		connessione= new Connessione();
	}

	
	
	
	//get tempo di carenza
	
	public int getTempoCarenza(String nomeProdotto) {
		
		String sql= "select tempocarenza from prodottofitosanitario where nome= ?;";

		 Connection con= connessione.getConn();
		 	ResultSet result;
			try {
				
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setString(1, nomeProdotto);
                result	=   ps.executeQuery();
			    int carenza=0;
                while(result.next()) {	
				 carenza= result.getInt("tempocarenza");
				}
			
				
				
		    	 return carenza;	
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				System.out.println(e.getErrorCode()+"\n"+e.getMessage());
				return 0;
			}finally {
				if(connessione!=null) {
					
					connessione.closeConn();
				}
			}	
	}
	public ArrayList<String> getNomeLiveSerch(String str) {
		
		String sql= "select nome from prodottofitosanitario where nome like ?;";

		 Connection con= connessione.getConn();
		 	ResultSet result;
		 	ArrayList<String> lista= new ArrayList<String>();
			try {
				
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setString(1, "%"+str+"%" );
                result	=   ps.executeQuery();
			    
                while(result.next()) {	
                	 String nome= result.getString("nome");
                	 lista.add(nome);
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


	public ProdottoFitosanitario getProdotto(String nomeProdotto) {
		
		String sql= "select * from prodottofitosanitario where nome = ?;";

		 Connection con= connessione.getConn();
		 	ResultSet result;
			try {
				
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setString(1, nomeProdotto);
                result	=   ps.executeQuery();
			    ProdottoFitosanitario p=new ProdottoFitosanitario();
			    while(result.next()) {	
	            	   
			    	   p.setIdProdottoFitosanitario(result.getInt(1));
	            	   p.setAvversita(result.getString("avversita"));
	            	   p.setQuantita(result.getString("quantita"));
	            	   p.setNome(result.getString("nome"));
	            	   p.setTempocarenza(result.getInt("tempocarenza"));
	            	   p.setTemporientro(result.getInt("temporientro"));
	            	   p.setForma(result.getString("forma"));
	            	   p.setEtichetta(result.getString("etichetta"));
	            	   p.setFunzione(result.getString("funzione")); 
	            	   p.setPericolo(result.getString("pericolo")); 
	            	   p.setStato(result.getString("stato")); 
	            	   p.setScadenza(result.getDate("scadenza")); 
	            	   p.setImpresa(result.getString("impresa")); 
                }
			
				System.out.println(p.toString());
				
		    	 return p;	
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


	public ArrayList<String> getColtura(String nomeProdotto) {
		
		String sql= "select coltura from prodottofitosanitario join applicazioneprodotto on prodottofitosanitario.idprodottofitosanitario= applicazioneprodotto.idprodottofitosanitario  where nome=?";

		 Connection con= connessione.getConn();
		 	ResultSet result;
			try {
				
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setString(1, nomeProdotto);
                result	=   ps.executeQuery();
			    
                ArrayList<String> lista= new ArrayList<String>();
                while(result.next()) {	
	            	   
                	String  coltura = result.getString("coltura");
                    lista.add(coltura);	
			   }
			
				System.out.println(lista.toString());
				
		    	 return lista;	
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
public ArrayList<String> getColtura() {
		
		String sql= "select coltura from applicazioneprodotto";

		 Connection con= connessione.getConn();
		 	ResultSet result;
			try {
				
				PreparedStatement ps = con.prepareStatement(sql);
			
                result	=   ps.executeQuery();
			    
                ArrayList<String> lista= new ArrayList<String>();
                while(result.next()) {	
	            	   
                	String  coltura = result.getString("coltura");
                    lista.add(coltura);	
			   }
			
				System.out.println(lista.toString());
				
		    	 return lista;	
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

public String getAvversita(String nome) {
	
	String sql= "select avversita from prodottofitosanitario where nome=?";

	 Connection con= connessione.getConn();
	 	ResultSet result;
		try {
			
			PreparedStatement ps = con.prepareStatement(sql);
		    ps.setString(1,nome);
            result	=   ps.executeQuery();
		    
           String lista="";
            while(result.next()) {	
            	   
            	 lista = result.getString("avversita");
              
		   }
		
			System.out.println(lista.toString());
			
	    	 return lista;	
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

	public ArrayList<ProdottoFitosanitario> getAllProdottiFitosanitario() {
		// TODO Auto-generated method stub
		String sql= "select * from prodottofitosanitario ;";

		 Connection con= connessione.getConn();
		 	ResultSet result;
			try {
				
				PreparedStatement ps = con.prepareStatement(sql);               result	=   ps.executeQuery();
			    int carenza=0;
			    ArrayList<ProdottoFitosanitario> lista= new ArrayList<ProdottoFitosanitario>();
               while(result.next()) {	
				 ProdottoFitosanitario p=new ProdottoFitosanitario();
            	   
            	   p.setIdProdottoFitosanitario(result.getInt("idprodottofitosanitario"));
            	   p.setAvversita(result.getString("avversita"));
            	   p.setQuantita(result.getString("quantita"));
            	   p.setNome(result.getString("nome"));
            	   p.setTempocarenza(result.getInt("tempocarenza"));
            	   p.setTemporientro(result.getInt("temporientro"));
            	   p.setForma(result.getString("forma"));
            	   p.setEtichetta(result.getString("etichetta"));
            	   p.setFunzione(result.getString("funzione"));
            	   p.setPericolo(result.getString("pericolo")); 
            	   p.setStato(result.getString("stato")); 
            	   p.setScadenza(result.getDate("scadenza")); 
            	   p.setImpresa(result.getString("impresa")); 
            	   lista.add(p);
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
			}		}
	
	//get dose in base alla coltura e il prodotto
	/*select dose from prodottofitosanitario join applicazioneprodotto on prodottofitosanitario.idprodottofitosanitario= applicazioneprodotto.idprodottofitosanitario  where prodottofitosanitario.nome="Priaxor" and coltura="orzo" ;*/
	public String getDose(String nome,String coltura) {
		// TODO Auto-generated method stub
		String sql= "select dose from prodottofitosanitario join applicazioneprodotto on prodottofitosanitario.idprodottofitosanitario= applicazioneprodotto.idprodottofitosanitario  where prodottofitosanitario.nome=? and coltura=?";

		 Connection con= connessione.getConn();
		 	ResultSet result;
			String dose ="";

		 	try {
				
				PreparedStatement ps = con.prepareStatement(sql);               
				ps.setString(1, nome);
				ps.setString(2, coltura);				
				result	=   ps.executeQuery();
			 
				
				while(result.next()) {	
				
					dose= result.getString("dose");
					
				}
			
				
				
		    	 return dose;	
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				System.out.println(e.getErrorCode()+"\n"+e.getMessage());
				return null;
			}finally {
				if(connessione!=null) {
					
					connessione.closeConn();
				}
			}		}




	public ArrayList<String> getNomePerColtura(String str) {
		// TODO Auto-generated method stub
		String sql= "select * from applicazioneprodotto join prodottofitosanitario on prodottofitosanitario.idprodottofitosanitario = applicazioneprodotto.idprodottofitosanitario where coltura =?;";

		 Connection con= connessione.getConn();
		 	ResultSet result;
			try {
				
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setString(1, str);
               result	=   ps.executeQuery();
			    ArrayList<String> lista= new ArrayList<String>();
			    while(result.next()) {	
	            	   
			    	   lista.add(result.getString("nome"));
	            
               }
			
				
		    	 return lista ;	
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return null;
			}finally {
				if(connessione!=null) {
					
					connessione.closeConn();
				}
			}		}
	
	
	
	
	
	
	
}
