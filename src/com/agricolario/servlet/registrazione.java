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
import com.agricolario.functionality.ParseDate;

/**
 * Servlet implementation class registrazione
 */
@WebServlet("/registrazione")
public class registrazione extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registrazione() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		  String email,password,nome,cognome,dataNascita,ruolo,nomeAzienda,indirizzo,città,cap,dataFondazione;
		  HttpSession ssn= request.getSession();
		  ruolo= request.getParameter("ruolo");
		  nome	=	request.getParameter("nome");
		  cognome	=	request.getParameter("cognome");
		  dataNascita	=	request.getParameter("dataNascita");
		  System.out.println(dataNascita);
		  email	=	request.getParameter("email");
		  password	=	request.getParameter("password");
		  boolean insertAzienda =  false;
		  boolean insertuser  = false;
		  UtenteDAO userDao = new UtenteDAO();
		  Utente user= new Utente();
		  PrintWriter out = response.getWriter();
		  response.setContentType("text/html");
		  response.setCharacterEncoding("UTF-8");
	 if(ruolo.equals("titolare")){
		  nomeAzienda = request.getParameter("azienda");
		  cap	=	request.getParameter("cap");
		  città	=request.getParameter("città");
		  indirizzo	 =	request.getParameter("indirizzo");
		  dataFondazione = request.getParameter("dataFondazione");
		  user = new Utente(nome, cognome, email, password, ruolo, ParseDate.parseDateUtil(dataNascita));
		  insertuser = userDao.insert(user);
		  user.setId(userDao.selectUser(email).getId());
		  System.out.println(user.getId());
		  Azienda azienda= new Azienda(nomeAzienda, indirizzo, città, cap, ParseDate.parseDateUtil(dataFondazione),user.getId());
		  insertAzienda=new AziendaDAO().insert(azienda); 
		  azienda.setId(new AziendaDAO().selectAzienda(user.getId()).getId());
          user.setAzienda(azienda);
	 }else if(ruolo.equals("delegato")) {
		  Azienda azienda = new Azienda();
		  user = new Utente(nome, cognome, email, password, ruolo, ParseDate.parseDateUtil(dataNascita));
		  insertuser = userDao.insert(user);
		  user.setId(userDao.selectUser(email).getId());  

	 }	else {
		 
		 System.out.println("Errore");		 }
	 
	 	System.out.println(user.toString());
		 Cookie mail = new Cookie("user",user.getEmail());
	         Cookie logged = new Cookie("loggato", "true");
	         response.addCookie(mail);
	         response.addCookie(logged);
		ssn.setAttribute("user",user);
		ssn.setAttribute("loggato",true);

		out.append("{\"reg\":\""+insertuser+"\"}");
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
