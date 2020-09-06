package com.agricolario.bean;

import java.util.ArrayList;
import java.util.Date;

public class ProdottoFitosanitario {

	public ProdottoFitosanitario() {
		// TODO Auto-generated constructor stub
	}
	

public ProdottoFitosanitario(int idProdottoFitosanitario, String etichetta, String nome, String quantita,
			String forma, int temporientro, String dose, String funzione, String avversita, int tempocarenza, 
			String pericolo, String stato, String impresa, Date scadenza) {
		super();
		this.idProdottoFitosanitario = idProdottoFitosanitario;
		this.etichetta = etichetta;
		this.nome = nome;
		this.quantita = quantita;
		this.forma = forma;
		this.temporientro = temporientro;
		this.dose = dose;
		this.funzione = funzione;
		this.avversita = avversita;
		this.tempocarenza = tempocarenza;
		this.pericolo = pericolo;
		this.stato = stato;
		this.impresa = impresa;
		this.scadenza = scadenza;
	}


public int getIdProdottoFitosanitario() {
	return idProdottoFitosanitario;
}
public void setIdProdottoFitosanitario(int idProdottoFitosanitario) {
	this.idProdottoFitosanitario = idProdottoFitosanitario;
}
public String getEtichetta() {
	return etichetta;
}
public void setEtichetta(String etichetta) {
	this.etichetta = etichetta;
}
public String getNome() {
	return nome;
}
public void setNome(String nome) {
	this.nome = nome;
}
public String getQuantita() {
	return quantita;
}
public void setQuantita(String quantita) {
	this.quantita = quantita;
}
public String getForma() {
	return forma;
}
public void setForma(String forma) {
	this.forma = forma;
}
public int getTemporientro() {
	return temporientro;
}
public void setTemporientro(int temporientro) {
	this.temporientro = temporientro;
}
public String getDose() {
	return dose;
}
public void setDose(String dose) {
	this.dose = dose;
}
public String getFunzione() {
	return funzione;
}
public void setFunzione(String funzione) {
	this.funzione = funzione;
}
public String getAvversita() {
	return avversita;
}
public void setAvversita(String avversita) {
	this.avversita = avversita;
}
public int getTempocarenza() {
	return tempocarenza;
}
public void setTempocarenza(int tempocarenza) {
	this.tempocarenza = tempocarenza;
}



public ArrayList<String> getColtura() {
	return coltura;
}


public void setColtura(ArrayList<String> coltura) {
	this.coltura = coltura;
}

public String getPericolo() {
	return pericolo;
}

public void setPericolo(String pericolo) {
	this.pericolo = pericolo;
}

public String getStato() {
	return stato;
}


public void setStato(String stato) {
	this.stato = stato;
}

public String getImpresa() {
	return impresa;
}


public void setImpresa(String impresa) {
	this.impresa = impresa;
}

public Date getScadenza() {
	return scadenza;
}


public void setScadenza(Date scadenza) {
	this.scadenza = scadenza;
}

private int idProdottoFitosanitario;
private String	etichetta;
private String nome;
private String quantita;
private String forma;
private int temporientro;
private String dose;
private String funzione;
private String avversita, pericolo, stato, impresa;
private int tempocarenza;
private ArrayList<String> coltura;
private Date scadenza;



@Override
public String toString() {
	return "ProdottoFitosanitario [idProdottoFitosanitario=" + idProdottoFitosanitario + ", etichetta=" + etichetta
			+ ", nome=" + nome + ", quantita=" + quantita + ", forma=" + forma + ", temporientro=" + temporientro
			+ ", dose=" + dose + ", funzione=" + funzione + ", avversita=" + avversita + ", tempocarenza="
			+ tempocarenza + ", pericolo=" + pericolo + ", stato=" + stato + ", impresa=" + impresa + ", scadenza=" + scadenza + "]";
}



}
