package com.agricolario.dao;

import static org.junit.jupiter.api.Assertions.*;

import java.util.Date;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class RegistroDAOTest {

	@BeforeEach
	void setUp() throws Exception {
	}

	@AfterEach
	void tearDown() throws Exception {
	}

	@Test
	final void test() {

	Date dt = new Date(System.currentTimeMillis());
	System.out.println(dt);
	boolean valore=new RegistroFitosanitarioDAO().insert(dt,1);
	System.out.println(valore);
	
	}

}
