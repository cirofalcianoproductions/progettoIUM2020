package com.agricolario.show;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.agricolario.bean.Azienda;
import com.agricolario.bean.Utente;
import com.agricolario.dao.AziendaDAO;
import com.agricolario.dao.UtenteDAO;


/**
 * Servlet implementation class showHome
 */
@WebServlet("/showHome")
public class showHome extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public showHome() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session= request.getSession();
	//	ssn.setAttribute("loggato",true);
		Cookie[]cookie = request.getCookies();

		if (cookie != null && cookie.length>1) {
			String mail = "", logged = "";
			for (int i = 0; i < cookie.length; i++) {
				if (cookie[i].getName().equals("user")) {
					mail = cookie[i].getValue();

				}
				if (cookie[i].getName().equals("loggato")) {
				logged = cookie[i].getValue();
				}

			}
			 UtenteDAO userDao = new UtenteDAO();

			Utente user=userDao.selectUser(mail);
			Azienda azienda = new Azienda();
			System.out.println(" " + mail + " " + logged + " ");

			if(user.getRuolo().equals("titolare")) {

			azienda=new AziendaDAO().selectAzienda(user.getId());
			}else {
				
			azienda=new AziendaDAO().selectAziendaDelegato(user.getId());
				
				
			}
			user.setAzienda(azienda);

			session.setAttribute("user", user);
			if (logged.equals("true")) {
				session.setAttribute("loggato", true);
				System.out.println("setta true");
			} else {
				session.setAttribute("loggato", false);
				System.out.println("setta false");
			}
			
		}
		if (session.getAttribute("loggato")  ==  null) {
			session.setAttribute("loggato", false);
		}
		getServletContext().getRequestDispatcher("/view/HomePage.jsp").forward(request, response);
		
		System.out.println("Io sono una servlet normale creo solo disagio");
	}
 
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
