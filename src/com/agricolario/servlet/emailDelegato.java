package com.agricolario.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.agricolario.bean.Utente;
import com.agricolario.dao.UtenteDAO;

/**
 * Servlet implementation class emailDelegato
 */
@WebServlet("/emailDelegato")
public class emailDelegato extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public emailDelegato() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		String email = request.getParameter("email");
		
		
		   ArrayList<Utente> lista = new UtenteDAO().getAllUtenteByStr(email);
			
			PrintWriter out = response.getWriter();
			response.setContentType("text/html");
			response.setCharacterEncoding("UTF-8");
	        out.append("[");
	        int count=0;
	    
			for(Utente u :lista) {
			count++;
			out.append("{\"name\":\""+u.getNome()+"\",\"cognome\":\""+u.getCognome()+"\",\"email\":\""+u.getEmail()+"\"}");
			if(count<=lista.size()-1) {
				out.append(",");
			}
			}
	        out.append("]");

	        
	        
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
