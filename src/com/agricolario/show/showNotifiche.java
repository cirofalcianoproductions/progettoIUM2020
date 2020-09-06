package com.agricolario.show;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.agricolario.bean.Notifica;
import com.agricolario.bean.Utente;
import com.agricolario.dao.NotificaDAO;

/**
 * Servlet implementation class showNotifiche
 */
@WebServlet("/showNotifiche")
public class showNotifiche extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public showNotifiche() {
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
		ArrayList<Notifica> lista = new NotificaDAO().getAllNotifiche(u.getId());
		new NotificaDAO().checkNotifica(u.getId());
		request.setAttribute("lista", lista);
		getServletContext().getRequestDispatcher("/view/notifica.jsp").forward(request, response);		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
