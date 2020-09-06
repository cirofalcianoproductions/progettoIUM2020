package com.agricolario.dao;

import static org.junit.jupiter.api.Assertions.*;

import java.util.ArrayList;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.agricolario.bean.ProdottoMagazzino;

class MagazzinoDAOTest {

	@BeforeEach
	void setUp() throws Exception {
	}

	@AfterEach
	void tearDown() throws Exception {
	}

	@Test
	final void test() {
   
	MagazzinoDAO dao = new MagazzinoDAO();
	
	ArrayList<ProdottoMagazzino> listapm=dao.getProdottiMagazzino(1);
	 System.out.println(listapm.toString());
	
	
	
	
	
	}

}
