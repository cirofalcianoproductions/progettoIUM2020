package com.agricolario.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.agricolario.bean.RegistroFitosanitario;
import com.agricolario.bean.Trattamento;
import com.agricolario.dao.RegistroFitosanitarioDAO;
import com.agricolario.dao.TrattamentoDAO;

/**
 * Servlet implementation class getTrattamento
 */
@WebServlet("/getTrattamento")
public class getTrattamento extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public getTrattamento() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
String id= request.getParameter("id");
		
		Trattamento t= new TrattamentoDAO().selectTrattamentoById(Integer.parseInt(id));
		
		
		
		
		
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
        out.append("{");
       
		out.append("\"nome\":\""+t.getNomeProdotto()+"\","
				+"\"avversita\":\""+t.getAvversita()+"\","
				+"\"data\":\""+t.getDatInzio().toString()+"\","
				+"\"note\":\""+t.getNote()+"\","
				+"\"quantita\":\""+t.getQuantita()+"\","
				+"\"coltura\":\""+t.getColtura()+"\","
				+"\"superficie\":\""+t.getSuperficie()+"\"");
		
	
        out.append("}");

        
        
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
