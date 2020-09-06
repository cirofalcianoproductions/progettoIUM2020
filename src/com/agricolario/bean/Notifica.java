package com.agricolario.bean;

import java.util.Date;

public class Notifica {
	private Date dataNotifica;
	private String informazioni;
	public Notifica() {
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	
	
	public Notifica(Date dataNotifica, String informazioni) {
		this.dataNotifica = dataNotifica;
		this.informazioni = informazioni;
	}






	@Override
	public String toString() {
		return "Notifica [dataNotifica=" + dataNotifica + ", informazioni=" + informazioni + "]";
	}






	public Date getDataNotifica() {
		return dataNotifica;
	}
	public void setDataNotifica(Date dataNotifica) {
		this.dataNotifica = dataNotifica;
	}
	public String getInformazioni() {
		return informazioni;
	}
	public void setInformazioni(String informazioni) {
		this.informazioni = informazioni;
	}
  
}
