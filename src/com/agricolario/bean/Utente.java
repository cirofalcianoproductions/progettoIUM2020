package com.agricolario.bean;

import java.util.Date;

public class Utente {

	public Utente() {
		// TODO Auto-generated constructor stub
	}
	private int id;
	private String nome;
	private String cognome;
	private String email;
	private String password;
	private String ruolo;
	private Date dataNascita;
	private Azienda azienda;
	
	public Utente(String nome, String cognome, String email, String password, String ruolo, Date dataNascita) {
		super();
		this.nome = nome;
		this.cognome = cognome;
		this.email = email;
		this.password = password;
		this.ruolo = ruolo;
		this.dataNascita = dataNascita;
		
	}
	public Utente(int id, String nome, String cognome, String email, String password, String ruolo, Date dataNascita,
			Azienda azienda) {
		super();
		this.id = id;
		this.nome = nome;
		this.cognome = cognome;
		this.email = email;
		this.password = password;
		this.ruolo = ruolo;
		this.dataNascita = dataNascita;
	    this.azienda =azienda;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCognome() {
		return cognome;
	}
	public void setCognome(String cognome) {
		this.cognome = cognome;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRuolo() {
		return ruolo;
	}
	public void setRuolo(String ruolo) {
		this.ruolo = ruolo;
	}
	public Date getDataNascita() {
		return dataNascita;
	}
	public void setDataNascita(Date dataNascita) {
		this.dataNascita = dataNascita;
	}
	
	public Azienda getAzienda() {
		return azienda;
	}
	public void setAzienda(Azienda azienda) {
		this.azienda = azienda;
	}
	@Override
	public String toString() {
		return "Utente [id=" + id + ", nome=" + nome + ", cognome=" + cognome + ", email=" + email + ", password="
				+ password + ", ruolo=" + ruolo + ", dataNascita=" + dataNascita + "]";
	}
	
	

}
