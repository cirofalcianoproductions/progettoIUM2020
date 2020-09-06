package com.agricolario.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.agricolario.bean.Utente;
import com.agricolario.dao.RegistroFitosanitarioDAO;

/**
 * Servlet implementation class creaRegistro
 */
@WebServlet("/creaRegistro")
public class creaRegistro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public creaRegistro() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    HttpSession ssn= request.getSession();
	    Utente u= (Utente)ssn.getAttribute("user");
		boolean creazione = new RegistroFitosanitarioDAO().insert(u.getId());
		  PrintWriter out = response.getWriter();
		  response.setContentType("text/html");
		 response.setCharacterEncoding("UTF-8");
		 out.append("{\"creazione\":\""+creazione+"\"}");
		 out.flush();
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
