package com.agricolario.lv;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.agricolario.bean.ProdottoFitosanitario;
import com.agricolario.bean.ProdottoMagazzino;
import com.agricolario.bean.Utente;
import com.agricolario.dao.MagazzinoDAO;
import com.agricolario.dao.ProdottoFitosanitarioDAO;

/**
 * Servlet implementation class liveSearchMagazzino
 */
@WebServlet("/liveSearchMagazzino")
public class liveSearchMagazzino extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public liveSearchMagazzino() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String nomeProdotto= request.getParameter("nomeProdotto");
		HttpSession ssn = request.getSession();
		Utente u= (Utente)ssn.getAttribute("user");
		if(u!=null) {
		
		
		
		ArrayList<ProdottoMagazzino> lista = new MagazzinoDAO().liveSearchMagazzino(u.getAzienda().getId(), nomeProdotto);
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		
		//out.append("{\"inserimento\":\""+inserimento+"\"}");
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
