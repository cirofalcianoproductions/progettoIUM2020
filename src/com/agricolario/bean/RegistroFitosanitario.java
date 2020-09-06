package com.agricolario.bean;

import java.util.ArrayList;
import java.util.Date;

public class RegistroFitosanitario {
	private int idRegistroFitosanitario;
	private ArrayList<Trattamento> trattamenti;
	private Date dataCreazione;
	public RegistroFitosanitario() {
		// TODO Auto-generated constructor stub
	}
	public RegistroFitosanitario(int idRegistroFitosanitario, ArrayList<Trattamento> trattamenti,Date dataCreazione) {
		this.idRegistroFitosanitario = idRegistroFitosanitario;
		this.trattamenti = trattamenti;
		this.dataCreazione=dataCreazione;
	}



	@Override
	public String toString() {
		return "RegistroFitosanitario [idRegistroFitosanitario=" + idRegistroFitosanitario + ", trattamenti="
				+ trattamenti + ", dataCreazione=" + dataCreazione + "]";
	}
	public Date getDataCreazione() {
		return dataCreazione;
	}
	public void setDataCreazione(Date dataCreazione) {
		this.dataCreazione = dataCreazione;
	}
	public int getIdRegistroFitosanitario() {
		return idRegistroFitosanitario;
	}
	public void setIdRegistroFitosanitario(int idRegistroFitosanitario) {
		this.idRegistroFitosanitario = idRegistroFitosanitario;
	}



	public ArrayList<Trattamento> getTrattamenti() {
		return trattamenti;
	}



	public void setTrattamenti(ArrayList<Trattamento> trattamenti) {
		this.trattamenti = trattamenti;
	}
	
	
	
	
	
	
	
}
