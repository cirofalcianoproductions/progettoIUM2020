package com.agricolario.lv;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

class aggiungiTrattamentoTest {
	
    @Mock
 	ServletContext context= mock(ServletContext.class);

 	@Mock
 	RequestDispatcher dispatcher;

 	@Mock
    HttpServletRequest request;

    @Mock
    HttpServletResponse response;

    @Mock
    HttpSession session=mock(HttpSession.class);

@BeforeEach
void setUp() throws Exception {
	  MockitoAnnotations.initMocks(this);
}


	@Test
	final void test() throws ServletException, IOException {
		
		when(request.getParameter("idregistro")).thenReturn("4");
		when(request.getParameter("nomeProdotto")).thenReturn("Centurion 240 Neo");
		when(request.getParameter("coltura")).thenReturn("pomodoro");
		when(request.getParameter("dataInizio")).thenReturn("2020-06-12");
		when(request.getParameter("quantita")).thenReturn("0.5");
		when(request.getParameter("superficie")).thenReturn("0.8");
		when(request.getParameter("avversita")).thenReturn("giavone");
		when(request.getParameter("note")).thenReturn("Attento pericoloso al bagnato");

		
		new  aggiungiTrattamento().doGet(request, response);
		
	}

}
