package com.agricolario.servlet;

import java.io.IOException;
import java.io.PrintWriter;

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
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		 String email,password;
		 email= request.getParameter("email");
		 password= request.getParameter("password");
		 UtenteDAO userDao = new UtenteDAO();
		 System.out.println(password);
		Utente user=userDao.selectUser(email);
			if (user!=null && user.getEmail()!=null) {
			
			if(user.getPassword().equals(password)) {
				
				Azienda azienda = new Azienda();
				if(user.getRuolo().equals("titolare")) {

				azienda=new AziendaDAO().selectAzienda(user.getId());
				}else {
					
				azienda=new AziendaDAO().selectAziendaDelegato(user.getId());
					
					
				}
				user.setAzienda(azienda);
				HttpSession ssn= request.getSession();
				ssn.setAttribute("user",user);
				ssn.setAttribute("loggato",true);
				 Cookie mail = new Cookie("user",user.getEmail());
				//Cookie session= new Cookie("ssn",ssn.getId());
		         Cookie logged = new Cookie("loggato", "true");
		         response.addCookie(mail);
		         response.addCookie(logged);
				System.out.println(user.toString());
				getServletContext().getRequestDispatcher("/view/HomePage.jsp").forward(request, response);
			}else {
				

			
				
				getServletContext().getRequestDispatcher("/view/Errore.jsp").forward(request, response);

			
			
			}
			}else {
				
				getServletContext().getRequestDispatcher("/view/Errore.jsp").forward(request, response);

			}
			
	//	response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
