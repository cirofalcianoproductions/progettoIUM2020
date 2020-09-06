package com.agricolario.dao;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.agricolario.bean.Azienda;
import com.agricolario.functionality.ParseDate;

class AziendaDAOTest {

	@BeforeEach
	void setUp() throws Exception {
	}

	@AfterEach
	void tearDown() throws Exception {
	}

	@Test
	final void testInsert() {
		Azienda azienda = new Azienda();
	
		azienda = new AziendaDAO().selectAziendaDelegato(6);
		System.out.println(azienda);
	}

}
