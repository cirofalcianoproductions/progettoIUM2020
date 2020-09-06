package com.agricolario.show;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class showFunzionalita
 */
@WebServlet("/showFunzionalita")
public class showFunzionalita extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public showFunzionalita() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			String f= request.getParameter("funzionalita");
			
			if(f.equals("assistenza")) {
				getServletContext().getRequestDispatcher("/view/assistenza.jsp").forward(request, response);

				
			}else if(f.equals("comefunziona")) {
				getServletContext().getRequestDispatcher("/view/comefunziona.jsp").forward(request, response);

				
			}else if(f.equals("vantaggi")) {
				getServletContext().getRequestDispatcher("/view/vantaggi.jsp").forward(request, response);

			}else if(f.equals("chisiamo")) {
				getServletContext().getRequestDispatcher("/view/chisiamo.jsp").forward(request, response);

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
