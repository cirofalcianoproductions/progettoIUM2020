package com.agricolario.lv;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.agricolario.bean.ProdottoFitosanitario;
import com.agricolario.bean.Utente;
import com.agricolario.dao.NotificaDAO;
import com.agricolario.dao.ProdottoFitosanitarioDAO;
import com.agricolario.dao.TrattamentoDAO;
import com.agricolario.functionality.ParseDate;

/**
 * Servlet implementation class modificaTrattamento
 */
@WebServlet("/modificaTrattamento")
public class modificaTrattamento extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public modificaTrattamento() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String idregistro = request.getParameter("idregistro");
		System.out.println(idregistro);
		String idtrattamento = request.getParameter("idtrattamento");
		System.out.println(idtrattamento);
		String nomeProdotto= request.getParameter("nomeProdotto");
		System.out.println(nomeProdotto);

		String coltura= request.getParameter("coltura");
		System.out.println(coltura);

		String dataInizio = request.getParameter("dataInizio");
		System.out.println(dataInizio);

		String quantita = request.getParameter("quantita");
		System.out.println(quantita);

		String superficie = request.getParameter("superficie");
		System.out.println(superficie);

		String avversita = request.getParameter("avversita");
		System.out.println(avversita);

		String note = request.getParameter("note");
		System.out.println(note);

		ProdottoFitosanitario p = new ProdottoFitosanitario();
		p= new ProdottoFitosanitarioDAO().getProdotto(nomeProdotto);
		int idProdotto = p.getIdProdottoFitosanitario();
		String unita = p.getQuantita().replaceAll("\\P{L}+", "");
		boolean modifca = new TrattamentoDAO().updateTrattamento(Integer.parseInt(idregistro), idProdotto, coltura, nomeProdotto,ParseDate.parseDateUtil(dataInizio), Double.parseDouble(superficie), Float.parseFloat(quantita), avversita, note, unita, Integer.parseInt(idtrattamento));
		HttpSession ssn = request.getSession();
		Utente u= (Utente)ssn.getAttribute("user");
		if(u.getRuolo().equals("delegato")) {
			String informazione ="Il delgato " + u.getNome()+" " + u.getCognome()+" ha modificato dei trattamenti nel registro! vai nella sezione registro e approva le modifiche!";
			new NotificaDAO().insertNotifica(u.getId(), u.getAzienda().getIdUtente(), informazione);
		}
		
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		out.append("{\"inserimento\":\""+modifca+"\"}");
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
