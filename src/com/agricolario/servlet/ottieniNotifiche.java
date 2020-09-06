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

import com.agricolario.bean.Notifica;
import com.agricolario.bean.RegistroFitosanitario;
import com.agricolario.bean.Trattamento;
import com.agricolario.bean.Utente;
import com.agricolario.dao.NotificaDAO;
import com.agricolario.dao.RegistroFitosanitarioDAO;

/**
 * Servlet implementation class ottieniNotifiche
 */
@WebServlet("/ottieniNotifiche")
public class ottieniNotifiche extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ottieniNotifiche() {
        super();
        // TODO Auto-generated constructor stub
        
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
				HttpSession ssn = request.getSession();
				Utente u= (Utente)ssn.getAttribute("user");
				
				
				
			
				
				ArrayList<Notifica> notifica= new NotificaDAO().getAllNotificheNonLette(u.getId());
	
				
				
				PrintWriter out = response.getWriter();
				response.setContentType("text/html");
				response.setCharacterEncoding("UTF-8");
		        out.append("[");
		        int count=0;
				for(Notifica n : notifica) {
					count++;
					out.append("{\"data\":\" "+n.getDataNotifica()+"\",\"informazioni\":\"" +n.getInformazioni()+"\"}");
					if(count<=notifica.size()-1) {
						out.append(",");
					}
					
					}
			        out.append("]");
				
				
				
				
				
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
