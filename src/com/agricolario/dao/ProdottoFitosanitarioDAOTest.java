package com.agricolario.dao;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.agricolario.bean.ProdottoFitosanitario;
import com.agricolario.functionality.Validator;

class ProdottoFitosanitarioDAOTest {

	@BeforeEach
	void setUp() throws Exception {
	}

	@AfterEach
	void tearDown() throws Exception {
	}

	@Test
	final void test() {
			ProdottoFitosanitarioDAO dao = new ProdottoFitosanitarioDAO();
			 
			String superficie =dao.getDose("Priaxor", "orzo");
			System.out.println(superficie);
			System.out.println(new Validator().extractSuperficie(superficie));
	
	}

}
