package com.agricolario.lv;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.agricolario.dao.ProdottoFitosanitarioDAO;

/**
 * Servlet implementation class getColtura
 */
@WebServlet("/getColtura")
public class getColtura extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public getColtura() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	//	String str= request.getParameter("nome");
	//	System.out.println(str);
//		ArrayList<String> lista = new ProdottoFitosanitarioDAO().getColtura(str);
		ArrayList<String> lista = new ProdottoFitosanitarioDAO().getColtura();
		
		System.out.println(lista.toString());
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
        out.append("[");
        int count=0;
        
		for(String s :lista) {
		count++;
		out.append("{\"coltura\":\""+s+"\"}");
		
		if(count<=lista.size()-1) {
			out.append(",");
		}
		
		
		}
        out.append("]");

        
        
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
