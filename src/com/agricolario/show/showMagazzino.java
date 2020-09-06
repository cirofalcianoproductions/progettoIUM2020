package com.agricolario.show;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.agricolario.bean.ProdottoFitosanitario;
import com.agricolario.bean.ProdottoMagazzino;
import com.agricolario.bean.RegistroFitosanitario;
import com.agricolario.bean.Utente;
import com.agricolario.dao.MagazzinoDAO;
import com.agricolario.dao.ProdottoFitosanitarioDAO;
import com.agricolario.dao.RegistroFitosanitarioDAO;

/**
 * Servlet implementation class showProdottiFitosanitari
 */
@WebServlet("/showMagazzino")
public class showMagazzino extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public showMagazzino() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stubppend(request.getContextPath());
		
		HttpSession ssn = request.getSession();
		Utente u= (Utente)ssn.getAttribute("user");
		if(u!=null) {
			MagazzinoDAO dao= new MagazzinoDAO();
			System.out.println(u.toString());
			ArrayList<ProdottoMagazzino> lista = new ArrayList<ProdottoMagazzino>();
			lista =  dao.getProdottiMagazzino(u.getAzienda().getId());
		    request.setAttribute("lista", lista);
		    ArrayList<ProdottoFitosanitario> pf = new ProdottoFitosanitarioDAO().getAllProdottiFitosanitario();
			request.setAttribute("pf", pf);
		getServletContext().getRequestDispatcher("/view/mag.jsp").forward(request, response);	
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
