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
import com.agricolario.dao.NotificaDAO;
import com.agricolario.dao.TrattamentoDAO;

/**
 * Servlet implementation class EliminaTrattamento
 */
@WebServlet("/EliminaTrattamento")
public class EliminaTrattamento extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EliminaTrattamento() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			String id = request.getParameter("idtrattamento");
			int idregistro = Integer.parseInt(id);
			boolean elimina = new TrattamentoDAO().deleteTrattamentoById(idregistro);//E' id trattamento 
			System.out.println(id);
			HttpSession ssn = request.getSession();
			Utente u= (Utente)ssn.getAttribute("user");
			
			
			if(u.getRuolo().equals("delegato")) {
				
				String informazione ="Il delgato " + u.getNome()+" " + u.getCognome()+" ha eliminato un trattamento nel registro! vai nella sezione registro e approva le modifiche!";
				
				new NotificaDAO().insertNotifica(u.getId(), u.getAzienda().getIdUtente(), informazione);
				
			}
			PrintWriter out = response.getWriter();
			response.setContentType("text/html");
			response.setCharacterEncoding("UTF-8");
			out.append("{\"eliminazione\":\""+elimina+"\"}");
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
