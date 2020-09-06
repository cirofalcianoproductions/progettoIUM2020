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

/**
 * Servlet implementation class ottieniTrattamento
 */
@WebServlet("/ottieniTrattamento")
public class ottieniTrattamento extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ottieniTrattamento() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String id= request.getParameter("id");
		
		RegistroFitosanitario reg= new RegistroFitosanitarioDAO().getRegistro(Integer.parseInt(id));
		
		
		
		
		
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
        out.append("[");
        int count=0;
        ArrayList<Trattamento> lista = reg.getTrattamenti();
		for(Trattamento t :lista) {
		count++;
		out.append("{\"id\":\""+t.getIdTrattamento()+"\","
				+"\"coltura\":\""+t.getColtura()+"\"}");
		
		if(count<=lista.size()-1) {
			out.append(",");
		}
		
		
		}
        out.append("]");

        
        
		out.flush();	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
