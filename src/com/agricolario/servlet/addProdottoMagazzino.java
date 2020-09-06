package com.agricolario.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.agricolario.bean.ProdottoFitosanitario;
import com.agricolario.bean.Utente;
import com.agricolario.dao.MagazzinoDAO;
import com.agricolario.dao.ProdottoFitosanitarioDAO;

/**
 * Servlet implementation class addProdottoMagazzino
 */
@WebServlet("/addProdottoMagazzino")
public class addProdottoMagazzino extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addProdottoMagazzino() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
 System.out.println("sono chimata");
		String nomeProdotto= request.getParameter("nomeProdotto");
		String quantita= request.getParameter("quantita");
		HttpSession ssn = request.getSession();
		Utente u= (Utente)ssn.getAttribute("user");
		if(u!=null) {
		
		
		ProdottoFitosanitario p = new ProdottoFitosanitarioDAO().getProdotto(nomeProdotto);
		
		boolean presente= new MagazzinoDAO().isPresent(p.getIdProdottoFitosanitario(), u.getAzienda().getId());
		boolean inserimento=false;
		if(presente) {
			System.out.println(presente);
			 inserimento = new MagazzinoDAO().updateProdottoMagazzino(p.getIdProdottoFitosanitario(), u.getAzienda().getId(),Double.parseDouble(quantita),true);
					
		}else {
		
		
	    inserimento = new MagazzinoDAO().insertProdottoMagazzino(p.getIdProdottoFitosanitario(), u.getAzienda().getId(),Double.parseDouble(quantita));
		}
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		out.append("{\"inserimento\":\""+inserimento+"\"}");
		out.flush();
		}else {
			
			
			PrintWriter out = response.getWriter();
			response.setContentType("text/html");
			response.setCharacterEncoding("UTF-8");
			out.append("{\"inserimento\":\""+false+"\"}");
			out.flush();
			
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
