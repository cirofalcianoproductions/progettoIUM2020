package com.agricolario.servlet;

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

class loginTest {

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

	@AfterEach
	void tearDown() throws Exception {
	}


	@Test
	final void testDoGetHttpServletRequestHttpServletResponse() throws ServletException, IOException {
		when(request.getParameter("email")).thenReturn("pannonegiu@gmail.com");
		when(request.getParameter("password")).thenReturn("motGP");	
		new login().doGet(request, response);
	
	
	
	
	}

}
