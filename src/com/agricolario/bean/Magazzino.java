package com.agricolario.bean;

import java.util.ArrayList;

public class Magazzino {

	private int idMagazzino;
	private int idAzienda;
	private  ArrayList<ProdottoMagazzino> prodotto;
	public Magazzino() {
	}
	public Magazzino(int idMagazzino, int idAzienda, ArrayList<ProdottoMagazzino> prodotto) {
		this.idMagazzino = idMagazzino;
		this.idAzienda = idAzienda;
		this.prodotto = prodotto;
	}

	public ArrayList<ProdottoMagazzino> getProdotto() {
		return prodotto;
	}

	public void setProdotto(ArrayList<ProdottoMagazzino> prodotto) {
		this.prodotto = prodotto;
	}

	public int getIdMagazzino() {
		return idMagazzino;
	}
	public void setIdMagazzino(int idMagazzino) {
		this.idMagazzino = idMagazzino;
	}
	public int getIdAzienda() {
		return idAzienda;
	}
	public void setIdAzienda(int idAzienda) {
		this.idAzienda = idAzienda;
	}


}
