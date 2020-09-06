package com.agricolario.show;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.agricolario.bean.RegistroFitosanitario;
import com.agricolario.bean.Trattamento;
import com.agricolario.bean.Utente;
import com.agricolario.dao.NotificaDAO;
import com.agricolario.dao.RegistroFitosanitarioDAO;

/**
 * Servlet implementation class showScadenze
 */
@WebServlet("/showScadenze")
public class showScadenze extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public showScadenze() {
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
		
		
		RegistroFitosanitarioDAO dao= new RegistroFitosanitarioDAO();
		System.out.println(u.toString());
		ArrayList<RegistroFitosanitario> lista = new ArrayList<RegistroFitosanitario>();
		if(u.getRuolo().equals("titolare")) {
			 lista = dao.getAllRegistro(u.getId());
		}
		if(!lista.isEmpty()) {
			 Date oggi= new Date(System.currentTimeMillis());

			for(Trattamento  reg : lista.get(0).getTrattamenti()) {
				int giorni= reg.getDatInzio().getDate()-oggi.getDate();
				if(giorni<=3) {
				
				String informazione ="Il seguente trattamento "+reg.getNomeProdotto()+" eseguito in data "+reg.getDatInzio()+" sta per scadere tra " + giorni+" giorni!";
				new NotificaDAO().insertNotifica(0,u.getId(), informazione);
				
				}
			}

			
			
		}
		
		
		
		
		
		
		
		
		
		if(u!=null) {
			
			

			System.out.println(u.toString());
			
			if(u.getRuolo().equals("titolare")) {
				 lista = dao.getAllRegistro(u.getId());
				}else {
					System.out.println();
				 lista= dao.getAllRegistroDelegato(u.getId());
					System.out.println(lista.toString());
					
				}
				request.setAttribute("listaRegistro", lista);
		getServletContext().getRequestDispatcher("/view/scad.jsp").forward(request, response);	
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
