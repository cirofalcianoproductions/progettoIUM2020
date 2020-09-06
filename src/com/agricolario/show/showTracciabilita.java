package com.agricolario.show;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.agricolario.bean.RegistroFitosanitario;
import com.agricolario.bean.Utente;
import com.agricolario.dao.RegistroFitosanitarioDAO;

/**
 * Servlet implementation class showTracciabilità
 */
@WebServlet("/showTracciabilita")
public class showTracciabilita extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public showTracciabilita() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		
		HttpSession ssn = request.getSession();
		Utente u= (Utente)ssn.getAttribute("user");
		if(u!=null) {
		
		RegistroFitosanitarioDAO dao= new RegistroFitosanitarioDAO();
		//RegistroFitosanitario reg = dao.getRegistro(1);
		System.out.println(u.toString());
		ArrayList<RegistroFitosanitario> lista = new ArrayList<RegistroFitosanitario>();
		if(u.getRuolo().equals("titolare")) {
		 lista = dao.getAllRegistro(u.getId());
		}else {
			System.out.println();
		 lista= dao.getAllRegistroDelegato(u.getId());
			System.out.println(lista.toString());
			
		}
		
		
		for (RegistroFitosanitario registroFitosanitario : lista) {
			
			System.out.println(registroFitosanitario.toString());
			if(registroFitosanitario.getTrattamenti().isEmpty()) {
				
				System.out.println("Una lista vuota");
				
			}
		}
		
		
		
		
		
		
		
		
		
		
		
		if(lista==null || lista.isEmpty()) {
			System.out.println("Una lista vuota");
			System.out.println("Una lista vuota");

			request.setAttribute("listaRegistro", new ArrayList<RegistroFitosanitario>());
			
			
		}else {
		request.setAttribute("listaRegistro", lista);
		}
		getServletContext().getRequestDispatcher("/view/tracciabilità.jsp").forward(request, response);	
		}else {
			
			getServletContext().getRequestDispatcher("/view/HomePage.jsp").forward(request, response);	
				
			
			
		}
		
		}
		
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
