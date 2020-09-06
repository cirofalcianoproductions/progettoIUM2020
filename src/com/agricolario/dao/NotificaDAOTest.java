package com.agricolario.dao;

import static org.junit.jupiter.api.Assertions.*;

import java.util.ArrayList;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.agricolario.bean.Notifica;

class NotificaDAOTest {

	@BeforeEach
	void setUp() throws Exception {
	}

	@AfterEach
	void tearDown() throws Exception {
	}

	@Test
	final void test() {

	  ArrayList<Notifica> lista = new NotificaDAO().getAllNotifiche(2);
	  System.out.println(lista.toString());
	  System.out.println(lista.size());

	
	}

}
