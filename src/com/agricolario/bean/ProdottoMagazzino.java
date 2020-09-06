package com.agricolario.bean;

public class ProdottoMagazzino {
	
	private ProdottoFitosanitario prodotto;
	private double quantita;
	
	
	
	public ProdottoMagazzino() {
		// TODO Auto-generated constructor stub
	}



	public ProdottoMagazzino(ProdottoFitosanitario prodotto, double quantita) {
		super();
		this.prodotto = prodotto;
		this.quantita = quantita;
	}



	public ProdottoFitosanitario getProdotto() {
		return prodotto;
	}



	public void setProdotto(ProdottoFitosanitario prodotto) {
		this.prodotto = prodotto;
	}



	public double getQuantita() {
		return quantita;
	}



	public void setQuantita(double quantita) {
		this.quantita = quantita;
	}



	@Override
	public String toString() {
		return "ProdottoMagazzino [prodotto=" + prodotto + ", quantita=" + quantita + "]";
	}

}
