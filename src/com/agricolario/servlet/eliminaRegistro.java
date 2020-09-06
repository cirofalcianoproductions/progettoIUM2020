package com.agricolario.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
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
import com.agricolario.dao.TrattamentoDAO;

/**
 * Servlet implementation class eliminaRegistro
 */
@WebServlet("/eliminaRegistro")
public class eliminaRegistro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public eliminaRegistro() {
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
		 lista= dao.getAllRegistroDelegato(u.getId());
			
		}
		boolean elimina = false;
		Date oggi= new Date(System.currentTimeMillis());
		for(RegistroFitosanitario registro : lista) {
			if((oggi.getYear()  - registro.getDataCreazione().getYear()) == 3     ) {
				
		         System.out.println("cancella registro " + registro.getDataCreazione());
		     	new TrattamentoDAO().deleteTrattamentoByIdRegistro(registro.getIdRegistroFitosanitario());
		       elimina =   dao.deleteRegistroId(registro.getIdRegistroFitosanitario());
			}
			
			
		}
		
		
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		out.append("{\"eliminazione\":\""+elimina+"\"}");
		out.flush();
		
		
		
		
		
		}else {
			
				
			PrintWriter out = response.getWriter();
			response.setContentType("text/html");
			response.setCharacterEncoding("UTF-8");
			out.append("{\"eliminazione\":\""+false+"\"}");
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
