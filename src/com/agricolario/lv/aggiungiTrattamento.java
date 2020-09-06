package com.agricolario.lv;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.agricolario.bean.ProdottoFitosanitario;
import com.agricolario.bean.Utente;
import com.agricolario.dao.MagazzinoDAO;
import com.agricolario.dao.NotificaDAO;
import com.agricolario.dao.ProdottoFitosanitarioDAO;
import com.agricolario.dao.RegistroFitosanitarioDAO;
import com.agricolario.dao.TrattamentoDAO;
import com.agricolario.functionality.ParseDate;

/**
 * Servlet implementation class aggiungiTrattamento
 */
@WebServlet("/aggiungiTrattamento")
public class aggiungiTrattamento extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public aggiungiTrattamento() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String idregistro = request.getParameter("idregistro");
		String nomeProdotto= request.getParameter("nomeProdotto");
		String coltura= request.getParameter("coltura");
		String dataInizio = request.getParameter("dataInizio");
		System.out.println(dataInizio);

		String quantita = request.getParameter("quantita");
		String superficie = request.getParameter("superficie");
		String avversita = request.getParameter("avversita");
		String note = request.getParameter("note");
		ProdottoFitosanitario p = new ProdottoFitosanitario();
		p= new ProdottoFitosanitarioDAO().getProdotto(nomeProdotto);
		int idProdotto = p.getIdProdottoFitosanitario();
		String unita = p.getQuantita().replaceAll("\\P{L}+", "");
		HttpSession ssn = request.getSession();
		Utente u= (Utente)ssn.getAttribute("user");
		MagazzinoDAO magazzinoDao= new MagazzinoDAO();
		
		
		if(magazzinoDao.isPresent(p.getIdProdottoFitosanitario(), u.getAzienda().getId())) {
			
			
			magazzinoDao.updateProdottoMagazzino(p.getIdProdottoFitosanitario(), u.getAzienda().getId(), Float.parseFloat(quantita), false);
			
		}
		
		
		boolean inserimento =new TrattamentoDAO().addTrattamento(Integer.parseInt(idregistro), idProdotto, coltura, nomeProdotto,ParseDate.parseDateUtil(dataInizio), Double.parseDouble(superficie), Float.parseFloat(quantita), avversita, note, unita);
		
		
		if(u.getRuolo().equals("delegato")) {
			
			String informazione ="Il delgato " + u.getNome()+" " + u.getCognome()+" ha inserito dei trattamenti nel registro! vai nella sezione registro e approva le modifiche!";
			
			new NotificaDAO().insertNotifica(u.getId(), u.getAzienda().getIdUtente(), informazione);
			
		}
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		out.append("{\"inserimento\":\""+inserimento+"\"}");
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
