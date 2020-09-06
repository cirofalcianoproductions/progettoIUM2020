package com.agricolario.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.agricolario.bean.Azienda;
import com.agricolario.bean.Utente;
import com.agricolario.dao.AziendaDAO;
import com.agricolario.dao.UtenteDAO;
import com.agricolario.functionality.ParseDate;
import com.agricolario.functionality.Validator;

/**
 * Servlet implementation class access
 */
@WebServlet("/access")
public class access extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public access() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String access= request.getParameter("access");
		String email,password,nome,cognome,dataNascita,ruolo,nomeAzienda,indirizzo,città,cap,dataFondazione;
		UtenteDAO userDao = new UtenteDAO();
		Utente user;
		if(access!=null) {
		switch (access) {
		case "login":
			 email= request.getParameter("email");
			 password= request.getParameter("password");
			/*Validator validator =new Validator();
			validator.validatorEmail(email);
			validator.validatorPassword(password);
			*/
			userDao.selectUser(email);
			//Creare la sessione e verifica di validator
			request.getRequestDispatcher("/HomePage.jsp").forward(request, response);

			break;
		
		 case "register":
			
			  ruolo= request.getParameter("ruolo");
			  nome	=	request.getParameter("nome");
			  cognome	=	request.getParameter("cognome");
			  dataNascita	=	request.getParameter("dataNascita");
			  System.out.println(dataNascita);
			  email	=	request.getParameter("email");
			  password	=	request.getParameter("password");
			  boolean insertAzienda =  false;
			  boolean insertuser  = false;
		 if(ruolo=="titolare"){
			  nomeAzienda = request.getParameter("azienda");
			  cap	=	request.getParameter("cap");
			  città	=request.getParameter("città");
			  indirizzo	 =	request.getParameter("indirizzo");
			  dataFondazione = request.getParameter("dataFondazione");
			  user = new Utente(nome, cognome, email, password, ruolo, ParseDate.parseDateUtil(dataNascita));
			  insertuser = userDao.insert(user);
			  user.setId(userDao.selectUser(email).getId());  
			  
			  
			  Azienda azienda= new Azienda(nomeAzienda, indirizzo, città, cap, ParseDate.parseDateUtil(dataFondazione),user.getId());

			  insertAzienda=new AziendaDAO().insert(azienda);  

		 }else if(ruolo.equals("delegato")) {
			  Azienda azienda = new Azienda();
			  user = new Utente(nome, cognome, email, password, ruolo, ParseDate.parseDateUtil(dataNascita));
			  userDao.insert(user);
			  System.out.println("ok inserito");
		 }	else {
			 
			 System.out.println("Errore");		 }
			
		
		break;
		}
		
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
